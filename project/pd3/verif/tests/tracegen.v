// The following code will not be synthesizable
`include "fields.h"
`ifdef PROBE_F_PC `ifdef PROBE_F_INSN `ifdef PROBE_D_PC `ifdef PROBE_D_OPCODE `ifdef PROBE_D_RD `ifdef PROBE_D_FUNCT3 `ifdef PROBE_D_RS1 `ifdef PROBE_D_RS2 `ifdef PROBE_D_FUNCT7 `ifdef  PROBE_D_IMM `ifdef PROBE_R_WRITE_ENABLE `ifdef PROBE_R_WRITE_DESTINATION `ifdef PROBE_R_WRITE_DATA `ifdef PROBE_R_READ_RS1 `ifdef PROBE_R_READ_RS2 `ifdef PROBE_R_READ_RS`_DATA `ifdef PROBE_R_READ_RS2_DATA `ifdef PROBE_E_PC `ifdef PROBE_E_ALU_RES `ifdef PROBE_E_BR_TAKEN 
  `define PROBE_PD3_OK
`endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif `endif

`ifdef PROBE_PD3_OK
generate if(`GEN_TRACE == 1) begin
  /**
  * The following code helps do pre-checks of the implementation
  * with some pattern memory files
  */
  `include "trace_dump.h"
end
endgenerate
generate if(`PATTERN_DUMP==1) begin
`include "pattern_dump.h"
end
endgenerate
generate if (`PATTERN_CHECK==1) begin
  `include "pattern_check.h"
  `include "tasks.h"
end
endgenerate
`endif
