// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals

#include "verilated_vcd_c.h"
#include "Vtop__Syms.h"


VL_ATTR_COLD void Vtop___024root__trace_init_sub__TOP__0(Vtop___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_init_sub__TOP__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    const int c = vlSymsp->__Vm_baseCode;
    VL_TRACE_PUSH_PREFIX(tracep, "$rootio", VerilatedTracePrefixType::SCOPE_MODULE, 0, 0);
    VL_TRACE_DECL_BIT(tracep,c+0,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC);
    VL_TRACE_DECL_BIT(tracep,c+1,0,"rst_n",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC);
    VL_TRACE_DECL_BUS(tracep,c+2,0,"tx_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, 31,0);
    VL_TRACE_DECL_BIT(tracep,c+3,0,"tx_valid",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC);
    VL_TRACE_DECL_BUS(tracep,c+4,0,"tx_vc",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, 2,0);
    VL_TRACE_DECL_BIT(tracep,c+5,0,"tx_ready",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC);
    VL_TRACE_DECL_BUS(tracep,c+6,0,"rx_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, 31,0);
    VL_TRACE_DECL_BIT(tracep,c+7,0,"rx_valid",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC);
    VL_TRACE_POP_PREFIX(tracep);
    VL_TRACE_PUSH_PREFIX(tracep, "htax", VerilatedTracePrefixType::SCOPE_MODULE, 0, 0);
    VL_TRACE_DECL_BIT(tracep,c+8,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC);
    VL_TRACE_DECL_BIT(tracep,c+9,0,"rst_n",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC);
    VL_TRACE_DECL_BUS(tracep,c+10,0,"tx_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, 31,0);
    VL_TRACE_DECL_BIT(tracep,c+11,0,"tx_valid",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC);
    VL_TRACE_DECL_BUS(tracep,c+12,0,"tx_vc",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, 2,0);
    VL_TRACE_DECL_BIT(tracep,c+13,0,"tx_ready",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC);
    VL_TRACE_DECL_BUS(tracep,c+14,0,"rx_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, 31,0);
    VL_TRACE_DECL_BIT(tracep,c+15,0,"rx_valid",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC);
    VL_TRACE_DECL_BUS(tracep,c+22,0,"MAX_CREDITS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INT, 31,0);
    VL_TRACE_DECL_BUS(tracep,c+23,0,"CREDIT_W",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INT, 31,0);
    VL_TRACE_DECL_BIT(tracep,c+16,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC);
    VL_TRACE_DECL_BUS(tracep,c+17,0,"rx_data_q",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, 31,0);
    VL_TRACE_DECL_BIT(tracep,c+18,0,"rx_valid_q",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC);
    VL_TRACE_DECL_BUS(tracep,c+19,0,"credit_count",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, 3,0);
    VL_TRACE_DECL_BIT(tracep,c+20,0,"accept",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC);
    VL_TRACE_DECL_BIT(tracep,c+21,0,"unused_vc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC);
    VL_TRACE_POP_PREFIX(tracep);
}

VL_ATTR_COLD void Vtop___024root__trace_init_top(Vtop___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_init_top\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vtop___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vtop___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vtop___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vtop___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vtop___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vtop___024root__trace_register(Vtop___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_register\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    tracep->addConstCb(&Vtop___024root__trace_const_0, 0, vlSelf);
    tracep->addFullCb(&Vtop___024root__trace_full_0, 0, vlSelf);
    tracep->addChgCb(&Vtop___024root__trace_chg_0, 0, vlSelf);
    tracep->addCleanupCb(&Vtop___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vtop___024root__trace_const_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vtop___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_const_0\n"); );
    // Body
    Vtop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtop___024root*>(voidSelf);
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    Vtop___024root__trace_const_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vtop___024root__trace_const_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_const_0_sub_0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    bufp->fullIData(oldp+22,(8U),32);
    bufp->fullIData(oldp+23,(4U),32);
}

VL_ATTR_COLD void Vtop___024root__trace_full_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vtop___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_full_0\n"); );
    // Body
    Vtop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtop___024root*>(voidSelf);
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    Vtop___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vtop___024root__trace_full_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_full_0_sub_0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    bufp->fullBit(oldp+0,(vlSelfRef.clk));
    bufp->fullBit(oldp+1,(vlSelfRef.rst_n));
    bufp->fullIData(oldp+2,(vlSelfRef.tx_data),32);
    bufp->fullBit(oldp+3,(vlSelfRef.tx_valid));
    bufp->fullCData(oldp+4,(vlSelfRef.tx_vc),3);
    bufp->fullBit(oldp+5,(vlSelfRef.tx_ready));
    bufp->fullIData(oldp+6,(vlSelfRef.rx_data),32);
    bufp->fullBit(oldp+7,(vlSelfRef.rx_valid));
    bufp->fullBit(oldp+8,(vlSelfRef.htax__DOT__clk));
    bufp->fullBit(oldp+9,(vlSelfRef.htax__DOT__rst_n));
    bufp->fullIData(oldp+10,(vlSelfRef.htax__DOT__tx_data),32);
    bufp->fullBit(oldp+11,(vlSelfRef.htax__DOT__tx_valid));
    bufp->fullCData(oldp+12,(vlSelfRef.htax__DOT__tx_vc),3);
    bufp->fullBit(oldp+13,(vlSelfRef.htax__DOT__tx_ready));
    bufp->fullIData(oldp+14,(vlSelfRef.htax__DOT__rx_data),32);
    bufp->fullBit(oldp+15,(vlSelfRef.htax__DOT__rx_valid));
    bufp->fullBit(oldp+16,(vlSelfRef.htax__DOT__state));
    bufp->fullIData(oldp+17,(vlSelfRef.htax__DOT__rx_data_q),32);
    bufp->fullBit(oldp+18,(vlSelfRef.htax__DOT__rx_valid_q));
    bufp->fullCData(oldp+19,(vlSelfRef.htax__DOT__credit_count),4);
    bufp->fullBit(oldp+20,(vlSelfRef.htax__DOT__accept));
    bufp->fullBit(oldp+21,(vlSelfRef.htax__DOT__unused_vc));
}
