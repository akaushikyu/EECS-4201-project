// DO NOT rely on this file, it will be changed with a fresh one
`include "signals.h"

module top(
  input wire clock,
  input wire[31:0] address,
  input wire[31:0] data_in,
  output wire[31:0] data_out,
  input wire read_write
);
imemory imem(
  .clock(clock),
  .address(address),
  .data_in(data_in),
  .data_out(data_out),
  .read_write(read_write)
);

endmodule
