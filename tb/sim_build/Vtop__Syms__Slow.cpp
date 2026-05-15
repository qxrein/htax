// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vtop__pch.h"

Vtop__Syms::Vtop__Syms(VerilatedContext* contextp, const char* namep, Vtop* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    // Setup top module instance
    , TOP{this, namep}
{
    // Check resources
    Verilated::stackCheck(252);
    // Setup sub module instances
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-9);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(true);
    // Setup scopes
    __Vscopep_TOP = new VerilatedScope{this, "TOP", "TOP", "<null>", 0, VerilatedScope::SCOPE_OTHER};
    __Vscopep_htax = new VerilatedScope{this, "htax", "htax", "htax", -9, VerilatedScope::SCOPE_MODULE};
    // Set up scope hierarchy
    __Vhier.add(0, __Vscopep_htax);
    // Setup export functions - final: 0
    // Setup export functions - final: 1
    // Setup public variables
    __Vscopep_TOP->varInsert("clk", &(TOP.clk), false, VLVT_UINT8, VLVD_IN|VLVF_PUB_RW, 0, 0);
    __Vscopep_TOP->varInsert("rst_n", &(TOP.rst_n), false, VLVT_UINT8, VLVD_IN|VLVF_PUB_RW, 0, 0);
    __Vscopep_TOP->varInsert("rx_data", &(TOP.rx_data), false, VLVT_UINT32, VLVD_OUT|VLVF_PUB_RW|VLVF_CONTINUOUSLY, 0, 1 ,31,0);
    __Vscopep_TOP->varInsert("rx_valid", &(TOP.rx_valid), false, VLVT_UINT8, VLVD_OUT|VLVF_PUB_RW|VLVF_CONTINUOUSLY, 0, 0);
    __Vscopep_TOP->varInsert("tx_data", &(TOP.tx_data), false, VLVT_UINT32, VLVD_IN|VLVF_PUB_RW, 0, 1 ,31,0);
    __Vscopep_TOP->varInsert("tx_ready", &(TOP.tx_ready), false, VLVT_UINT8, VLVD_OUT|VLVF_PUB_RW|VLVF_CONTINUOUSLY, 0, 0);
    __Vscopep_TOP->varInsert("tx_valid", &(TOP.tx_valid), false, VLVT_UINT8, VLVD_IN|VLVF_PUB_RW, 0, 0);
    __Vscopep_TOP->varInsert("tx_vc", &(TOP.tx_vc), false, VLVT_UINT8, VLVD_IN|VLVF_PUB_RW, 0, 1 ,2,0);
    __Vscopep_htax->varInsert("CREDIT_W", const_cast<void*>(static_cast<const void*>(&(TOP.htax__DOT__CREDIT_W))), true, VLVT_UINT32, VLVD_NODIR|VLVF_PUB_RW|VLVF_DPI_CLAY|VLVF_SIGNED, 0, 1 ,31,0);
    __Vscopep_htax->varInsert("MAX_CREDITS", const_cast<void*>(static_cast<const void*>(&(TOP.htax__DOT__MAX_CREDITS))), true, VLVT_UINT32, VLVD_NODIR|VLVF_PUB_RW|VLVF_DPI_CLAY|VLVF_SIGNED, 0, 1 ,31,0);
    __Vscopep_htax->varInsert("accept", &(TOP.htax__DOT__accept), false, VLVT_UINT8, VLVD_NODIR|VLVF_PUB_RW|VLVF_CONTINUOUSLY, 0, 0);
    __Vscopep_htax->varInsert("clk", &(TOP.htax__DOT__clk), false, VLVT_UINT8, VLVD_NODIR|VLVF_PUB_RW, 0, 0);
    __Vscopep_htax->varInsert("credit_count", &(TOP.htax__DOT__credit_count), false, VLVT_UINT8, VLVD_NODIR|VLVF_PUB_RW, 0, 1 ,3,0);
    __Vscopep_htax->varInsert("rst_n", &(TOP.htax__DOT__rst_n), false, VLVT_UINT8, VLVD_NODIR|VLVF_PUB_RW, 0, 0);
    __Vscopep_htax->varInsert("rx_data", &(TOP.htax__DOT__rx_data), false, VLVT_UINT32, VLVD_NODIR|VLVF_PUB_RW|VLVF_CONTINUOUSLY, 0, 1 ,31,0);
    __Vscopep_htax->varInsert("rx_data_q", &(TOP.htax__DOT__rx_data_q), false, VLVT_UINT32, VLVD_NODIR|VLVF_PUB_RW, 0, 1 ,31,0);
    __Vscopep_htax->varInsert("rx_valid", &(TOP.htax__DOT__rx_valid), false, VLVT_UINT8, VLVD_NODIR|VLVF_PUB_RW|VLVF_CONTINUOUSLY, 0, 0);
    __Vscopep_htax->varInsert("rx_valid_q", &(TOP.htax__DOT__rx_valid_q), false, VLVT_UINT8, VLVD_NODIR|VLVF_PUB_RW, 0, 0);
    __Vscopep_htax->varInsert("state", &(TOP.htax__DOT__state), false, VLVT_UINT8, VLVD_NODIR|VLVF_PUB_RW, 0, 0);
    __Vscopep_htax->varInsert("tx_data", &(TOP.htax__DOT__tx_data), false, VLVT_UINT32, VLVD_NODIR|VLVF_PUB_RW, 0, 1 ,31,0);
    __Vscopep_htax->varInsert("tx_ready", &(TOP.htax__DOT__tx_ready), false, VLVT_UINT8, VLVD_NODIR|VLVF_PUB_RW|VLVF_CONTINUOUSLY, 0, 0);
    __Vscopep_htax->varInsert("tx_valid", &(TOP.htax__DOT__tx_valid), false, VLVT_UINT8, VLVD_NODIR|VLVF_PUB_RW, 0, 0);
    __Vscopep_htax->varInsert("tx_vc", &(TOP.htax__DOT__tx_vc), false, VLVT_UINT8, VLVD_NODIR|VLVF_PUB_RW, 0, 1 ,2,0);
    __Vscopep_htax->varInsert("unused_vc", &(TOP.htax__DOT__unused_vc), false, VLVT_UINT8, VLVD_NODIR|VLVF_PUB_RW|VLVF_CONTINUOUSLY, 0, 0);
}

Vtop__Syms::~Vtop__Syms() {
    // Tear down scope hierarchy
    __Vhier.remove(0, __Vscopep_htax);
    // Clear keys from hierarchy map after values have been removed
    __Vhier.clear();
    // Tear down scopes
    VL_DO_CLEAR(delete __Vscopep_TOP, __Vscopep_TOP = nullptr);
    VL_DO_CLEAR(delete __Vscopep_htax, __Vscopep_htax = nullptr);
    // Tear down sub module instances
}
