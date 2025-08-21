// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtop.h for the primary calling header

#ifndef VERILATED_VTOP___024ROOT_H_
#define VERILATED_VTOP___024ROOT_H_  // guard

#include "verilated.h"


class Vtop__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtop___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ top__DOT__clock;
    CData/*0:0*/ top__DOT__reset;
    CData/*0:0*/ top__DOT__genblk3__DOT__tick_check__DOT__res;
    CData/*0:0*/ __Vdpi_export_trigger;
    CData/*7:0*/ __VdfgRegularize_h0dff6736_0_2;
    CData/*7:0*/ __VdfgRegularize_h0dff6736_0_6;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__top__DOT__clock__0;
    CData/*0:0*/ __VactContinue;
    SData/*15:0*/ __VdfgRegularize_h0dff6736_0_17;
    IData/*31:0*/ top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__pc;
    IData/*31:0*/ top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__insn;
    VlWide<4>/*127:0*/ top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__p;
    VlWide<7>/*223:0*/ top__DOT__genblk3__DOT__genblk3__DOT__check_D__Vstatic__check_D_func__DOT__t;
    IData/*31:0*/ top__DOT__genblk3__DOT__tick;
    VlWide<128>/*4095:0*/ top__DOT__genblk3__DOT__tick_check__DOT__msg;
    IData/*31:0*/ top__DOT__clkg__DOT__counter;
    IData/*31:0*/ top__DOT__dut__DOT__core__DOT__f_pc;
    IData/*31:0*/ top__DOT__dut__DOT__core__DOT__f_insn;
    IData/*31:0*/ top__DOT__dut__DOT__core__DOT__d_imm;
    IData/*31:0*/ top__DOT__dut__DOT__core__DOT__f1__DOT__pc;
    IData/*31:0*/ top__DOT__dut__DOT__core__DOT__imem__DOT__address;
    IData/*23:0*/ __VdfgRegularize_h0dff6736_0_18;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<VlWide<8>/*255:0*/, 39> top__DOT__genblk3__DOT__pattern;
    VlUnpacked<IData/*31:0*/, 1048577> top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory;
    VlUnpacked<CData/*7:0*/, 1048577> top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<3> __VactTriggered;
    VlTriggerVec<3> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vtop__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtop___024root(Vtop__Syms* symsp, const char* v__name);
    ~Vtop___024root();
    VL_UNCOPYABLE(Vtop___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
