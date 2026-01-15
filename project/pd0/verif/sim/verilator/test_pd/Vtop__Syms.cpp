// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vtop__pch.h"
#include "Vtop.h"
#include "Vtop___024root.h"
#include "Vtop___024unit.h"
#include "Vtop_constants_pkg.h"

void Vtop___024root____Vdpiexp_top__DOT__clkg__DOT__toggleClock_TOP(Vtop__Syms* __restrict vlSymsp);

// FUNCTIONS
Vtop__Syms::~Vtop__Syms()
{
}

Vtop__Syms::Vtop__Syms(VerilatedContext* contextp, const char* namep, Vtop* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    // Setup module instances
    , TOP{this, namep}
    , TOP____024unit{this, Verilated::catName(namep, "$unit")}
{
        // Check resources
        Verilated::stackCheck(35);
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-12);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    TOP.__PVT____024unit = &TOP____024unit;
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(true);
    TOP____024unit.__Vconfigure(true);
    // Setup scopes
    __Vscope_top.configure(this, name(), "top", "top", "<null>", -12, VerilatedScope::SCOPE_OTHER);
    __Vscope_top__alu_test.configure(this, name(), "top.alu_test", "alu_test", "<null>", -12, VerilatedScope::SCOPE_OTHER);
    __Vscope_top__clkg.configure(this, name(), "top.clkg", "clkg", "<null>", -12, VerilatedScope::SCOPE_OTHER);
    __Vscope_top__reg_rst_test.configure(this, name(), "top.reg_rst_test", "reg_rst_test", "<null>", -12, VerilatedScope::SCOPE_OTHER);
    __Vscope_top__tsp_test.configure(this, name(), "top.tsp_test", "tsp_test", "<null>", -12, VerilatedScope::SCOPE_OTHER);
    // Setup export functions
    for (int __Vfinal = 0; __Vfinal < 2; ++__Vfinal) {
        __Vscope_top__clkg.exportInsert(__Vfinal, "toggleClock", (void*)(&Vtop___024root____Vdpiexp_top__DOT__clkg__DOT__toggleClock_TOP));
    }
}
