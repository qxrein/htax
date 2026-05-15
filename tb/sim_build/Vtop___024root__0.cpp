// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtop.h for the primary calling header

#include "Vtop__pch.h"

void Vtop___024root___eval_triggers_vec__ico(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_triggers_vec__ico\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VicoTriggered[0U] = ((0xfffffffffffffffeULL 
                                      & vlSelfRef.__VicoTriggered[0U]) 
                                     | (IData)((IData)(vlSelfRef.__VicoFirstIteration)));
}

bool Vtop___024root___trigger_anySet__ico(const VlUnpacked<QData/*63:0*/, 1> &in) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___trigger_anySet__ico\n"); );
    // Locals
    IData/*31:0*/ n;
    // Body
    n = 0U;
    do {
        if (in[n]) {
            return (1U);
        }
        n = ((IData)(1U) + n);
    } while ((1U > n));
    return (0U);
}

void Vtop___024root___ico_sequent__TOP__0(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___ico_sequent__TOP__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.htax__DOT__clk = vlSelfRef.clk;
    vlSelfRef.htax__DOT__tx_data = vlSelfRef.tx_data;
    vlSelfRef.htax__DOT__tx_vc = vlSelfRef.tx_vc;
    vlSelfRef.htax__DOT__rx_data = vlSelfRef.htax__DOT__rx_data_q;
    vlSelfRef.htax__DOT__rx_valid = vlSelfRef.htax__DOT__rx_valid_q;
    vlSelfRef.htax__DOT__tx_valid = vlSelfRef.tx_valid;
    vlSelfRef.htax__DOT__rst_n = vlSelfRef.rst_n;
    vlSelfRef.htax__DOT__unused_vc = (0U != (IData)(vlSelfRef.htax__DOT__tx_vc));
    vlSelfRef.rx_data = vlSelfRef.htax__DOT__rx_data;
    vlSelfRef.rx_valid = vlSelfRef.htax__DOT__rx_valid;
    vlSelfRef.htax__DOT__tx_ready = ((~ ((IData)(vlSelfRef.htax__DOT__state) 
                                         | (0U == (IData)(vlSelfRef.htax__DOT__credit_count)))) 
                                     & (IData)(vlSelfRef.htax__DOT__rst_n));
    vlSelfRef.tx_ready = vlSelfRef.htax__DOT__tx_ready;
    vlSelfRef.htax__DOT__accept = ((IData)(vlSelfRef.htax__DOT__tx_valid) 
                                   & (IData)(vlSelfRef.htax__DOT__tx_ready));
}

