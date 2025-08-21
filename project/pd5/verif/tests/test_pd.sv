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

`ifdef PROBE_F_PC `ifdef PROBE_F_INSN `ifdef PROBE_D_PC `ifdef PROBE_D_OPCODE `ifdef PROBE_D_RD `ifdef PROBE_D_FUNCT3 `ifdef PROBE_D_RS1 `ifdef PROBE_D_RS2 `ifdef PROBE_D_FUNCT7 `ifdef  PROBE_D_IMM `ifdef PROBE_D_SHAMT `ifdef PROBE_R_WRITE_ENABLE `ifdef PROBE_R_WRITE_DESTINATION `ifdef PROBE_R_WRITE_DATA `ifdef PROBE_R_READ_RS1 `ifdef PROBE_R_READ_RS2 `ifdef PROBE_R_READ_RS1_DATA `ifdef PROBE_R_READ_RS2_DATA `ifdef PROBE_E_PC `ifdef PROBE_E_ALU_RES `ifdef PROBE_E_BR_TAKEN `ifdef PROBE_M_PC `ifdef PROBE_M_ADDRESS `ifdef PROBE_M_RW `ifdef PROBE_M_SIZE_ENCODED `ifdef PROBE_M_DATA `ifdef PROBE_W_PC `ifdef PROBE_W_ENABLE `ifdef PROBE_W_DESTINATION `ifdef PROBE_W_DATA
  `define PROBE_PD5_OK
`endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif

`ifdef PROBE_PD5_OK
  `else 
    $fatal (1, "[PD5] Probe signals not defined ");
`endif

  `ifdef VCD
  initial begin
    $dumpfile(`VCD_FILE);
    $dumpvars;
  end
  `endif

  `include "tracegen.v"
endmodule
