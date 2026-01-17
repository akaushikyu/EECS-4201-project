// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtop__Syms.h"


void Vtop___024root__trace_chg_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vtop___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_chg_0\n"); );
    // Init
    Vtop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtop___024root*>(voidSelf);
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vtop___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vtop___024root__trace_chg_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_chg_0_sub_0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY((vlSelfRef.__Vm_traceActivity[1U]))) {
        bufp->chgBit(oldp+0,(vlSelfRef.top__DOT__reset));
        bufp->chgIData(oldp+1,(vlSelfRef.top__DOT__counter),32);
        bufp->chgBit(oldp+2,(vlSelfRef.top__DOT__reset_done));
        bufp->chgBit(oldp+3,(vlSelfRef.top__DOT__reset_neg));
        bufp->chgBit(oldp+4,(vlSelfRef.top__DOT__reset_reg));
        bufp->chgIData(oldp+5,(vlSelfRef.top__DOT__reset_counter),32);
        bufp->chgBit(oldp+6,(vlSelfRef.top__DOT__assign_xor_op1));
        bufp->chgBit(oldp+7,(vlSelfRef.top__DOT__assign_xor_op2));
        bufp->chgBit(oldp+8,(vlSelfRef.top__DOT__assign_xor_res));
        bufp->chgCData(oldp+9,(vlSelfRef.top__DOT__alu_sel),2);
        bufp->chgIData(oldp+10,(vlSelfRef.top__DOT__alu_op1),32);
        bufp->chgIData(oldp+11,(vlSelfRef.top__DOT__alu_op2),32);
        bufp->chgIData(oldp+12,(vlSelfRef.top__DOT__alu_res),32);
        bufp->chgIData(oldp+13,(vlSelfRef.top__DOT__reg_rst_inp),32);
        bufp->chgIData(oldp+14,(vlSelfRef.top__DOT__reg_rst_out),32);
        bufp->chgIData(oldp+15,(vlSelfRef.top__DOT__tsp_op1),32);
        bufp->chgIData(oldp+16,(vlSelfRef.top__DOT__tsp_op2),32);
        bufp->chgIData(oldp+17,(vlSelfRef.top__DOT__tsp_out),32);
        bufp->chgIData(oldp+18,(vlSelfRef.top__DOT__clkg__DOT__counter),32);
        bufp->chgIData(oldp+19,(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_TSP_op2_i),32);
        bufp->chgIData(oldp+20,(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i),32);
        bufp->chgCData(oldp+21,((3U & vlSelfRef.top__DOT__counter)),2);
        bufp->chgBit(oldp+22,((1U & vlSelfRef.top__DOT__counter)));
        bufp->chgBit(oldp+23,((1U & (vlSelfRef.top__DOT__counter 
                                     >> 1U))));
        bufp->chgBit(oldp+24,((1U & (vlSelfRef.top__DOT__counter 
                                     ^ (vlSelfRef.top__DOT__counter 
                                        >> 1U)))));
        bufp->chgIData(oldp+25,((IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT____Vcellout__s3__out_o)),32);
        bufp->chgBit(oldp+26,((1U & (((2U & vlSelfRef.top__DOT__counter)
                                       ? ((1U & vlSelfRef.top__DOT__counter)
                                           ? (vlSelfRef.top__DOT__counter 
                                              | vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i)
                                           : (vlSelfRef.top__DOT__counter 
                                              & vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i))
                                       : ((1U & vlSelfRef.top__DOT__counter)
                                           ? (vlSelfRef.top__DOT__counter 
                                              - vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i)
                                           : (vlSelfRef.top__DOT__counter 
                                              + vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i))) 
                                     >> 3U))));
        bufp->chgIData(oldp+27,(((2U & vlSelfRef.top__DOT__counter)
                                  ? ((1U & vlSelfRef.top__DOT__counter)
                                      ? (vlSelfRef.top__DOT__counter 
                                         | vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i)
                                      : (vlSelfRef.top__DOT__counter 
                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i))
                                  : ((1U & vlSelfRef.top__DOT__counter)
                                      ? (vlSelfRef.top__DOT__counter 
                                         - vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i)
                                      : (vlSelfRef.top__DOT__counter 
                                         + vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i)))),32);
        bufp->chgBit(oldp+28,((0U == (vlSelfRef.top__DOT__counter 
                                      - vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i))));
        bufp->chgIData(oldp+29,(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_reg_rst_out_o),32);
        bufp->chgQData(oldp+30,((((QData)((IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_TSP_op2_i)) 
                                  << 0x20U) | (QData)((IData)(vlSelfRef.top__DOT__counter)))),64);
        bufp->chgQData(oldp+32,(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd),64);
        bufp->chgQData(oldp+34,(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub),64);
        bufp->chgQData(oldp+36,(((QData)((IData)(vlSelfRef.top__DOT__counter)) 
                                 + VL_SHIFTL_QQI(64,64,32, (QData)((IData)(
                                                                           ((IData)(
                                                                                (vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd 
                                                                                >> 0x20U)) 
                                                                            + (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd)))), 0x1fU))),64);
        bufp->chgIData(oldp+38,(((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd 
                                          >> 0x20U)) 
                                 + (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd))),32);
        bufp->chgIData(oldp+39,(((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub 
                                          >> 0x20U)) 
                                 - (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub))),32);
        bufp->chgIData(oldp+40,((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd 
                                         >> 0x20U))),32);
        bufp->chgIData(oldp+41,((IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd)),32);
        bufp->chgBit(oldp+42,((0U == ((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd 
                                               >> 0x20U)) 
                                      - (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd)))));
        bufp->chgBit(oldp+43,((1U & (((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd 
                                               >> 0x20U)) 
                                      + (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd)) 
                                     >> 3U))));
        bufp->chgQData(oldp+44,((QData)((IData)(((IData)(
                                                         (vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub 
                                                          >> 0x20U)) 
                                                 - (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub))))),64);
        bufp->chgQData(oldp+46,(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT____Vcellout__s3__out_o),64);
        bufp->chgIData(oldp+48,((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub 
                                         >> 0x20U))),32);
        bufp->chgIData(oldp+49,((IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub)),32);
        bufp->chgBit(oldp+50,((0U == ((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub 
                                               >> 0x20U)) 
                                      - (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub)))));
        bufp->chgBit(oldp+51,((1U & (((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub 
                                               >> 0x20U)) 
                                      - (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub)) 
                                     >> 3U))));
    }
    bufp->chgBit(oldp+52,(vlSelfRef.top__DOT__clock));
}

void Vtop___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_cleanup\n"); );
    // Init
    Vtop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtop___024root*>(voidSelf);
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
}
