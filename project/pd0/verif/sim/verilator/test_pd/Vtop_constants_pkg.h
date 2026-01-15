// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtop.h for the primary calling header

#ifndef VERILATED_VTOP_CONSTANTS_PKG_H_
#define VERILATED_VTOP_CONSTANTS_PKG_H_  // guard

#include "verilated.h"


class Vtop__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtop_constants_pkg final : public VerilatedModule {
  public:

    // ENUMS (that were declared public)
    enum aluSel_e {
        ADD = 0U,
        SUB = 1U,
        AND = 2U,
        OR = 3U
    };

    // INTERNAL VARIABLES
    Vtop__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtop_constants_pkg(Vtop__Syms* symsp, const char* v__name);
    ~Vtop_constants_pkg();
    VL_UNCOPYABLE(Vtop_constants_pkg);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
