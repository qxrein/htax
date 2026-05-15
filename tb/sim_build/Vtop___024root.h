// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtop.h for the primary calling header

#ifndef VERILATED_VTOP___024ROOT_H_
#define VERILATED_VTOP___024ROOT_H_  // guard

#include "verilated.h"


class Vtop__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtop___024root final {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(rst_n,0,0);
    VL_IN8(tx_valid,0,0);
    VL_IN8(tx_vc,2,0);
    VL_OUT8(tx_ready,0,0);
    VL_OUT8(rx_valid,0,0);
    CData/*0:0*/ htax__DOT__clk;
    CData/*0:0*/ htax__DOT__rst_n;
    CData/*0:0*/ htax__DOT__tx_valid;
    CData/*2:0*/ htax__DOT__tx_vc;
    CData/*0:0*/ htax__DOT__tx_ready;
    CData/*0:0*/ htax__DOT__rx_valid;
    CData/*0:0*/ htax__DOT__state;
    CData/*0:0*/ htax__DOT__rx_valid_q;
    CData/*3:0*/ htax__DOT__credit_count;
    CData/*0:0*/ htax__DOT__accept;
    CData/*0:0*/ htax__DOT__unused_vc;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VstlPhaseResult;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __VicoPhaseResult;
    CData/*0:0*/ __Vtrigprevexpr___TOP__htax__DOT__clk__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__htax__DOT__rst_n__0;
    CData/*0:0*/ __VactPhaseResult;
    CData/*0:0*/ __VnbaPhaseResult;
    VL_IN(tx_data,31,0);
    VL_OUT(rx_data,31,0);
    IData/*31:0*/ htax__DOT__tx_data;
    IData/*31:0*/ htax__DOT__rx_data;
    IData/*31:0*/ htax__DOT__rx_data_q;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<QData/*63:0*/, 1> __VstlTriggered;
    VlUnpacked<QData/*63:0*/, 1> __VicoTriggered;
    VlUnpacked<QData/*63:0*/, 1> __VactTriggered;
    VlUnpacked<QData/*63:0*/, 1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vtop__Syms* vlSymsp;
    const char* vlNamep;

    // PARAMETERS
    static constexpr IData/*31:0*/ htax__DOT__MAX_CREDITS = 8U;
    static constexpr IData/*31:0*/ htax__DOT__CREDIT_W = 4U;

    // CONSTRUCTORS
    Vtop___024root(Vtop__Syms* symsp, const char* namep);
    ~Vtop___024root();
    VL_UNCOPYABLE(Vtop___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