void Vtop___024root___eval_ico(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_ico\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VicoTriggered[0U])) {
        Vtop___024root___ico_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__ico(const VlUnpacked<QData/*63:0*/, 1> &triggers, const std::string &tag);
#endif  // VL_DEBUG

bool Vtop___024root___eval_phase__ico(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_phase__ico\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    CData/*0:0*/ __VicoExecute;
    // Body
    Vtop___024root___eval_triggers_vec__ico(vlSelf);
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtop___024root___dump_triggers__ico(vlSelfRef.__VicoTriggered, "ico"s);
    }
#endif
    __VicoExecute = Vtop___024root___trigger_anySet__ico(vlSelfRef.__VicoTriggered);
    if (__VicoExecute) {
        Vtop___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void Vtop___024root___eval_triggers_vec__act(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_triggers_vec__act\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VactTriggered[0U] = (QData)((IData)(
                                                    ((((~ (IData)(vlSelfRef.htax__DOT__rst_n)) 
                                                       & (IData)(vlSelfRef.__Vtrigprevexpr___TOP__htax__DOT__rst_n__0)) 
                                                      << 1U) 
                                                     | ((IData)(vlSelfRef.htax__DOT__clk) 
                                                        & (~ (IData)(vlSelfRef.__Vtrigprevexpr___TOP__htax__DOT__clk__0))))));
    vlSelfRef.__Vtrigprevexpr___TOP__htax__DOT__clk__0 
        = vlSelfRef.htax__DOT__clk;
    vlSelfRef.__Vtrigprevexpr___TOP__htax__DOT__rst_n__0 
        = vlSelfRef.htax__DOT__rst_n;
}

bool Vtop___024root___trigger_anySet__act(const VlUnpacked<QData/*63:0*/, 1> &in) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___trigger_anySet__act\n"); );
    // Locals
    IData/*31:0*/ n;
    // Body
    n = 0U;
    do {
        if (in[n]) {
            return (1U);
        }
        n = ((IData)(1U) + n);
    } while ((1U > n));
    return (0U);
}

void Vtop___024root___nba_sequent__TOP__0(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_sequent__TOP__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    CData/*3:0*/ __Vdly__htax__DOT__credit_count;
    __Vdly__htax__DOT__credit_count = 0;
    // Body
    __Vdly__htax__DOT__credit_count = vlSelfRef.htax__DOT__credit_count;
    if (vlSelfRef.htax__DOT__rst_n) {
        if (vlSelfRef.htax__DOT__state) {
            if ((8U > (IData)(vlSelfRef.htax__DOT__credit_count))) {
                __Vdly__htax__DOT__credit_count = (0x0000000fU 
                                                   & ((IData)(1U) 
                                                      + (IData)(vlSelfRef.htax__DOT__credit_count)));
            }
            vlSelfRef.htax__DOT__rx_valid_q = 0U;
            vlSelfRef.htax__DOT__state = 0U;
        } else if (vlSelfRef.htax__DOT__accept) {
            __Vdly__htax__DOT__credit_count = (0x0000000fU 
                                               & ((IData)(vlSelfRef.htax__DOT__credit_count) 
                                                  - (IData)(1U)));
            vlSelfRef.htax__DOT__rx_data_q = vlSelfRef.htax__DOT__tx_data;
            vlSelfRef.htax__DOT__rx_valid_q = 1U;
            vlSelfRef.htax__DOT__state = 1U;
        }
        vlSelfRef.htax__DOT__credit_count = __Vdly__htax__DOT__credit_count;
        vlSelfRef.htax__DOT__rx_valid = vlSelfRef.htax__DOT__rx_valid_q;
        vlSelfRef.htax__DOT__rx_data = vlSelfRef.htax__DOT__rx_data_q;
        vlSelfRef.htax__DOT__tx_ready = (1U & (~ ((IData)(vlSelfRef.htax__DOT__state) 
                                                  | (0U 
                                                     == (IData)(vlSelfRef.htax__DOT__credit_count)))));
    } else {
        __Vdly__htax__DOT__credit_count = 8U;
        vlSelfRef.htax__DOT__state = 0U;
        vlSelfRef.htax__DOT__rx_data_q = 0U;
        vlSelfRef.htax__DOT__rx_valid_q = 0U;
        vlSelfRef.htax__DOT__credit_count = __Vdly__htax__DOT__credit_count;
        vlSelfRef.htax__DOT__rx_valid = vlSelfRef.htax__DOT__rx_valid_q;
        vlSelfRef.htax__DOT__rx_data = vlSelfRef.htax__DOT__rx_data_q;
        vlSelfRef.htax__DOT__tx_ready = 0U;
    }
    vlSelfRef.rx_valid = vlSelfRef.htax__DOT__rx_valid;
    vlSelfRef.rx_data = vlSelfRef.htax__DOT__rx_data;
    vlSelfRef.tx_ready = vlSelfRef.htax__DOT__tx_ready;
    vlSelfRef.htax__DOT__accept = ((IData)(vlSelfRef.htax__DOT__tx_valid) 
                                   & (IData)(vlSelfRef.htax__DOT__tx_ready));
}

void Vtop___024root___eval_nba(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_nba\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((3ULL & vlSelfRef.__VnbaTriggered[0U])) {
        Vtop___024root___nba_sequent__TOP__0(vlSelf);
    }
}

void Vtop___024root___trigger_orInto__act_vec_vec(VlUnpacked<QData/*63:0*/, 1> &out, const VlUnpacked<QData/*63:0*/, 1> &in) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___trigger_orInto__act_vec_vec\n"); );
    // Locals
    IData/*31:0*/ n;
    // Body
    n = 0U;
    do {
        out[n] = (out[n] | in[n]);
        n = ((IData)(1U) + n);
    } while ((0U >= n));
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__act(const VlUnpacked<QData/*63:0*/, 1> &triggers, const std::string &tag);
#endif  // VL_DEBUG

bool Vtop___024root___eval_phase__act(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_phase__act\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vtop___024root___eval_triggers_vec__act(vlSelf);
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtop___024root___dump_triggers__act(vlSelfRef.__VactTriggered, "act"s);
    }
#endif
    Vtop___024root___trigger_orInto__act_vec_vec(vlSelfRef.__VnbaTriggered, vlSelfRef.__VactTriggered);
    return (0U);
}

