/** Trace format per cycle
* [F] pc_address content
* [D] pc_address opcode rd rs1 rs2 funct3 funct7 imm shamt
* [R] rs1 rs2 rd data_rs1 data_rs2 we
* [E] pc_address alu_result branch_taken
* [M] pc_address memory_address read_write memory_size memory_data
* [W] pc_address write rd datard
*/
integer __trace_fd;
initial begin
  __trace_fd = $fopen(`TRACE_FILE, "w");
end
always @(negedge clock) begin
  if(reset == 0) begin
  // F stage trace dump
  $fwrite(__trace_fd, "[F] %x %x\n",
    dut.core.`PROBE_F_PC,
    dut.core.`PROBE_F_INSN);
  $fflush(__trace_fd);
  
  end
end
