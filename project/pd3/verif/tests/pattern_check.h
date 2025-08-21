reg[128 * 4 - 1:0] pattern          [0:`PATTERN_LINE_COUNT-1];
initial begin:pre_check
  integer res;
  $readmemh(`PATTERN_FILE, pattern);
end
integer tick;
always @(negedge clock) begin : tick_check
  reg res, tick_ok, correct;
  reg[4095:0] msg;
  correct = 1;
  if(reset) begin
    tick = 0;
  end else begin
    check_F(tick, res, msg);
    correct = correct & res;
    if(res == 0) begin
      $display("%0s", msg);
    end
    check_D(tick, res, msg);
    correct = correct & res;
    if(res == 0) begin
      $display("%0s", msg);
    end
    check_R(tick, res, msg);
    correct = correct & res;
    if(res == 0) begin
      $display("%0s", msg);
    end
    check_E(tick, res, msg);
    correct = correct & res;
    if(res == 0) begin
      $display("%0s", msg);
    end
    if(correct != 1) begin
      $fatal;
    end else  if(tick == `PATTERN_LINE_COUNT - 1) begin
      $display("Check passed");
      $finish;
    end
    tick = tick + 1;
  end
end