void Vtop___024root___trigger_clear__act(VlUnpacked<QData/*63:0*/, 1> &out) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___trigger_clear__act\n"); );
    // Locals
    IData/*31:0*/ n;
    // Body
    n = 0U;
    do {
        out[n] = 0ULL;
        n = ((IData)(1U) + n);
    } while ((1U > n));
}

bool Vtop___024root___eval_phase__nba(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_phase__nba\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = Vtop___024root___trigger_anySet__act(vlSelfRef.__VnbaTriggered);
    if (__VnbaExecute) {
        Vtop___024root___eval_nba(vlSelf);
        Vtop___024root___trigger_clear__act(vlSelfRef.__VnbaTriggered);
    }
    return (__VnbaExecute);
}

void Vtop___024root___eval(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    IData/*31:0*/ __VicoIterCount;
    IData/*31:0*/ __VnbaIterCount;
    // Body
    __VicoIterCount = 0U;
    vlSelfRef.__VicoFirstIteration = 1U;
    do {
        if (VL_UNLIKELY(((0x00002710U < __VicoIterCount)))) {
#ifdef VL_DEBUG
            Vtop___024root___dump_triggers__ico(vlSelfRef.__VicoTriggered, "ico"s);
#endif
            VL_FATAL_MT("/Users/rein/projects/htax-verify/tb/../rtl/htax.sv", 4, "", "DIDNOTCONVERGE: Input combinational region did not converge after '--converge-limit' of 10000 tries");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        vlSelfRef.__VicoPhaseResult = Vtop___024root___eval_phase__ico(vlSelf);
        vlSelfRef.__VicoFirstIteration = 0U;
    } while (vlSelfRef.__VicoPhaseResult);
    __VnbaIterCount = 0U;
    do {
        if (VL_UNLIKELY(((0x00002710U < __VnbaIterCount)))) {
#ifdef VL_DEBUG
            Vtop___024root___dump_triggers__act(vlSelfRef.__VnbaTriggered, "nba"s);
#endif
            VL_FATAL_MT("/Users/rein/projects/htax-verify/tb/../rtl/htax.sv", 4, "", "DIDNOTCONVERGE: NBA region did not converge after '--converge-limit' of 10000 tries");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        vlSelfRef.__VactIterCount = 0U;
        do {
            if (VL_UNLIKELY(((0x00002710U < vlSelfRef.__VactIterCount)))) {
#ifdef VL_DEBUG
                Vtop___024root___dump_triggers__act(vlSelfRef.__VactTriggered, "act"s);
#endif
                VL_FATAL_MT("/Users/rein/projects/htax-verify/tb/../rtl/htax.sv", 4, "", "DIDNOTCONVERGE: Active region did not converge after '--converge-limit' of 10000 tries");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
            vlSelfRef.__VactPhaseResult = Vtop___024root___eval_phase__act(vlSelf);
        } while (vlSelfRef.__VactPhaseResult);
        vlSelfRef.__VnbaPhaseResult = Vtop___024root___eval_phase__nba(vlSelf);
    } while (vlSelfRef.__VnbaPhaseResult);
}

#ifdef VL_DEBUG
void Vtop___024root___eval_debug_assertions(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_debug_assertions\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if (VL_UNLIKELY(((vlSelfRef.clk & 0xfeU)))) {
        Verilated::overWidthError("clk");
    }
    if (VL_UNLIKELY(((vlSelfRef.rst_n & 0xfeU)))) {
        Verilated::overWidthError("rst_n");
    }
    if (VL_UNLIKELY(((vlSelfRef.tx_valid & 0xfeU)))) {
        Verilated::overWidthError("tx_valid");
    }
    if (VL_UNLIKELY(((vlSelfRef.tx_vc & 0xf8U)))) {
        Verilated::overWidthError("tx_vc");
    }
}
#endif  // VL_DEBUG
