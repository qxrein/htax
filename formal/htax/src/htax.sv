// HTAX ingress port with credit-based flow control and single-entry egress buffer.
// Suitable for cocotb simulation, SymbiYosys formal, and LibreLane synthesis.

module htax (
    input  logic        clk,
    input  logic        rst_n,
    input  logic [31:0] tx_data,
    input  logic        tx_valid,
    input  logic [2:0]  tx_vc,
    output logic        tx_ready,
    output logic [31:0] rx_data,
    output logic        rx_valid
);
    localparam int MAX_CREDITS = 8;
    localparam int CREDIT_W    = $clog2(MAX_CREDITS + 1);

    typedef enum logic {ST_IDLE, ST_HOLD} state_t;

    state_t              state;
    logic [31:0]         rx_data_q;
    logic                rx_valid_q;
    logic [CREDIT_W-1:0] credit_count;

    wire accept = tx_valid && tx_ready;

    assign tx_ready = rst_n && (state == ST_IDLE) && (credit_count != '0);
    assign rx_data  = rx_data_q;
    assign rx_valid = rx_valid_q;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state        <= ST_IDLE;
            rx_data_q    <= '0;
            rx_valid_q   <= 1'b0;
            credit_count <= CREDIT_W'(MAX_CREDITS);
        end else begin
            case (state)
                ST_IDLE: begin
                    if (accept) begin
                        rx_data_q    <= tx_data;
                        rx_valid_q   <= 1'b1;
                        credit_count <= credit_count - CREDIT_W'(1);
                        state        <= ST_HOLD;
                    end
                end

                ST_HOLD: begin
                    rx_valid_q <= 1'b0;
                    if (credit_count < CREDIT_W'(MAX_CREDITS))
                        credit_count <= credit_count + CREDIT_W'(1);
                    state <= ST_IDLE;
                end

                default: state <= ST_IDLE;
            endcase
        end
    end

    logic unused_vc;
    assign unused_vc = |tx_vc;

    // -------------------------------------------------------------------------
    // Formal checks (Yosys / SymbiYosys — enabled by read -formal)
    // -------------------------------------------------------------------------
`ifdef FORMAL
    reg f_past_valid;
    reg f_reset_seen;

    initial begin
        assume (!rst_n);
    end

    always @(posedge clk) begin
        if (!rst_n) begin
            f_past_valid <= 1'b0;
            f_reset_seen <= 1'b0;
        end else begin
            f_past_valid <= 1'b1;
            f_reset_seen <= 1'b1;
        end
    end

    always @(posedge clk) begin
        if (!rst_n) begin
            assume (!tx_valid);
        end else if (f_past_valid && f_reset_seen) begin
            assert (credit_count <= MAX_CREDITS);

            // AXI-style source stability: constrain the environment, not the DUT.
            if ($past(tx_valid && !tx_ready))
                assume (tx_data == $past(tx_data));
        end
    end
`endif
endmodule
