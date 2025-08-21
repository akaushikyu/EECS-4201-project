// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtop.h for the primary calling header

#include "Vtop__pch.h"
#include "Vtop___024root.h"

void Vtop___024root___eval_act(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_act\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

void Vtop___024root___nba_sequent__TOP__0(Vtop___024root* vlSelf);
void Vtop___024root___nba_sequent__TOP__1(Vtop___024root* vlSelf);

void Vtop___024root___eval_nba(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_nba\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((4ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtop___024root___nba_sequent__TOP__0(vlSelf);
    }
    if ((2ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtop___024root___nba_sequent__TOP__1(vlSelf);
    }
}

VL_INLINE_OPT void Vtop___024root___nba_sequent__TOP__0(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_sequent__TOP__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*7:0*/ __VdfgRegularize_h0dff6736_0_4;
    __VdfgRegularize_h0dff6736_0_4 = 0;
    CData/*7:0*/ __VdfgRegularize_h0dff6736_0_7;
    __VdfgRegularize_h0dff6736_0_7 = 0;
    IData/*31:0*/ __VdfgRegularize_h0dff6736_0_14;
    __VdfgRegularize_h0dff6736_0_14 = 0;
    IData/*31:0*/ __VdfgRegularize_h0dff6736_0_16;
    __VdfgRegularize_h0dff6736_0_16 = 0;
    IData/*31:0*/ __Vdly__top__DOT__clkg__DOT__counter;
    __Vdly__top__DOT__clkg__DOT__counter = 0;
    // Body
    __Vdly__top__DOT__clkg__DOT__counter = vlSelfRef.top__DOT__clkg__DOT__counter;
    if (vlSelfRef.top__DOT__reset) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address = 0x1000000U;
        vlSelfRef.top__DOT__dut__DOT__core__DOT__f1__DOT__pc = 0x1000000U;
    } else {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
            = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
        vlSelfRef.top__DOT__dut__DOT__core__DOT__f1__DOT__pc 
            = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__f1__DOT__pc);
    }
    __Vdly__top__DOT__clkg__DOT__counter = ((IData)(1U) 
                                            + vlSelfRef.top__DOT__clkg__DOT__counter);
    vlSelfRef.top__DOT__reset = VL_GTS_III(32, 5U, vlSelfRef.top__DOT__clkg__DOT__counter);
    if (VL_UNLIKELY(((0xc350U == vlSelfRef.top__DOT__clkg__DOT__counter)))) {
        VL_FINISH_MT("/Users/anirudhkaushik/REPOS/EECS-4201-project/project/pd2/verif/tests/clockgen.sv", 40, "");
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__f_pc = vlSelfRef.top__DOT__dut__DOT__core__DOT__f1__DOT__pc;
    vlSelfRef.__VdfgRegularize_h0dff6736_0_2 = ((0x100000U 
                                                 >= 
                                                 (0x1fffffU 
                                                  & ((IData)(3U) 
                                                     + vlSelfRef.top__DOT__dut__DOT__core__DOT__f1__DOT__pc)))
                                                 ? 
                                                vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory
                                                [(0x1fffffU 
                                                  & ((IData)(3U) 
                                                     + vlSelfRef.top__DOT__dut__DOT__core__DOT__f1__DOT__pc))]
                                                 : 0U);
    __VdfgRegularize_h0dff6736_0_4 = ((0x100000U >= 
                                       (0x1fffffU & 
                                        ((IData)(2U) 
                                         + vlSelfRef.top__DOT__dut__DOT__core__DOT__f1__DOT__pc)))
                                       ? vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory
                                      [(0x1fffffU & 
                                        ((IData)(2U) 
                                         + vlSelfRef.top__DOT__dut__DOT__core__DOT__f1__DOT__pc))]
                                       : 0U);
    vlSelfRef.__VdfgRegularize_h0dff6736_0_6 = ((0x100000U 
                                                 >= 
                                                 (0x1fffffU 
                                                  & ((IData)(1U) 
                                                     + vlSelfRef.top__DOT__dut__DOT__core__DOT__f1__DOT__pc)))
                                                 ? 
                                                vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory
                                                [(0x1fffffU 
                                                  & ((IData)(1U) 
                                                     + vlSelfRef.top__DOT__dut__DOT__core__DOT__f1__DOT__pc))]
                                                 : 0U);
    __VdfgRegularize_h0dff6736_0_7 = ((0x100000U >= 
                                       (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__f1__DOT__pc))
                                       ? vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory
                                      [(0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__f1__DOT__pc)]
                                       : 0U);
    vlSelfRef.top__DOT__clkg__DOT__counter = __Vdly__top__DOT__clkg__DOT__counter;
    vlSelfRef.__VdfgRegularize_h0dff6736_0_17 = (((IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_6) 
                                                  << 8U) 
                                                 | (IData)(__VdfgRegularize_h0dff6736_0_7));
    vlSelfRef.__VdfgRegularize_h0dff6736_0_18 = (((IData)(__VdfgRegularize_h0dff6736_0_4) 
                                                  << 0x10U) 
                                                 | (IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_17));
    vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn 
        = (((IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_2) 
            << 0x18U) | vlSelfRef.__VdfgRegularize_h0dff6736_0_18);
    if ((2U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)) {
        if ((1U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)) {
            __VdfgRegularize_h0dff6736_0_14 = (0xfffff000U 
                                               & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn);
            __VdfgRegularize_h0dff6736_0_16 = (((- (IData)(
                                                           (1U 
                                                            & ((IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_2) 
                                                               >> 7U)))) 
                                                << 0xcU) 
                                               | (vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn 
                                                  >> 0x14U));
        } else {
            __VdfgRegularize_h0dff6736_0_14 = 0U;
            __VdfgRegularize_h0dff6736_0_16 = 0U;
        }
    } else {
        __VdfgRegularize_h0dff6736_0_14 = 0U;
        __VdfgRegularize_h0dff6736_0_16 = 0U;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__d_imm 
        = ((0x40U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
            ? ((0x20U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                ? ((0x10U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                    ? 0U : ((8U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                             ? ((4U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                 ? ((2U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                     ? ((1U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                         ? ((((- (IData)(
                                                         (1U 
                                                          & ((IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_2) 
                                                             >> 7U)))) 
                                              << 0x15U) 
                                             | (0x100000U 
                                                & ((IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_2) 
                                                   << 0xdU))) 
                                            | (((0xff000U 
                                                 & vlSelfRef.__VdfgRegularize_h0dff6736_0_18) 
                                                | (0x800U 
                                                   & ((IData)(__VdfgRegularize_h0dff6736_0_4) 
                                                      << 7U))) 
                                               | (0x7feU 
                                                  & (vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn 
                                                     >> 0x14U))))
                                         : 0U) : 0U)
                                 : 0U) : ((4U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                           ? 0U : (
                                                   (2U 
                                                    & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                                    ? 
                                                   ((1U 
                                                     & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                                     ? 
                                                    (((- (IData)(
                                                                 (1U 
                                                                  & ((IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_2) 
                                                                     >> 7U)))) 
                                                      << 0xdU) 
                                                     | (((0x1000U 
                                                          & ((IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_2) 
                                                             << 5U)) 
                                                         | (0x800U 
                                                            & ((IData)(__VdfgRegularize_h0dff6736_0_7) 
                                                               << 4U))) 
                                                        | ((0x7e0U 
                                                            & ((IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_2) 
                                                               << 4U)) 
                                                           | (0x1eU 
                                                              & ((IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_6) 
                                                                 << 1U)))))
                                                     : 0U)
                                                    : 0U))))
                : 0U) : ((0x20U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                          ? ((0x10U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                              ? ((8U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                  ? 0U : ((4U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                           ? __VdfgRegularize_h0dff6736_0_14
                                           : 0U)) : 
                             ((8U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                               ? 0U : ((4U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                        ? 0U : ((2U 
                                                 & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                                 ? 
                                                ((1U 
                                                  & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                                  ? 
                                                 (((- (IData)(
                                                              (1U 
                                                               & ((IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_2) 
                                                                  >> 7U)))) 
                                                   << 0xcU) 
                                                  | ((0xfe0U 
                                                      & ((IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_2) 
                                                         << 4U)) 
                                                     | (0x1fU 
                                                        & ((IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_17) 
                                                           >> 7U))))
                                                  : 0U)
                                                 : 0U))))
                          : ((0x10U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                              ? ((8U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                  ? 0U : ((4U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                           ? __VdfgRegularize_h0dff6736_0_14
                                           : __VdfgRegularize_h0dff6736_0_16))
                              : ((8U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                  ? 0U : ((4U & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)
                                           ? 0U : __VdfgRegularize_h0dff6736_0_16)))));
}

void Vtop___024root___eval_triggers__act(Vtop___024root* vlSelf);

bool Vtop___024root___eval_phase__act(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_phase__act\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlTriggerVec<3> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vtop___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelfRef.__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelfRef.__VactTriggered, vlSelfRef.__VnbaTriggered);
        vlSelfRef.__VnbaTriggered.thisOr(vlSelfRef.__VactTriggered);
        Vtop___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vtop___024root___eval_phase__nba(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_phase__nba\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelfRef.__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vtop___024root___eval_nba(vlSelf);
        vlSelfRef.__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__nba(Vtop___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__act(Vtop___024root* vlSelf);
#endif  // VL_DEBUG

void Vtop___024root___eval(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY(((0x64U < __VnbaIterCount)))) {
#ifdef VL_DEBUG
            Vtop___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("/Users/anirudhkaushik/REPOS/EECS-4201-project/project/pd2/verif/tests/test_pd2.sv", 4, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelfRef.__VactIterCount = 0U;
        vlSelfRef.__VactContinue = 1U;
        while (vlSelfRef.__VactContinue) {
            if (VL_UNLIKELY(((0x64U < vlSelfRef.__VactIterCount)))) {
#ifdef VL_DEBUG
                Vtop___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("/Users/anirudhkaushik/REPOS/EECS-4201-project/project/pd2/verif/tests/test_pd2.sv", 4, "", "Active region did not converge.");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
            vlSelfRef.__VactContinue = 0U;
            if (Vtop___024root___eval_phase__act(vlSelf)) {
                vlSelfRef.__VactContinue = 1U;
            }
        }
        if (Vtop___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vtop___024root___eval_debug_assertions(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_debug_assertions\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}
#endif  // VL_DEBUG
