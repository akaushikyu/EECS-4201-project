/**
* The following code dumps the traces as patterns
*/
integer __dump_fd;
reg[128 * 1 - 1:0] pattern_dump;
initial begin
  __dump_fd = $fopen(`PATTERN_DUMP_FILE, "w");
end
always @(negedge clock) begin : pattern_dump_proc
  reg[127:0] stage;
  if(reset == 0) begin
    // F stage
    stage = 128'hxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    stage[`__F_PC] = dut.core.`PROBE_ADDR;
    stage[`__F_INSN] = dut.core.`PROBE_DATA_OUT;
    pattern_dump[`__F_RNG] = stage;
    
    $fwrite(__dump_fd, "%0x\n", pattern_dump);
  end
end
