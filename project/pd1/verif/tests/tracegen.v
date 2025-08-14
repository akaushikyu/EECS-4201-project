// The following code will not be synthesizable
`include "fields.h"
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
  `include "tasks.h"
  `include "pattern_check.h"
end
endgenerate
