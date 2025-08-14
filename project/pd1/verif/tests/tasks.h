task check_mem_read1;
  input integer idx;
  output reg res;
  output reg[4095:0] msg;
  begin : check_mem_read1_func
    reg[31:0]       addr;
    reg[31:0]       data;
 
    reg[127:0] p;
    p = pattern[idx][`__F_RNG];
    
    addr              = p[`__F_PC];
    data            = p[`__F_INSN];
    if(
      (^addr !== 1'bx && addr !== dut.core.`PROBE_ADDR) ||
      (^data !== 1'bx && data !== dut.core.`PROBE_DATA_OUT) 
    ) begin
      $sformat(msg, "[MEM READ 1] stage mismatch: expected ADDR=%x, DATA=%x, got ADDR=%x, DATA=%x", 
        addr, data,
        dut.core.`PROBE_ADDR, dut.core.`PROBE_DATA_OUT);
      res = 0;
    end else begin
      res = 1;
    end
  end
endtask

task check_mem_read2;
  input integer idx;
  output reg res;
  output reg[4095:0] msg;
  begin : check_mem_read2_func
    reg[31:0]       addr;
    reg[31:0]       data;
 
    reg[127:0] p;
    p = pattern[idx][`__F_RNG];
    
    addr              = p[`__F_PC];
    data            = p[`__F_INSN];
    if(
      (^addr !== 1'bx && addr !== dut.core.`PROBE_ADDR) ||
      (^data !== 1'bx && addr !== dut.core.`PROBE_DATA_OUT) 
    ) begin
      $sformat(msg, "[MEM READ 2] stage mismatch: expected ADDR=%x, DATA=%x, got ADDR=%x, DATA=%x", 
        addr, addr,
        dut.core.`PROBE_ADDR, dut.core.`PROBE_DATA_OUT);
      res = 0;
    end else begin
      res = 1;
    end
  end
endtask
