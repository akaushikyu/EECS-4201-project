// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtop__Syms.h"


VL_ATTR_COLD void Vtop___024root__trace_init_sub__TOP__0(Vtop___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_init_sub__TOP__0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->pushPrefix("top", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+53,0,"clock",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"reset",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+2,0,"counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+54,0,"errors",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBit(c+3,0,"reset_done",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+4,0,"reset_neg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+5,0,"reset_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+6,0,"reset_counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBit(c+7,0,"assign_xor_op1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"assign_xor_op2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"assign_xor_res",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+10,0,"alu_sel",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+11,0,"alu_op1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+12,0,"alu_op2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+13,0,"alu_res",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+14,0,"reg_rst_inp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+15,0,"reg_rst_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+16,0,"tsp_op1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+17,0,"tsp_op2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+18,0,"tsp_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->pushPrefix("clkg", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+53,0,"clk",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+19,0,"counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("dut", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+53,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("core", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+55,0,"DWIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->declBit(c+53,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+56,0,"assign_T",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+2,0,"assign_TSP_op1_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+20,0,"assign_TSP_op2_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+2,0,"assign_alu_op1_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+21,0,"assign_alu_op2_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+22,0,"assign_alu_sel_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+2,0,"assign_reg_rst_in_i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+23,0,"assign_xor_op1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+24,0,"assign_xor_op2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+25,0,"assign_xor_res",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+26,0,"assign_TSP_res_o",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+27,0,"assign_alu_neg_o",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+28,0,"assign_alu_res_o",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+29,0,"assign_alu_zero_o",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+30,0,"assign_reg_rst_out_o",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->pushPrefix("assign_alu", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+55,0,"DWIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->declBus(c+22,0,"sel_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+2,0,"op1_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+21,0,"op2_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+28,0,"res_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+29,0,"zero_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+27,0,"neg_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("assign_reg", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+55,0,"DWIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->declBit(c+53,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+2,0,"in_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+30,0,"out_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("assign_three_stage_pipeline", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+55,0,"DWIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->declBit(c+53,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+2,0,"op1_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+20,0,"op2_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+26,0,"res_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declQuad(c+31,0,"inS1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->declQuad(c+33,0,"inAluAdd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->declQuad(c+35,0,"inAluSub",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->declQuad(c+37,0,"inS2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->declBus(c+39,0,"outAluAdd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+40,0,"outAluSub",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+26,0,"outS3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->pushPrefix("adder", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+55,0,"DWIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->declBus(c+57,0,"sel_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+41,0,"op1_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+42,0,"op2_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+39,0,"res_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+43,0,"zero_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+44,0,"neg_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("s1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+58,0,"DWIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->declBit(c+53,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declQuad(c+31,0,"in_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->declQuad(c+33,0,"out_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->popPrefix();
    tracep->pushPrefix("s2", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+58,0,"DWIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->declBit(c+53,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declQuad(c+37,0,"in_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->declQuad(c+35,0,"out_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->popPrefix();
    tracep->pushPrefix("s3", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+58,0,"DWIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->declBit(c+53,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declQuad(c+45,0,"in_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->declQuad(c+47,0,"out_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->popPrefix();
    tracep->pushPrefix("subber", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+55,0,"DWIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->declBus(c+59,0,"sel_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+49,0,"op1_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+50,0,"op2_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+40,0,"res_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+51,0,"zero_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+52,0,"neg_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("assign_xor_0", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+23,0,"op1_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+24,0,"op2_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+25,0,"res_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
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
    tracep->addConstCb(&Vtop___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&Vtop___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&Vtop___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&Vtop___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vtop___024root__trace_const_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vtop___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_const_0\n"); );
    // Init
    Vtop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtop___024root*>(voidSelf);
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vtop___024root__trace_const_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vtop___024root__trace_const_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_const_0_sub_0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullIData(oldp+54,(0U),32);
    bufp->fullIData(oldp+55,(0x20U),32);
    bufp->fullIData(oldp+56,(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_T),32);
    bufp->fullCData(oldp+57,(0U),2);
    bufp->fullIData(oldp+58,(0x40U),32);
    bufp->fullCData(oldp+59,(1U),2);
}

VL_ATTR_COLD void Vtop___024root__trace_full_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vtop___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_full_0\n"); );
    // Init
    Vtop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtop___024root*>(voidSelf);
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vtop___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vtop___024root__trace_full_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_full_0_sub_0\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullBit(oldp+1,(vlSelfRef.top__DOT__reset));
    bufp->fullIData(oldp+2,(vlSelfRef.top__DOT__counter),32);
    bufp->fullBit(oldp+3,(vlSelfRef.top__DOT__reset_done));
    bufp->fullBit(oldp+4,(vlSelfRef.top__DOT__reset_neg));
    bufp->fullBit(oldp+5,(vlSelfRef.top__DOT__reset_reg));
    bufp->fullIData(oldp+6,(vlSelfRef.top__DOT__reset_counter),32);
    bufp->fullBit(oldp+7,(vlSelfRef.top__DOT__assign_xor_op1));
    bufp->fullBit(oldp+8,(vlSelfRef.top__DOT__assign_xor_op2));
    bufp->fullBit(oldp+9,(vlSelfRef.top__DOT__assign_xor_res));
    bufp->fullCData(oldp+10,(vlSelfRef.top__DOT__alu_sel),2);
    bufp->fullIData(oldp+11,(vlSelfRef.top__DOT__alu_op1),32);
    bufp->fullIData(oldp+12,(vlSelfRef.top__DOT__alu_op2),32);
    bufp->fullIData(oldp+13,(vlSelfRef.top__DOT__alu_res),32);
    bufp->fullIData(oldp+14,(vlSelfRef.top__DOT__reg_rst_inp),32);
    bufp->fullIData(oldp+15,(vlSelfRef.top__DOT__reg_rst_out),32);
    bufp->fullIData(oldp+16,(vlSelfRef.top__DOT__tsp_op1),32);
    bufp->fullIData(oldp+17,(vlSelfRef.top__DOT__tsp_op2),32);
    bufp->fullIData(oldp+18,(vlSelfRef.top__DOT__tsp_out),32);
    bufp->fullIData(oldp+19,(vlSelfRef.top__DOT__clkg__DOT__counter),32);
    bufp->fullIData(oldp+20,(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_TSP_op2_i),32);
    bufp->fullIData(oldp+21,(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i),32);
    bufp->fullCData(oldp+22,((3U & vlSelfRef.top__DOT__counter)),2);
    bufp->fullBit(oldp+23,((1U & vlSelfRef.top__DOT__counter)));
    bufp->fullBit(oldp+24,((1U & (vlSelfRef.top__DOT__counter 
                                  >> 1U))));
    bufp->fullBit(oldp+25,((1U & (vlSelfRef.top__DOT__counter 
                                  ^ (vlSelfRef.top__DOT__counter 
                                     >> 1U)))));
    bufp->fullIData(oldp+26,((IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT____Vcellout__s3__out_o)),32);
    bufp->fullBit(oldp+27,((1U & (((2U & vlSelfRef.top__DOT__counter)
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
    bufp->fullIData(oldp+28,(((2U & vlSelfRef.top__DOT__counter)
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
    bufp->fullBit(oldp+29,((0U == (vlSelfRef.top__DOT__counter 
                                   - vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_alu_op2_i))));
    bufp->fullIData(oldp+30,(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_reg_rst_out_o),32);
    bufp->fullQData(oldp+31,((((QData)((IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_TSP_op2_i)) 
                               << 0x20U) | (QData)((IData)(vlSelfRef.top__DOT__counter)))),64);
    bufp->fullQData(oldp+33,(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd),64);
    bufp->fullQData(oldp+35,(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub),64);
    bufp->fullQData(oldp+37,(((QData)((IData)(vlSelfRef.top__DOT__counter)) 
                              + VL_SHIFTL_QQI(64,64,32, (QData)((IData)(
                                                                        ((IData)(
                                                                                (vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd 
                                                                                >> 0x20U)) 
                                                                         + (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd)))), 0x1fU))),64);
    bufp->fullIData(oldp+39,(((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd 
                                       >> 0x20U)) + (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd))),32);
    bufp->fullIData(oldp+40,(((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub 
                                       >> 0x20U)) - (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub))),32);
    bufp->fullIData(oldp+41,((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd 
                                      >> 0x20U))),32);
    bufp->fullIData(oldp+42,((IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd)),32);
    bufp->fullBit(oldp+43,((0U == ((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd 
                                            >> 0x20U)) 
                                   - (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd)))));
    bufp->fullBit(oldp+44,((1U & (((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd 
                                            >> 0x20U)) 
                                   + (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluAdd)) 
                                  >> 3U))));
    bufp->fullQData(oldp+45,((QData)((IData)(((IData)(
                                                      (vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub 
                                                       >> 0x20U)) 
                                              - (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub))))),64);
    bufp->fullQData(oldp+47,(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT____Vcellout__s3__out_o),64);
    bufp->fullIData(oldp+49,((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub 
                                      >> 0x20U))),32);
    bufp->fullIData(oldp+50,((IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub)),32);
    bufp->fullBit(oldp+51,((0U == ((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub 
                                            >> 0x20U)) 
                                   - (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub)))));
    bufp->fullBit(oldp+52,((1U & (((IData)((vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub 
                                            >> 0x20U)) 
                                   - (IData)(vlSelfRef.top__DOT__dut__DOT__core__DOT__assign_three_stage_pipeline__DOT__inAluSub)) 
                                  >> 3U))));
    bufp->fullBit(oldp+53,(vlSelfRef.top__DOT__clock));
}
