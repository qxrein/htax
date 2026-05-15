module htax (clk,
    rst_n,
    rx_valid,
    tx_ready,
    tx_valid,
    rx_data,
    tx_data,
    tx_vc);
 input clk;
 input rst_n;
 output rx_valid;
 output tx_ready;
 input tx_valid;
 output [31:0] rx_data;
 input [31:0] tx_data;
 input [2:0] tx_vc;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire \credit_count[0] ;
 wire \credit_count[1] ;
 wire \credit_count[2] ;
 wire \credit_count[3] ;
 wire net1;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire state;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net68;
 wire net34;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net80;

 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_67 ();
 sky130_fd_sc_hd__inv_2 _054_ (.A(\credit_count[0] ),
    .Y(_038_));
 sky130_fd_sc_hd__inv_2 _055_ (.A(state),
    .Y(_039_));
 sky130_fd_sc_hd__inv_2 _056_ (.A(\credit_count[3] ),
    .Y(_040_));
 sky130_fd_sc_hd__or4_2 _057_ (.A(\credit_count[0] ),
    .B(\credit_count[1] ),
    .C(\credit_count[2] ),
    .D(\credit_count[3] ),
    .X(_041_));
 sky130_fd_sc_hd__and3_2 _058_ (.A(_039_),
    .B(net78),
    .C(_041_),
    .X(net68));
 sky130_fd_sc_hd__and2_2 _059_ (.A(net34),
    .B(net68),
    .X(_000_));
 sky130_fd_sc_hd__mux2_1 _060_ (.A0(net35),
    .A1(net2),
    .S(net69),
    .X(_001_));
 sky130_fd_sc_hd__mux2_1 _061_ (.A0(net46),
    .A1(net13),
    .S(net70),
    .X(_002_));
 sky130_fd_sc_hd__mux2_1 _062_ (.A0(net57),
    .A1(net24),
    .S(net70),
    .X(_003_));
 sky130_fd_sc_hd__mux2_1 _063_ (.A0(net60),
    .A1(net27),
    .S(net69),
    .X(_004_));
 sky130_fd_sc_hd__mux2_1 _064_ (.A0(net61),
    .A1(net28),
    .S(net70),
    .X(_005_));
 sky130_fd_sc_hd__mux2_1 _065_ (.A0(net62),
    .A1(net29),
    .S(net70),
    .X(_006_));
 sky130_fd_sc_hd__mux2_1 _066_ (.A0(net63),
    .A1(net30),
    .S(net69),
    .X(_007_));
 sky130_fd_sc_hd__mux2_1 _067_ (.A0(net64),
    .A1(net31),
    .S(net71),
    .X(_008_));
 sky130_fd_sc_hd__mux2_1 _068_ (.A0(net65),
    .A1(net32),
    .S(net71),
    .X(_009_));
 sky130_fd_sc_hd__mux2_1 _069_ (.A0(net66),
    .A1(net33),
    .S(net71),
    .X(_010_));
 sky130_fd_sc_hd__mux2_1 _070_ (.A0(net36),
    .A1(net3),
    .S(net69),
    .X(_011_));
 sky130_fd_sc_hd__mux2_1 _071_ (.A0(net37),
    .A1(net4),
    .S(net71),
    .X(_012_));
 sky130_fd_sc_hd__mux2_1 _072_ (.A0(net38),
    .A1(net5),
    .S(net69),
    .X(_013_));
 sky130_fd_sc_hd__mux2_1 _073_ (.A0(net39),
    .A1(net6),
    .S(net71),
    .X(_014_));
 sky130_fd_sc_hd__mux2_1 _074_ (.A0(net40),
    .A1(net7),
    .S(net71),
    .X(_015_));
 sky130_fd_sc_hd__mux2_1 _075_ (.A0(net41),
    .A1(net8),
    .S(net71),
    .X(_016_));
 sky130_fd_sc_hd__mux2_1 _076_ (.A0(net42),
    .A1(net9),
    .S(net71),
    .X(_017_));
 sky130_fd_sc_hd__mux2_1 _077_ (.A0(net43),
    .A1(net10),
    .S(net69),
    .X(_018_));
 sky130_fd_sc_hd__mux2_1 _078_ (.A0(net44),
    .A1(net11),
    .S(net70),
    .X(_019_));
 sky130_fd_sc_hd__mux2_1 _079_ (.A0(net45),
    .A1(net12),
    .S(net70),
    .X(_020_));
 sky130_fd_sc_hd__mux2_1 _080_ (.A0(net47),
    .A1(net14),
    .S(net71),
    .X(_021_));
 sky130_fd_sc_hd__mux2_1 _081_ (.A0(net48),
    .A1(net15),
    .S(net70),
    .X(_022_));
 sky130_fd_sc_hd__mux2_1 _082_ (.A0(net49),
    .A1(net16),
    .S(net69),
    .X(_023_));
 sky130_fd_sc_hd__mux2_1 _083_ (.A0(net50),
    .A1(net17),
    .S(net69),
    .X(_024_));
 sky130_fd_sc_hd__mux2_1 _084_ (.A0(net51),
    .A1(net18),
    .S(net72),
    .X(_025_));
 sky130_fd_sc_hd__mux2_1 _085_ (.A0(net52),
    .A1(net19),
    .S(net69),
    .X(_026_));
 sky130_fd_sc_hd__mux2_1 _086_ (.A0(net53),
    .A1(net20),
    .S(net72),
    .X(_027_));
 sky130_fd_sc_hd__mux2_1 _087_ (.A0(net54),
    .A1(net21),
    .S(net72),
    .X(_028_));
 sky130_fd_sc_hd__mux2_1 _088_ (.A0(net55),
    .A1(net22),
    .S(net69),
    .X(_029_));
 sky130_fd_sc_hd__mux2_1 _089_ (.A0(net56),
    .A1(net23),
    .S(net72),
    .X(_030_));
 sky130_fd_sc_hd__mux2_1 _090_ (.A0(net58),
    .A1(net25),
    .S(net71),
    .X(_031_));
 sky130_fd_sc_hd__mux2_1 _091_ (.A0(net59),
    .A1(net26),
    .S(net70),
    .X(_032_));
 sky130_fd_sc_hd__a21o_2 _092_ (.A1(_039_),
    .A2(net67),
    .B1(net72),
    .X(_033_));
 sky130_fd_sc_hd__a21o_2 _093_ (.A1(state),
    .A2(_040_),
    .B1(net72),
    .X(_042_));
 sky130_fd_sc_hd__xnor2_2 _094_ (.A(_038_),
    .B(_042_),
    .Y(_034_));
 sky130_fd_sc_hd__nand2b_2 _095_ (.A_N(state),
    .B(\credit_count[1] ),
    .Y(_043_));
 sky130_fd_sc_hd__xor2_2 _096_ (.A(state),
    .B(\credit_count[1] ),
    .X(_044_));
 sky130_fd_sc_hd__xnor2_2 _097_ (.A(\credit_count[0] ),
    .B(_044_),
    .Y(_045_));
 sky130_fd_sc_hd__mux2_1 _098_ (.A0(\credit_count[1] ),
    .A1(_045_),
    .S(_042_),
    .X(_035_));
 sky130_fd_sc_hd__o21a_2 _099_ (.A1(_038_),
    .A2(_044_),
    .B1(_043_),
    .X(_046_));
 sky130_fd_sc_hd__and2_2 _100_ (.A(_039_),
    .B(\credit_count[2] ),
    .X(_047_));
 sky130_fd_sc_hd__nor2_2 _101_ (.A(_039_),
    .B(\credit_count[2] ),
    .Y(_048_));
 sky130_fd_sc_hd__nor2_2 _102_ (.A(_047_),
    .B(_048_),
    .Y(_049_));
 sky130_fd_sc_hd__xnor2_2 _103_ (.A(_046_),
    .B(_049_),
    .Y(_050_));
 sky130_fd_sc_hd__mux2_1 _104_ (.A0(\credit_count[2] ),
    .A1(_050_),
    .S(_042_),
    .X(_036_));
 sky130_fd_sc_hd__xnor2_2 _105_ (.A(state),
    .B(\credit_count[3] ),
    .Y(_051_));
 sky130_fd_sc_hd__o21ba_2 _106_ (.A1(_046_),
    .A2(_048_),
    .B1_N(_047_),
    .X(_052_));
 sky130_fd_sc_hd__xnor2_2 _107_ (.A(_051_),
    .B(_052_),
    .Y(_053_));
 sky130_fd_sc_hd__a2bb2o_2 _108_ (.A1_N(_040_),
    .A2_N(net72),
    .B1(_042_),
    .B2(_053_),
    .X(_037_));
 sky130_fd_sc_hd__dfrtp_2 _109_ (.CLK(clk),
    .D(_001_),
    .RESET_B(net74),
    .Q(net35));
 sky130_fd_sc_hd__dfrtp_2 _110_ (.CLK(clk),
    .D(_002_),
    .RESET_B(net75),
    .Q(net46));
 sky130_fd_sc_hd__dfrtp_2 _111_ (.CLK(clk),
    .D(_003_),
    .RESET_B(net76),
    .Q(net57));
 sky130_fd_sc_hd__dfrtp_2 _112_ (.CLK(clk),
    .D(_004_),
    .RESET_B(net74),
    .Q(net60));
 sky130_fd_sc_hd__dfrtp_2 _113_ (.CLK(clk),
    .D(_005_),
    .RESET_B(net76),
    .Q(net61));
 sky130_fd_sc_hd__dfrtp_2 _114_ (.CLK(clk),
    .D(_006_),
    .RESET_B(net76),
    .Q(net62));
 sky130_fd_sc_hd__dfrtp_2 _115_ (.CLK(clk),
    .D(_007_),
    .RESET_B(net74),
    .Q(net63));
 sky130_fd_sc_hd__dfrtp_2 _116_ (.CLK(clk),
    .D(_008_),
    .RESET_B(net77),
    .Q(net64));
 sky130_fd_sc_hd__dfrtp_2 _117_ (.CLK(clk),
    .D(_009_),
    .RESET_B(net77),
    .Q(net65));
 sky130_fd_sc_hd__dfrtp_2 _118_ (.CLK(clk),
    .D(_010_),
    .RESET_B(net78),
    .Q(net66));
 sky130_fd_sc_hd__dfrtp_2 _119_ (.CLK(clk),
    .D(_011_),
    .RESET_B(net74),
    .Q(net36));
 sky130_fd_sc_hd__dfrtp_2 _120_ (.CLK(clk),
    .D(_012_),
    .RESET_B(net77),
    .Q(net37));
 sky130_fd_sc_hd__dfrtp_2 _121_ (.CLK(clk),
    .D(_013_),
    .RESET_B(net74),
    .Q(net38));
 sky130_fd_sc_hd__dfrtp_2 _122_ (.CLK(clk),
    .D(_014_),
    .RESET_B(net76),
    .Q(net39));
 sky130_fd_sc_hd__dfrtp_2 _123_ (.CLK(clk),
    .D(_015_),
    .RESET_B(net79),
    .Q(net40));
 sky130_fd_sc_hd__dfrtp_2 _124_ (.CLK(clk),
    .D(_016_),
    .RESET_B(net79),
    .Q(net41));
 sky130_fd_sc_hd__dfrtp_2 _125_ (.CLK(clk),
    .D(_017_),
    .RESET_B(net79),
    .Q(net42));
 sky130_fd_sc_hd__dfrtp_2 _126_ (.CLK(clk),
    .D(_018_),
    .RESET_B(net74),
    .Q(net43));
 sky130_fd_sc_hd__dfrtp_2 _127_ (.CLK(clk),
    .D(_019_),
    .RESET_B(net76),
    .Q(net44));
 sky130_fd_sc_hd__dfrtp_2 _128_ (.CLK(clk),
    .D(_020_),
    .RESET_B(net76),
    .Q(net45));
 sky130_fd_sc_hd__dfrtp_2 _129_ (.CLK(clk),
    .D(_021_),
    .RESET_B(net77),
    .Q(net47));
 sky130_fd_sc_hd__dfrtp_2 _130_ (.CLK(clk),
    .D(_022_),
    .RESET_B(net76),
    .Q(net48));
 sky130_fd_sc_hd__dfrtp_2 _131_ (.CLK(clk),
    .D(_023_),
    .RESET_B(net74),
    .Q(net49));
 sky130_fd_sc_hd__dfrtp_2 _132_ (.CLK(clk),
    .D(_024_),
    .RESET_B(net74),
    .Q(net50));
 sky130_fd_sc_hd__dfrtp_2 _133_ (.CLK(clk),
    .D(_025_),
    .RESET_B(net75),
    .Q(net51));
 sky130_fd_sc_hd__dfrtp_2 _134_ (.CLK(clk),
    .D(_026_),
    .RESET_B(net74),
    .Q(net52));
 sky130_fd_sc_hd__dfrtp_2 _135_ (.CLK(clk),
    .D(_027_),
    .RESET_B(net76),
    .Q(net53));
 sky130_fd_sc_hd__dfrtp_2 _136_ (.CLK(clk),
    .D(_028_),
    .RESET_B(net79),
    .Q(net54));
 sky130_fd_sc_hd__dfrtp_2 _137_ (.CLK(clk),
    .D(_029_),
    .RESET_B(net73),
    .Q(net55));
 sky130_fd_sc_hd__dfrtp_2 _138_ (.CLK(clk),
    .D(_030_),
    .RESET_B(net80),
    .Q(net56));
 sky130_fd_sc_hd__dfrtp_2 _139_ (.CLK(clk),
    .D(_031_),
    .RESET_B(net77),
    .Q(net58));
 sky130_fd_sc_hd__dfrtp_2 _140_ (.CLK(clk),
    .D(_032_),
    .RESET_B(net80),
    .Q(net59));
 sky130_fd_sc_hd__dfrtp_2 _141_ (.CLK(clk),
    .D(_033_),
    .RESET_B(net79),
    .Q(net67));
 sky130_fd_sc_hd__dfrtp_2 _142_ (.CLK(clk),
    .D(_034_),
    .RESET_B(net78),
    .Q(\credit_count[0] ));
 sky130_fd_sc_hd__dfrtp_2 _143_ (.CLK(clk),
    .D(_035_),
    .RESET_B(net78),
    .Q(\credit_count[1] ));
 sky130_fd_sc_hd__dfrtp_2 _144_ (.CLK(clk),
    .D(_036_),
    .RESET_B(net79),
    .Q(\credit_count[2] ));
 sky130_fd_sc_hd__dfstp_2 _145_ (.CLK(clk),
    .D(_037_),
    .SET_B(net79),
    .Q(\credit_count[3] ));
 sky130_fd_sc_hd__dfrtp_2 _146_ (.CLK(clk),
    .D(net70),
    .RESET_B(net78),
    .Q(state));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout69 (.A(net70),
    .X(net69));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout70 (.A(net72),
    .X(net70));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout71 (.A(net72),
    .X(net71));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout72 (.A(_000_),
    .X(net72));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout73 (.A(net80),
    .X(net73));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout75 (.A(net80),
    .X(net75));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout77 (.A(net80),
    .X(net77));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout79 (.A(net80),
    .X(net79));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout80 (.A(net1),
    .X(net80));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input1 (.A(rst_n),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input10 (.A(tx_data[17]),
    .X(net10));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input11 (.A(tx_data[18]),
    .X(net11));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input12 (.A(tx_data[19]),
    .X(net12));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input13 (.A(tx_data[1]),
    .X(net13));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input14 (.A(tx_data[20]),
    .X(net14));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input15 (.A(tx_data[21]),
    .X(net15));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input16 (.A(tx_data[22]),
    .X(net16));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input17 (.A(tx_data[23]),
    .X(net17));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input18 (.A(tx_data[24]),
    .X(net18));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input19 (.A(tx_data[25]),
    .X(net19));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input2 (.A(tx_data[0]),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input20 (.A(tx_data[26]),
    .X(net20));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input21 (.A(tx_data[27]),
    .X(net21));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input22 (.A(tx_data[28]),
    .X(net22));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input23 (.A(tx_data[29]),
    .X(net23));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input24 (.A(tx_data[2]),
    .X(net24));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input25 (.A(tx_data[30]),
    .X(net25));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input26 (.A(tx_data[31]),
    .X(net26));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input27 (.A(tx_data[3]),
    .X(net27));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input28 (.A(tx_data[4]),
    .X(net28));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input29 (.A(tx_data[5]),
    .X(net29));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input3 (.A(tx_data[10]),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input30 (.A(tx_data[6]),
    .X(net30));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input31 (.A(tx_data[7]),
    .X(net31));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input32 (.A(tx_data[8]),
    .X(net32));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input33 (.A(tx_data[9]),
    .X(net33));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input34 (.A(tx_valid),
    .X(net34));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input4 (.A(tx_data[11]),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input5 (.A(tx_data[12]),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input6 (.A(tx_data[13]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input7 (.A(tx_data[14]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input8 (.A(tx_data[15]),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input9 (.A(tx_data[16]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_4 load_slew74 (.A(net73),
    .X(net74));
 sky130_fd_sc_hd__buf_4 load_slew76 (.A(net75),
    .X(net76));
 sky130_fd_sc_hd__clkbuf_2 load_slew78 (.A(net77),
    .X(net78));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output35 (.A(net35),
    .X(rx_data[0]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output36 (.A(net36),
    .X(rx_data[10]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output37 (.A(net37),
    .X(rx_data[11]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output38 (.A(net38),
    .X(rx_data[12]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output39 (.A(net39),
    .X(rx_data[13]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output40 (.A(net40),
    .X(rx_data[14]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output41 (.A(net41),
    .X(rx_data[15]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output42 (.A(net42),
    .X(rx_data[16]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output43 (.A(net43),
    .X(rx_data[17]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output44 (.A(net44),
    .X(rx_data[18]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output45 (.A(net45),
    .X(rx_data[19]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output46 (.A(net46),
    .X(rx_data[1]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output47 (.A(net47),
    .X(rx_data[20]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output48 (.A(net48),
    .X(rx_data[21]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output49 (.A(net49),
    .X(rx_data[22]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output50 (.A(net50),
    .X(rx_data[23]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output51 (.A(net51),
    .X(rx_data[24]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output52 (.A(net52),
    .X(rx_data[25]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output53 (.A(net53),
    .X(rx_data[26]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output54 (.A(net54),
    .X(rx_data[27]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output55 (.A(net55),
    .X(rx_data[28]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output56 (.A(net56),
    .X(rx_data[29]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output57 (.A(net57),
    .X(rx_data[2]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output58 (.A(net58),
    .X(rx_data[30]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output59 (.A(net59),
    .X(rx_data[31]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output60 (.A(net60),
    .X(rx_data[3]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output61 (.A(net61),
    .X(rx_data[4]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output62 (.A(net62),
    .X(rx_data[5]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output63 (.A(net63),
    .X(rx_data[6]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output64 (.A(net64),
    .X(rx_data[7]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output65 (.A(net65),
    .X(rx_data[8]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output66 (.A(net66),
    .X(rx_data[9]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output67 (.A(net67),
    .X(rx_valid));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output68 (.A(net68),
    .X(tx_ready));
endmodule
