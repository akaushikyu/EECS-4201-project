reg[128 * 1 - 1:0] pattern          [0:`PATTERN_LINE_COUNT-1];
initial begin:pre_check
  integer res;
  $readmemh(`PATTERN_FILE, pattern);
end

integer tick;
logic [1:0] state = 2'd0;


always @(negedge clock) begin : tick_check
  reg res, tick_ok, correct;
  reg[4095:0] msg;
  correct = 1;
  if(reset) begin
    tick = 0;
    dut.core.`PROBE_ADDR = 32'h01000000;  
    dut.core.`PROBE_READ_EN = 1'b1;
    dut.core.`PROBE_WRITE_EN = 1'b0;
  end else begin
    if (state == 2'd0) begin
        check_mem_read1(tick, res, msg);
    end
    if (state == 2'd1) begin
        dut.core.`PROBE_DATA_IN = dut.core.`PROBE_ADDR;
    end
    if (state == 2'd2) begin
        check_mem_read2(tick, res, msg);
    end
    correct = correct & res;
    if(res == 0) begin
      $display("%0s", msg);
    end
    if(correct != 1) begin
      $fatal;
    end else  if(tick == `PATTERN_LINE_COUNT - 1) begin
      if (state == 2'd0) begin
        state = 2'd1;
        tick = 0;
        dut.core.`PROBE_ADDR = 32'h01000000;
        dut.core.`PROBE_READ_EN = 1'b0;
        dut.core.`PROBE_WRITE_EN = 1'b1;
      end
      else if (state == 2'd1) begin
        state = 2'd2;
        tick = 0;
        dut.core.`PROBE_ADDR = 32'h01000000;
        dut.core.`PROBE_READ_EN = 1'b1;
        dut.core.`PROBE_WRITE_EN = 1'b0;
      end
      else if (state == 2'd2) begin
        $display("************* CHECK PASSED **************");
        $finish;
      end
    end
    tick = tick + 1;
    dut.core.`PROBE_ADDR = dut.core.`PROBE_ADDR + 4;
    dut.core.`PROBE_DATA_IN = dut.core.`PROBE_ADDR;
  end
end
