// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtop.h for the primary calling header

#include "Vtop__pch.h"
#include "Vtop___024root.h"

VL_ATTR_COLD void Vtop___024root___eval_static__TOP(Vtop___024root* vlSelf);

VL_ATTR_COLD void Vtop___024root___eval_static(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_static\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vtop___024root___eval_static__TOP(vlSelf);
    vlSelfRef.__Vtrigprevexpr___TOP__top__DOT__clock__0 
        = vlSelfRef.top__DOT__clock;
}

VL_ATTR_COLD void Vtop___024root___eval_static__TOP(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_static__TOP\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.top__DOT__clkg__DOT__counter = 0U;
    vlSelfRef.top__DOT__dut__DOT__core__DOT__f_pc = 0x1000000U;
}

VL_ATTR_COLD void Vtop___024root___eval_initial__TOP(Vtop___024root* vlSelf);

VL_ATTR_COLD void Vtop___024root___eval_initial(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_initial\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vtop___024root___eval_initial__TOP(vlSelf);
}

extern const VlWide<22>/*703:0*/ Vtop__ConstPool__CONST_h34de33d2_0;
extern const VlWide<20>/*639:0*/ Vtop__ConstPool__CONST_h6a40b135_0;

VL_ATTR_COLD void Vtop___024root___eval_initial__TOP(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_initial__TOP\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*7:0*/ top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 = 0;
    CData/*7:0*/ top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 = 0;
    CData/*7:0*/ top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 = 0;
    CData/*7:0*/ top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 = 0;
    // Body
    VL_READMEM_N(true, 256, 39, 0, VL_CVT_PACK_STR_NW(22, Vtop__ConstPool__CONST_h34de33d2_0)
                 ,  &(vlSelfRef.top__DOT__genblk3__DOT__pattern)
                 , 0, ~0ULL);
    vlSelfRef.top__DOT__clock = 0U;
    vlSelfRef.top__DOT__reset = 1U;
    VL_READMEM_N(true, 32, 1048577, 0, VL_CVT_PACK_STR_NW(20, Vtop__ConstPool__CONST_h6a40b135_0)
                 ,  &(vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory)
                 , 0, ~0ULL);
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address = 0x1000000U;
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0U]);
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[0U] 
        = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0U] >> 8U));
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                     & ((IData)(1U) 
                                                                        + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
        = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [1U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [1U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [1U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [1U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [2U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [2U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [2U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [2U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [3U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [3U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [3U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [3U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [4U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [4U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [4U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [4U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [5U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [5U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [5U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [5U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [6U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [6U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [6U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [6U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [7U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [7U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [7U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [7U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [8U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [8U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [8U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [8U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [9U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [9U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [9U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [9U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0xaU]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0xaU] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0xaU] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0xaU] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0xbU]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0xbU] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0xbU] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0xbU] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0xcU]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0xcU] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0xcU] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0xcU] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0xdU]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0xdU] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0xdU] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0xdU] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0xeU]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0xeU] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0xeU] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0xeU] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0xfU]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0xfU] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0xfU] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0xfU] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x10U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x10U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x10U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x10U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x11U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x11U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x11U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x11U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x12U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x12U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x12U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x12U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x13U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x13U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x13U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x13U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x14U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x14U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x14U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x14U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x15U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x15U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x15U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x15U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x16U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x16U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x16U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x16U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x17U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x17U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x17U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x17U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x18U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x18U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x18U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x18U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x19U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x19U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x19U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x19U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x1aU]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x1aU] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x1aU] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x1aU] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x1bU]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x1bU] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x1bU] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x1bU] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x1cU]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x1cU] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x1cU] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x1cU] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x1dU]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x1dU] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x1dU] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x1dU] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x1eU]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x1eU] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x1eU] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x1eU] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x1fU]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x1fU] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x1fU] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x1fU] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x20U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x20U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x20U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x20U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x21U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x21U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x21U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x21U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x22U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x22U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x22U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x22U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x23U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x23U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x23U] >> 0x10U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x23U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x24U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x24U] >> 8U));
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x24U] >> 0x10U));
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x24U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x25U]);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x25U] >> 8U));
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x25U] >> 0x10U));
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x25U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address 
        = ((IData)(4U) + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address);
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0 
        = (0xffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x26U]);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_he2ced069__0;
    }
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x26U] >> 8U));
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(1U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(1U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1eb3ef31__0;
    }
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0 
        = (0xffU & (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
                    [0x26U] >> 0x10U));
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(2U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(2U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1ad8bbb7__0;
    }
    top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0 
        = (vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory
           [0x26U] >> 0x18U);
    if (VL_LIKELY(((0x100000U >= (0x1fffffU & ((IData)(3U) 
                                               + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address)))))) {
        vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[(0x1fffffU 
                                                                         & ((IData)(3U) 
                                                                            + vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address))] 
            = top__DOT__dut__DOT__core__DOT__imem__DOT____Vlvbound_h1b0c4cc8__0;
    }
    VL_WRITEF_NX("IMEMORY: Loaded 39 32-bit words from /Users/anirudhkaushik/REPOS/EECS-4201-project/project/pd2/verif/data/SimpleAdd.x\n",0);
    vlSelfRef.top__DOT__dut__DOT__core__DOT__imem__DOT__address = 0x1000000U;
}

VL_ATTR_COLD void Vtop___024root___eval_final(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_final\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__stl(Vtop___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vtop___024root___eval_phase__stl(Vtop___024root* vlSelf);

VL_ATTR_COLD void Vtop___024root___eval_settle(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_settle\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelfRef.__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY(((0x64U < __VstlIterCount)))) {
#ifdef VL_DEBUG
            Vtop___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("/Users/anirudhkaushik/REPOS/EECS-4201-project/project/pd2/verif/tests/test_pd2.sv", 4, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vtop___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelfRef.__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__stl(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___dump_triggers__stl\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VstlTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtop___024root___stl_sequent__TOP__0(Vtop___024root* vlSelf);

VL_ATTR_COLD void Vtop___024root___eval_stl(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_stl\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        Vtop___024root___stl_sequent__TOP__0(vlSelf);
    }
}

VL_ATTR_COLD void Vtop___024root___stl_sequent__TOP__0(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___stl_sequent__TOP__0\n"); );
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
    // Body
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

VL_ATTR_COLD void Vtop___024root___eval_triggers__stl(Vtop___024root* vlSelf);

VL_ATTR_COLD bool Vtop___024root___eval_phase__stl(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___eval_phase__stl\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vtop___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelfRef.__VstlTriggered.any();
    if (__VstlExecute) {
        Vtop___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__act(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___dump_triggers__act\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VactTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: Internal 'act' trigger - DPI export trigger\n");
    }
    if ((2ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @(negedge top.clock)\n");
    }
    if ((4ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 2 is active: @(posedge top.clock)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtop___024root___dump_triggers__nba(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___dump_triggers__nba\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VnbaTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: Internal 'nba' trigger - DPI export trigger\n");
    }
    if ((2ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @(negedge top.clock)\n");
    }
    if ((4ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 2 is active: @(posedge top.clock)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtop___024root___ctor_var_reset(Vtop___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root___ctor_var_reset\n"); );
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    const uint64_t __VscopeHash = VL_MURMUR64_HASH(vlSelf->name());
    vlSelf->top__DOT__clock = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 5844775645289313205ull);
    vlSelf->top__DOT__reset = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 4457194187413456923ull);
    vlSelf->top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__pc = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 4618406083856990165ull);
    vlSelf->top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__insn = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 17726925785358468471ull);
    VL_SCOPED_RAND_RESET_W(128, vlSelf->top__DOT__genblk3__DOT__genblk3__DOT__check_F__Vstatic__check_F_func__DOT__p, __VscopeHash, 10859367052700800039ull);
    VL_SCOPED_RAND_RESET_W(224, vlSelf->top__DOT__genblk3__DOT__genblk3__DOT__check_D__Vstatic__check_D_func__DOT__t, __VscopeHash, 12136630823209822727ull);
    for (int __Vi0 = 0; __Vi0 < 39; ++__Vi0) {
        VL_SCOPED_RAND_RESET_W(256, vlSelf->top__DOT__genblk3__DOT__pattern[__Vi0], __VscopeHash, 3437997641832917168ull);
    }
    vlSelf->top__DOT__genblk3__DOT__tick = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 5871079935339220110ull);
    vlSelf->top__DOT__genblk3__DOT__tick_check__DOT__res = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 8827944293140434767ull);
    VL_SCOPED_RAND_RESET_W(4096, vlSelf->top__DOT__genblk3__DOT__tick_check__DOT__msg, __VscopeHash, 10781803541736536694ull);
    vlSelf->top__DOT__clkg__DOT__counter = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 7673510899991897937ull);
    vlSelf->top__DOT__dut__DOT__core__DOT__f_pc = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 12048714892135156921ull);
    vlSelf->top__DOT__dut__DOT__core__DOT__f_insn = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 7374491624312029756ull);
    vlSelf->top__DOT__dut__DOT__core__DOT__d_imm = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 5636778193619115238ull);
    vlSelf->top__DOT__dut__DOT__core__DOT__f1__DOT__pc = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 6832322996400458637ull);
    for (int __Vi0 = 0; __Vi0 < 1048577; ++__Vi0) {
        vlSelf->top__DOT__dut__DOT__core__DOT__imem__DOT__temp_memory[__Vi0] = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 2215682526168741823ull);
    }
    for (int __Vi0 = 0; __Vi0 < 1048577; ++__Vi0) {
        vlSelf->top__DOT__dut__DOT__core__DOT__imem__DOT__main_memory[__Vi0] = VL_SCOPED_RAND_RESET_I(8, __VscopeHash, 338303319469376319ull);
    }
    vlSelf->top__DOT__dut__DOT__core__DOT__imem__DOT__address = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 9056070936785763785ull);
    vlSelf->__Vdpi_export_trigger = 0;
    vlSelf->__VdfgRegularize_h0dff6736_0_2 = VL_SCOPED_RAND_RESET_I(8, __VscopeHash, 7524656713882060206ull);
    vlSelf->__VdfgRegularize_h0dff6736_0_6 = VL_SCOPED_RAND_RESET_I(8, __VscopeHash, 15822730010741477832ull);
    vlSelf->__VdfgRegularize_h0dff6736_0_17 = VL_SCOPED_RAND_RESET_I(16, __VscopeHash, 14351382132402542041ull);
    vlSelf->__VdfgRegularize_h0dff6736_0_18 = VL_SCOPED_RAND_RESET_I(24, __VscopeHash, 16261903972412085612ull);
    vlSelf->__Vtrigprevexpr___TOP__top__DOT__clock__0 = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 14234138457933551086ull);
}
