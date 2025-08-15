reg[128 * 1 - 1:0] pattern          [0:`PATTERN_LINE_COUNT-1];
initial begin:pre_check
  integer res;
  $readmemh(`PATTERN_FILE, pattern);
end

integer tick;

always @(negedge clock) begin : tick_check
  reg res, tick_ok, correct;
  reg[4095:0] msg;
  reg[1:0] state;
  correct = 1;
  state = 2'd0;
  if(reset) begin
    tick = 0;
    dut.core.`PROBE_ADDR = 32'h01000000;  
    dut.core.`PROBE_READ_EN = 1'b1;
    dut.core.`PROBE_WRITE_EN = 1'b0;
  end else begin
    check_mem_read1(tick, res, msg);
    correct = correct & res;
    if(res == 0) begin
      $display("%0s", msg);
    end
    if(correct != 1) begin
      $fatal;
    end else  if(tick == `PATTERN_LINE_COUNT - 1) begin 
        state = 2'd1;
        tick = 0;
        $display("Check passed");
        $finish;
    end
    tick = tick + 1;
    dut.core.`PROBE_ADDR = dut.core.`PROBE_ADDR + 4;
  end
end
