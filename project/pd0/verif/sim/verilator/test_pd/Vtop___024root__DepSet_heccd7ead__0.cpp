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
void Vtop___024root___nba_sequent__TOP__2(Vtop___024root* vlSelf);

void Vtop___024root___eval_nba(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_nba\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((4ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtop___024root___nba_sequent__TOP__0(vlSelf);
    }
    if ((8ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtop___024root___nba_sequent__TOP__1(vlSelf);
    }
    if ((2ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtop___024root___nba_sequent__TOP__2(vlSelf);
    }
}

VL_INLINE_OPT void Vtop___024root___nba_sequent__TOP__0(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_sequent__TOP__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    VL_WRITEF_NX("###########\n",0);
}

VL_INLINE_OPT void Vtop___024root___nba_sequent__TOP__2(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_sequent__TOP__2\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __Vdly__top__DOT__counter;
    __Vdly__top__DOT__counter = 0;
    IData/*31:0*/ __Vdly__top__DOT__reset_counter;
    __Vdly__top__DOT__reset_counter = 0;
    IData/*31:0*/ __Vdly__top__DOT__clkg__DOT__counter;
    __Vdly__top__DOT__clkg__DOT__counter = 0;
    // Body
    __Vdly__top__DOT__clkg__DOT__counter = vlSelfRef.top__DOT__clkg__DOT__counter;
    __Vdly__top__DOT__counter = vlSelfRef.top__DOT__counter;
    __Vdly__top__DOT__reset_counter = vlSelfRef.top__DOT__reset_counter;
    if (VL_UNLIKELY((vlSelfRef.top__DOT__reset_done))) {
        VL_WRITEF_NX("[ASSIGN_XOR] op1=%b, op2=%b, res=%b\n",0,
                     1,vlSelfRef.top__DOT__assign_xor_op1,
                     1,(IData)(vlSelfRef.top__DOT__assign_xor_op2),
                     1,vlSelfRef.top__DOT__assign_xor_res);
    }
    if (VL_UNLIKELY((vlSelfRef.top__DOT__reset_done))) {
        VL_WRITEF_NX("[REG] inp=%b, out=%b\n",0,32,
                     vlSelfRef.top__DOT__reg_rst_inp,
                     32,vlSelfRef.top__DOT__reg_rst_out);
    }
    if (VL_UNLIKELY((vlSelfRef.top__DOT__reset_done))) {
        VL_WRITEF_NX("[ALU] inp1=%b, inp2=%b, alusel=%b, res=%b\n",0,
                     32,vlSelfRef.top__DOT__alu_op1,
                     32,vlSelfRef.top__DOT__alu_op2,
                     2,(IData)(vlSelfRef.top__DOT__alu_sel),
                     32,vlSelfRef.top__DOT__alu_res);
    }
    if (VL_UNLIKELY((vlSelfRef.top__DOT__reset_done))) {
        VL_WRITEF_NX("[TSP] op1=%b, op2=%b, out=%b\n",0,
                     32,vlSelfRef.top__DOT__tsp_op1,
                     32,vlSelfRef.top__DOT__tsp_op2,
                     32,vlSelfRef.top__DOT__tsp_out);
    }
    __Vdly__top__DOT__counter = ((IData)(1U) + vlSelfRef.top__DOT__counter);
    if (VL_UNLIKELY(((0x64U == vlSelfRef.top__DOT__counter)))) {
        VL_WRITEF_NX("[PD0] No error encountered\n",0);
        VL_FINISH_MT("/home/mo/school/4201/RISCV/project/pd0/verif/tests/test_pd.sv", 30, "");
    }
    vlSelfRef.top__DOT__assign_xor_op1 = (1U & vlSelfRef.top__DOT__counter);
    vlSelfRef.top__DOT__assign_xor_op2 = (1U & (vlSelfRef.top__DOT__counter 
                                                >> 1U));
    vlSelfRef.top__DOT__assign_xor_res = (1U & (vlSelfRef.top__DOT__counter 
                                                ^ (vlSelfRef.top__DOT__counter 
                                                   >> 1U)));
    vlSelfRef.top__DOT__reg_rst_inp = vlSelfRef.top__DOT__counter;
    vlSelfRef.top__DOT__reg_rst_out = vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_reg_rst_out_o;
    vlSelfRef.top__DOT__alu_op2 = vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i;
    vlSelfRef.top__DOT__alu_op1 = vlSelfRef.top__DOT__counter;
    vlSelfRef.top__DOT__alu_sel = (3U & vlSelfRef.top__DOT__counter);
    vlSelfRef.top__DOT__alu_res = ((2U & vlSelfRef.top__DOT__counter)
                                    ? ((1U & vlSelfRef.top__DOT__counter)
                                        ? (vlSelfRef.top__DOT__counter 
                                           | vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i)
                                        : (vlSelfRef.top__DOT__counter 
                                           & vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i))
                                    : ((1U & vlSelfRef.top__DOT__counter)
                                        ? (vlSelfRef.top__DOT__counter 
                                           - vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i)
                                        : (vlSelfRef.top__DOT__counter 
                                           + vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i)));
    vlSelfRef.top__DOT__tsp_op2 = vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_TSP_op2_i;
    vlSelfRef.top__DOT__tsp_op1 = vlSelfRef.top__DOT__counter;
    if (((IData)(vlSelfRef.top__DOT__reset_neg) & VL_LTES_III(32, 3U, vlSelfRef.top__DOT__reset_counter))) {
        vlSelfRef.top__DOT__reset_done = 1U;
    }
    vlSelfRef.top__DOT__tsp_out = (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT____Vcellout__s3__out_o);
    if (vlSelfRef.top__DOT__reset) {
        __Vdly__top__DOT__reset_counter = 0U;
        vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_reg_rst_out_o = 0U;
        vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT____Vcellout__s3__out_o = 0ULL;
        vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub = 0ULL;
        vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd = 0ULL;
    } else {
        __Vdly__top__DOT__reset_counter = ((IData)(1U) 
                                           + vlSelfRef.top__DOT__reset_counter);
        vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_reg_rst_out_o 
            = vlSelfRef.top__DOT__counter;
        vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT____Vcellout__s3__out_o 
            = (QData)((IData)(((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub 
                                        >> 0x20U)) 
                               - (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub))));
        vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub 
            = ((QData)((IData)(vlSelfRef.top__DOT__counter)) 
               + VL_SHIFTL_QQI(64,64,32, (QData)((IData)(
                                                         ((IData)(
                                                                  (vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd 
                                                                   >> 0x20U)) 
                                                          + (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd)))), 0x1fU));
        vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd 
            = (((QData)((IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_TSP_op2_i)) 
                << 0x20U) | (QData)((IData)(vlSelfRef.top__DOT__counter)));
    }
    vlSelfRef.top__DOT__reset_counter = __Vdly__top__DOT__reset_counter;
    if (((IData)(vlSelfRef.top__DOT__reset_reg) & (~ (IData)(vlSelfRef.top__DOT__reset)))) {
        vlSelfRef.top__DOT__reset_neg = 1U;
    }
    vlSelfRef.top__DOT__reset_reg = vlSelfRef.top__DOT__reset;
    vlSelfRef.top__DOT__counter = __Vdly__top__DOT__counter;
    vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i 
        = (((0x80000000U & (vlSelfRef.top__DOT__counter 
                            << 0x1dU)) | (0x40000000U 
                                          & (vlSelfRef.top__DOT__counter 
                                             << 0x1bU))) 
           | ((0x20000000U & (vlSelfRef.top__DOT__counter 
                              << 0x1dU)) | ((0x10000000U 
                                             & (vlSelfRef.top__DOT__counter 
                                                << 0x1bU)) 
                                            | (vlSelfRef.top__DOT__counter 
                                               >> 4U))));
    vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_TSP_op2_i 
        = ((0x80000000U & (vlSelfRef.top__DOT__counter 
                           << 0x1eU)) | ((0x40000000U 
                                          & (vlSelfRef.top__DOT__counter 
                                             << 0x1cU)) 
                                         | ((0x20000000U 
                                             & (vlSelfRef.top__DOT__counter 
                                                << 0x1dU)) 
                                            | (vlSelfRef.top__DOT__counter 
                                               >> 3U))));
    __Vdly__top__DOT__clkg__DOT__counter = ((IData)(1U) 
                                            + vlSelfRef.top__DOT__clkg__DOT__counter);
    vlSelfRef.top__DOT__reset = VL_GTS_III(32, 5U, vlSelfRef.top__DOT__clkg__DOT__counter);
    if (VL_UNLIKELY(((0x186a0U == vlSelfRef.top__DOT__clkg__DOT__counter)))) {
        VL_FINISH_MT("/home/mo/school/4201/RISCV/project/pd0/verif/tests/clockgen.sv", 26, "");
    }
    vlSelfRef.top__DOT__clkg__DOT__counter = __Vdly__top__DOT__clkg__DOT__counter;
}

void Vtop___024root___eval_triggers__act(Vtop___024root* vlSelf);

bool Vtop___024root___eval_phase__act(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_phase__act\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlTriggerVec<4> __VpreTriggered;
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
            VL_FATAL_MT("/home/mo/school/4201/RISCV/project/pd0/verif/tests/test_pd.sv", 8, "", "NBA region did not converge.");
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
                VL_FATAL_MT("/home/mo/school/4201/RISCV/project/pd0/verif/tests/test_pd.sv", 8, "", "Active region did not converge.");
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
