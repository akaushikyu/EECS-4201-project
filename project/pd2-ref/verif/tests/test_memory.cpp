// Verilator testbench
#include <iostream>
#include <fstream>
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

void test_read() {
  int insns[10] = {
    0x00000093,
    0x00000113,
    0x00208f33,
    0x00000e93,
    0x00200193,
    0x4ddf1663,
    0x00100093,
    0x00100113,
    0x00208f33,
    0x00200e93,
  };
  for(int i = 0; i < 10; i++) {
    top->address = 0x01000000 + i * 4;
    top->read_write = 0;
    top->data_in = 0;
    top->eval();
    assertm(top->data_out == insns[i], "read at " << std::hex << top->address << " should get " << insns[i] << ", got " << top->data_out);
  }
}

void test_write() {
  // writing 1 to 32-bit word 0x01000000
  // writing 2 to 32-bit word 0x01000001
  // writing 3 to 32-bit word 0x01000002
  // writing 4 to 32-bit word 0x01000003
  // ...
  for(int i = 0; i < 16; i++) {
    top->address = 0x01000000 + i;
    top->read_write = 1;
    top->data_in = i + 1;
    nextCycle();
    std::cout << "Writing " << top->data_in << " at " << std::hex << top->address << std::endl;
  }

  top->address = 0x01000000;
  top->read_write = 0;
  top->eval();
  assertm(top->data_out == 0x04030201, "read at " << std::hex << top->address << " should get " << 0x04030201 << ", got " << top->data_out);

  top->address = 0x01000001;
  top->read_write = 0;
  top->eval();
  assertm(top->data_out == 0x05040302, "read at " << std::hex << top->address << " should get " << 0x05040302 << ", got " << top->data_out);

  top->address = 0x01000002;
  top->read_write = 0;
  top->eval();
  assertm(top->data_out == 0x06050403, "read at " << std::hex << top->address << " should get " << 0x06050403 << ", got " << top->data_out);

  top->address = 0x01000003;
  top->read_write = 0;
  top->eval();
  assertm(top->data_out == 0x07060504, "read at " << std::hex << top->address << " should get " << 0x07060504 << ", got " << top->data_out);

  top->address = 0x0100000F;
  top->read_write = 0;
  top->eval();
  assertm(top->data_out == 0x00000010, "read at " << std::hex << top->address << " should get " << 0x00000010 << ", got " << top->data_out);
}

int main(int argc, char** argv) {
  Verilated::commandArgs(argc, argv);   // Remember args
  top = new Vtop;

  std::string mem_path = TOSTRING(MEM_PATH);
  assertm(mem_path.find("rv32ui-p-add.x") != std::string::npos, 
      "test_imemory must run with rv32ui-p-add.x");


  // set the scope correctly so that we can access the clock in C testbench
  svSetScope(svGetScopeFromName("TOP.top.clkg"));
  test_read();
  test_write();

  std::cout << "Test passed" << std::endl;

  top->final();
  delete top;
  return 0;
}
