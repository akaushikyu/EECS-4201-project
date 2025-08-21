`include "probes.svh"

// Wrapper for our design defined in code/
// The external signals exposed to the outside world are
// clock and reset
module design_wrapper (
    input logic clk,
    input logic reset
 );
 // instantiate
 `TOP_MODULE #(.DWIDTH(32)) core (
     .clk(clk),
     .reset(reset)
  );
endmodule : design_wrapper
