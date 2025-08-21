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

`ifdef PROBE_ADDR `ifdef PROBE_DATA_IN `ifdef PROBE_DATA_OUT `ifdef PROBE_READ_EN `ifdef PROBE_WRITE_EN `ifdef PROBE_F_PC `ifdef PROBE_F_INSN
  `define PROBE_PD1_OK
`endif `endif `endif `endif `endif `endif `endif

`ifdef PROBE_PD1_OK
  `else 
    $fatal (1, "[PD1] Probe signals not defined ");
`endif

  `ifdef VCD
  initial begin
    $dumpfile(`VCD_FILE);
    $dumpvars;
  end
  `endif

  `include "tracegen.v"
endmodule
