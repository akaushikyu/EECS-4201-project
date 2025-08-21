// DO NOT rely on this file, it will be changed with a fresh one
`include "probes.svh"

module top;
  wire clock, reset;
  clockgen clkg(
    .clk(clock),
    .rst(reset)
  );
  design_wrapper dut(
    .clk(clock),
    .reset(reset)
  );

`ifdef PROBE_F_PC `ifdef PROBE_F_INSN `ifdef PROBE_D_PC `ifdef PROBE_D_OPCODE `ifdef PROBE_D_RD `ifdef PROBE_D_FUNCT3 `ifdef PROBE_D_RS1 `ifdef PROBE_D_RS2 `ifdef PROBE_D_FUNCT7 `ifdef  PROBE_D_IMM `ifdef PROBE_D_SHAMT
  `define PROBE_PD2_OK
`endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif

`ifdef PROBE_PD2_OK
  `else 
    $fatal (1, "[PD2] Probe signals not defined ");
`endif

  `ifdef VCD
  initial begin
    $dumpfile(`VCD_FILE);
    $dumpvars;
  end
  `endif

  `include "tracegen.v"
endmodule
