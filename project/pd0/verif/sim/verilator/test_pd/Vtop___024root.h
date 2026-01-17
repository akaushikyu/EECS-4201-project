// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtop.h for the primary calling header

#ifndef VERILATED_VTOP___024ROOT_H_
#define VERILATED_VTOP___024ROOT_H_  // guard

#include "verilated.h"
class Vtop___024unit;
class Vtop_constants_pkg;


class Vtop__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtop___024root final : public VerilatedModule {
  public:
    // CELLS
    Vtop___024unit* __PVT____024unit;
    Vtop_constants_pkg* __PVT__constants_pkg;

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ top__DOT__clock;
    CData/*0:0*/ top__DOT__reset;
    CData/*0:0*/ top__DOT__reset_done;
    CData/*0:0*/ top__DOT__reset_neg;
    CData/*0:0*/ top__DOT__reset_reg;
    CData/*0:0*/ top__DOT__assign_xor_op1;
    CData/*0:0*/ top__DOT__assign_xor_op2;
    CData/*0:0*/ top__DOT__assign_xor_res;
    CData/*1:0*/ top__DOT__alu_sel;
    CData/*0:0*/ __Vdpi_export_trigger;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__top__DOT__clock__0;
    CData/*0:0*/ __VactDidInit;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ top__DOT__counter;
    IData/*31:0*/ top__DOT__reset_counter;
    IData/*31:0*/ top__DOT__alu_op1;
    IData/*31:0*/ top__DOT__alu_op2;
    IData/*31:0*/ top__DOT__alu_res;
    IData/*31:0*/ top__DOT__reg_rst_inp;
    IData/*31:0*/ top__DOT__reg_rst_out;
    IData/*31:0*/ top__DOT__tsp_op1;
    IData/*31:0*/ top__DOT__tsp_op2;
    IData/*31:0*/ top__DOT__tsp_out;
    IData/*31:0*/ top__DOT__clkg__DOT__counter;
    IData/*31:0*/ top__DOT__dut__DOT__core__DOT__assign_T;
    IData/*31:0*/ top__DOT__dut__DOT__core__DOT__assign_TSP_op2_i;
    IData/*31:0*/ top__DOT__dut__DOT__core__DOT__assign_alu_op2_i;
    IData/*31:0*/ top__DOT__dut__DOT__core__DOT__assign_reg_rst_out_o;
    IData/*31:0*/ __VactIterCount;
    QData/*63:0*/ top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd;
    QData/*63:0*/ top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub;
    QData/*63:0*/ top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT____Vcellout__s3__out_o;
    VlUnpacked<CData/*0:0*/, 2> __Vm_traceActivity;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<4> __VactTriggered;
    VlTriggerVec<4> __VnbaTriggered;

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
