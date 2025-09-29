// NOTE: do not rely on changes to this file, it will be replaced with a fresh
// one.
`ifndef TIMEOUT
  `define TIMEOUT 32'd100000
`endif

`ifndef RESET_CYCLES
  `define RESET_CYCLES 5
`endif

module clockgen(
  output logic clk,
  output logic rst
);

  // common logic for iverilog and verilator
  integer counter = 0;
  always_ff @(posedge clk) begin
    counter <= counter + 1;
    if(counter < `RESET_CYCLES) begin
      rst <= 1;
    end else begin
      rst <= 0;
    end
    if(counter == `TIMEOUT) begin
      $finish;
    end
  end

  // logic only for verilator to set clock
  `ifdef VERILATOR
    initial begin
      clk = 0;
      rst = 1;
    end
    export "DPI-C" function toggleClock;
    function void toggleClock;
      begin
        clk = clk ^ 1;
      end
    endfunction
  `else
    initial begin
      clk = 0;
      forever #1 clk = !clk;
    end
  `endif

endmodule
