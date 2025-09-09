// The following code will not be synthesizable
`include "fields.h"
`ifdef PROBE_ADDR `ifdef PROBE_DATA_IN `ifdef PROBE_DATA_OUT `ifdef PROBE_READ_EN `ifdef PROBE_WRITE_EN
  `define PROBE_PD1_OK
`endif `endif `endif `endif `endif
`ifdef PROBE_PD1_OK
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
