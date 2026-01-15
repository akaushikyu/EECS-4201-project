// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtop.h for the primary calling header

#include "Vtop__pch.h"
#include "Vtop__Syms.h"
#include "Vtop___024root.h"

void Vtop___024root____Vdpiexp_top__DOT__clkg__DOT__toggleClock_TOP(Vtop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root____Vdpiexp_top__DOT__clkg__DOT__toggleClock_TOP\n"); );
    // Init
    // Body
    vlSymsp->TOP.__Vdpi_export_trigger = 1U;
    vlSymsp->TOP.top__DOT__clock = (1U & (~ (IData)(vlSymsp->TOP.top__DOT__clock)));
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__act(Vtop___024root* vlSelf);
#endif  // VL_DEBUG

void Vtop___024root___eval_triggers__act(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_triggers__act\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VactTriggered.setBit(0U, (IData)(vlSelfRef.__Vdpi_export_trigger));
    vlSelfRef.__Vdpi_export_trigger = 0U;
    vlSelfRef.__VactTriggered.setBit(1U, ((IData)(vlSelfRef.top__DOT__clock) 
                                          & (~ (IData)(vlSelfRef.__Vtrigprevexpr___TOP__top__DOT__clock__0))));
    vlSelfRef.__VactTriggered.setBit(2U, ((~ (IData)(vlSelfRef.top__DOT__clock)) 
                                          & (IData)(vlSelfRef.__Vtrigprevexpr___TOP__top__DOT__clock__0)));
    vlSelfRef.__VactTriggered.setBit(3U, ((IData)(vlSelfRef.top__DOT__clock) 
                                          != (IData)(vlSelfRef.__Vtrigprevexpr___TOP__top__DOT__clock__0)));
    vlSelfRef.__Vtrigprevexpr___TOP__top__DOT__clock__0 
        = vlSelfRef.top__DOT__clock;
    if (VL_UNLIKELY(((1U & (~ (IData)(vlSelfRef.__VactDidInit)))))) {
        vlSelfRef.__VactDidInit = 1U;
        vlSelfRef.__VactTriggered.setBit(3U, 1U);
    }
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtop___024root___dump_triggers__act(vlSelf);
    }
#endif
}

VL_INLINE_OPT void Vtop___024root___nba_sequent__TOP__0(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_sequent__TOP__0\n"); );
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
    VL_WRITEF_NX("[%0t] %%Fatal: test_pd.sv:102: Assertion failed in %Ntop.alu_test: [ALU] Probe signals not defined\n",0,
                 64,VL_TIME_UNITED_Q(1),-12,vlSymsp->name());
    VL_STOP_MT("/home/mo/school/4201/RISCV/project/pd0/verif/tests/test_pd.sv", 102, "", false);
    VL_WRITEF_NX("[%0t] %%Fatal: test_pd.sv:126: Assertion failed in %Ntop.reg_rst_test: [REG] Probe signals not defined\n",0,
                 64,VL_TIME_UNITED_Q(1),-12,vlSymsp->name());
    VL_STOP_MT("/home/mo/school/4201/RISCV/project/pd0/verif/tests/test_pd.sv", 126, "", false);
    VL_WRITEF_NX("[%0t] %%Fatal: test_pd.sv:153: Assertion failed in %Ntop.tsp_test: [TSP] Probe signals not defined\n",0,
                 64,VL_TIME_UNITED_Q(1),-12,vlSymsp->name());
    VL_STOP_MT("/home/mo/school/4201/RISCV/project/pd0/verif/tests/test_pd.sv", 153, "", false);
    __Vdly__top__DOT__counter = vlSelfRef.top__DOT__counter;
    __Vdly__top__DOT__clkg__DOT__counter = vlSelfRef.top__DOT__clkg__DOT__counter;
    __Vdly__top__DOT__reset_counter = vlSelfRef.top__DOT__reset_counter;
    if (VL_UNLIKELY((vlSelfRef.top__DOT__reset_done))) {
        VL_WRITEF_NX("[ASSIGN_XOR] op1=%b, op2=%b, res=%b\n",0,
                     1,vlSelfRef.top__DOT__assign_xor_op1,
                     1,(IData)(vlSelfRef.top__DOT__assign_xor_op2),
                     1,vlSelfRef.top__DOT__assign_xor_res);
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
    __Vdly__top__DOT__reset_counter = ((IData)(vlSelfRef.top__DOT__reset)
                                        ? 0U : ((IData)(1U) 
                                                + vlSelfRef.top__DOT__reset_counter));
    if (((IData)(vlSelfRef.top__DOT__reset_neg) & VL_LTES_III(32, 3U, vlSelfRef.top__DOT__reset_counter))) {
        vlSelfRef.top__DOT__reset_done = 1U;
    }
    vlSelfRef.top__DOT__counter = __Vdly__top__DOT__counter;
    vlSelfRef.top__DOT__reset_counter = __Vdly__top__DOT__reset_counter;
    if (((IData)(vlSelfRef.top__DOT__reset_reg) & (~ (IData)(vlSelfRef.top__DOT__reset)))) {
        vlSelfRef.top__DOT__reset_neg = 1U;
    }
    vlSelfRef.top__DOT__reset_reg = vlSelfRef.top__DOT__reset;
    __Vdly__top__DOT__clkg__DOT__counter = ((IData)(1U) 
                                            + vlSelfRef.top__DOT__clkg__DOT__counter);
    vlSelfRef.top__DOT__reset = VL_GTS_III(32, 5U, vlSelfRef.top__DOT__clkg__DOT__counter);
    if (VL_UNLIKELY(((0x186a0U == vlSelfRef.top__DOT__clkg__DOT__counter)))) {
        VL_FINISH_MT("/home/mo/school/4201/RISCV/project/pd0/verif/tests/clockgen.sv", 26, "");
    }
    vlSelfRef.top__DOT__clkg__DOT__counter = __Vdly__top__DOT__clkg__DOT__counter;
}

VL_INLINE_OPT void Vtop___024root___nba_sequent__TOP__2(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_sequent__TOP__2\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if (VL_UNLIKELY(((1U & (~ (IData)(vlSymsp->TOP____024unit.__VmonitorOff)))))) {
        VL_WRITEF_NX(" clk = %0b\n",0,1,vlSelfRef.top__DOT__clock);
    }
}
