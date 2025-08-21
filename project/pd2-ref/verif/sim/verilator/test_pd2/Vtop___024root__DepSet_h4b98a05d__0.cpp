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
    vlSelfRef.__VactTriggered.setBit(1U, ((~ (IData)(vlSelfRef.top__DOT__clock)) 
                                          & (IData)(vlSelfRef.__Vtrigprevexpr___TOP__top__DOT__clock__0)));
    vlSelfRef.__VactTriggered.setBit(2U, ((IData)(vlSelfRef.top__DOT__clock) 
                                          & (~ (IData)(vlSelfRef.__Vtrigprevexpr___TOP__top__DOT__clock__0))));
    vlSelfRef.__Vtrigprevexpr___TOP__top__DOT__clock__0 
        = vlSelfRef.top__DOT__clock;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtop___024root___dump_triggers__act(vlSelf);
    }
#endif
}

extern const VlWide<8>/*255:0*/ Vtop__ConstPool__CONST_h9e67c271_0;

VL_INLINE_OPT void Vtop___024root___nba_sequent__TOP__1(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___nba_sequent__TOP__1\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ top__DOT__genblk3__DOT__tick_check__DOT__correct;
    top__DOT__genblk3__DOT__tick_check__DOT__correct = 0;
    IData/*31:0*/ __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__idx;
    __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__idx = 0;
    CData/*0:0*/ __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__res;
    __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__res = 0;
    VlWide<128>/*4095:0*/ __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__msg;
    VL_ZERO_W(4096, __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__msg);
    IData/*31:0*/ __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_D__1__idx;
    __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_D__1__idx = 0;
    VlWide<128>/*4095:0*/ __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_D__1__msg;
    VL_ZERO_W(4096, __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_D__1__msg);
    // Body
    top__DOT__genblk3__DOT__tick_check__DOT__correct = 1U;
    if (VL_LIKELY((vlSelfRef.top__DOT__reset))) {
        vlSelfRef.top__DOT__genblk3__DOT__tick = 0U;
    } else {
        __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__idx 
            = vlSelfRef.top__DOT__genblk3__DOT__tick;
        if ((0x26U >= (0x3fU & __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__idx))) {
            vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__p[0U] 
                = vlSelfRef.top__DOT__genblk3__DOT__pattern
                [(0x3fU & __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__idx)][0U];
            vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__p[1U] 
                = vlSelfRef.top__DOT__genblk3__DOT__pattern
                [(0x3fU & __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__idx)][1U];
            vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__p[2U] 
                = vlSelfRef.top__DOT__genblk3__DOT__pattern
                [(0x3fU & __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__idx)][2U];
            vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__p[3U] 
                = vlSelfRef.top__DOT__genblk3__DOT__pattern
                [(0x3fU & __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__idx)][3U];
        } else {
            vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__p[0U] 
                = Vtop__ConstPool__CONST_h9e67c271_0[0U];
            vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__p[1U] 
                = Vtop__ConstPool__CONST_h9e67c271_0[1U];
            vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__p[2U] 
                = Vtop__ConstPool__CONST_h9e67c271_0[2U];
            vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__p[3U] 
                = Vtop__ConstPool__CONST_h9e67c271_0[3U];
        }
        vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__pc 
            = vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__p[0U];
        vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__insn 
            = vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__p[1U];
        if (((vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__pc 
              != vlSelfRef.top__DOT__dut__DOT__core__DOT__f_pc) 
             | (vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__insn 
                != vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn))) {
            VL_SFORMAT_NX(4096,__Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__msg
                          ,"F stage mismatch: expected PC=%x, INSN=%x, got PC=%x, INSN=%x",0,
                          32,vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__pc,
                          32,vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__insn,
                          32,vlSelfRef.top__DOT__dut__DOT__core__DOT__f_pc,
                          32,vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn);
            __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__res = 0U;
        } else {
            __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__res = 1U;
        }
        vlSelfRef.top__DOT__genblk3__DOT__tick_check__DOT__res 
            = __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__res;
        VL_ASSIGN_W(4096,vlSelfRef.top__DOT__genblk3__DOT__tick_check__DOT__msg, __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_F__0__msg);
        top__DOT__genblk3__DOT__tick_check__DOT__correct 
            = ((IData)(top__DOT__genblk3__DOT__tick_check__DOT__correct) 
               & (IData)(vlSelfRef.top__DOT__genblk3__DOT__tick_check__DOT__res));
        if (VL_UNLIKELY(((1U & (~ (IData)(vlSelfRef.top__DOT__genblk3__DOT__tick_check__DOT__res)))))) {
            VL_WRITEF_NX("%0s\n",0,4096,vlSelfRef.top__DOT__genblk3__DOT__tick_check__DOT__msg.data());
        }
        __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_D__1__idx 
            = vlSelfRef.top__DOT__genblk3__DOT__tick;
        vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_D__Vstatic__check_D_func__DOT__t[0U] 
            = (IData)((((QData)((IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)) 
                        << 0x20U) | (QData)((IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__f_pc))));
        vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_D__Vstatic__check_D_func__DOT__t[1U] 
            = (IData)(((((QData)((IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn)) 
                         << 0x20U) | (QData)((IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__f_pc))) 
                       >> 0x20U));
        vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_D__Vstatic__check_D_func__DOT__t[4U] 
            = vlSelfRef.top__DOT__dut__DOT__core__DOT__f1__DOT__pc;
        vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_D__Vstatic__check_D_func__DOT__t[5U] 
            = ((0xfffe0000U & vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_D__Vstatic__check_D_func__DOT__t[5U]) 
               | ((0x1f000U & (vlSelfRef.__VdfgRegularize_h0dff6736_0_18 
                               >> 3U)) | ((0xf80U & (IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_17)) 
                                          | (0x7fU 
                                             & vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn))));
        vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_D__Vstatic__check_D_func__DOT__t[5U] 
            = ((0x1ffffU & vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_D__Vstatic__check_D_func__DOT__t[5U]) 
               | (0xfffe0000U & ((0xfe000000U & ((IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_2) 
                                                 << 0x18U)) 
                                 | ((0x1c00000U & ((IData)(vlSelfRef.__VdfgRegularize_h0dff6736_0_6) 
                                                   << 0x12U)) 
                                    | (0x3e0000U & 
                                       (vlSelfRef.top__DOT__dut__DOT__core__DOT__f_insn 
                                        >> 3U))))));
        vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_D__Vstatic__check_D_func__DOT__t[6U] 
            = vlSelfRef.top__DOT__dut__DOT__core__DOT__d_imm;
        VL_SFORMAT_NX(4096,__Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_D__1__msg
                      ,"%x",0,224,vlSelfRef.top__DOT__genblk3__DOT__genblk3__DOT__check_D__Vstatic__check_D_func__DOT__t.data());
        vlSelfRef.top__DOT__genblk3__DOT__tick_check__DOT__res = 1U;
        VL_ASSIGN_W(4096,vlSelfRef.top__DOT__genblk3__DOT__tick_check__DOT__msg, __Vtask_top__DOT__genblk3__DOT__genblk3__DOT__check_D__1__msg);
        VL_WRITEF_NX("%0s\n",0,4096,vlSelfRef.top__DOT__genblk3__DOT__tick_check__DOT__msg.data());
        if (VL_LIKELY((top__DOT__genblk3__DOT__tick_check__DOT__correct))) {
            if (VL_UNLIKELY(((0x26U == vlSelfRef.top__DOT__genblk3__DOT__tick)))) {
                VL_WRITEF_NX("Check passed\n",0);
                VL_FINISH_MT("/Users/anirudhkaushik/REPOS/EECS-4201-project/project/pd2/verif/tests/pattern_check.h", 28, "");
            }
        } else {
            VL_WRITEF_NX("[%0t] %%Fatal: pattern_check.h:25: Assertion failed in %Ntop.genblk3.tick_check\n",0,
                         64,VL_TIME_UNITED_Q(1),-12,
                         vlSymsp->name());
            VL_STOP_MT("/Users/anirudhkaushik/REPOS/EECS-4201-project/project/pd2/verif/tests/pattern_check.h", 25, "", false);
        }
        vlSelfRef.top__DOT__genblk3__DOT__tick = ((IData)(1U) 
                                                  + vlSelfRef.top__DOT__genblk3__DOT__tick);
    }
}
