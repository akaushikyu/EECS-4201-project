// Verilator testbench
#include <iostream>
#include <verilated.h>
#include "Vtop.h"
#include "svdpi.h"
#include "Vtop__Dpi.h"
#define STRINGIFY(x) #x
#define TOSTRING(x) STRINGIFY(x)
#define assertm(exp, msg) { \
  if(!(exp)) {                \
    std::cerr << "[ERROR] " << msg << std::endl; \
    assert(exp);                \
  }                           \
}

extern void toggleClock();

Vtop *top;
vluint64_t main_time;
double sc_time_stamp () {     // Called by $time in Verilog
  return main_time;           // converts to double, to match
}

void nextCycle() {
  top->clock ^= 1;
  top->eval();

  top->clock ^= 1;
  top->eval();
}

void test_reset_and_initial_pc() {
  top->reset = 1;
  for(int i = 0; i < 5; i++) nextCycle();
  assertm(top->F_PC == 0x01000000, "the first PC after reset should be 32'h01000000, got " << std::hex << top->F_PC);
  assertm(top->F_INSN == 0x00000093, "the first instruction should be 32'h00000093, got " << std::hex << top->F_INSN);

  top->reset = 0;
  nextCycle();
  assertm(top->F_PC == 0x01000004, "PC should increment by 4, expect 32'h01000004, got " << std::hex << top->F_PC);
  assertm(top->F_INSN == 0x00000113, "the second instruction should be 32'h00000113, got " << std::hex << top->F_INSN);
}

int main(int argc, char** argv) {
  Verilated::commandArgs(argc, argv);   // Remember args
  top = new Vtop;

  std::string mem_path = TOSTRING(MEM_PATH);
  assertm(mem_path.find("rv32ui-p-add.x") != std::string::npos, 
      "test_pre_check must run with rv32ui-p-add.x");


  // set the scope correctly so that we can access the clock in C testbench
  svSetScope(svGetScopeFromName("TOP.top.clkg"));
  top->reset = 1;
  test_reset_and_initial_pc();

  std::cout << "Test passed" << std::endl;

  top->final();
  delete top;
  return 0;
}
