task check_F;
  input integer idx;
  output reg res;
  output reg[4095:0] msg;
  begin : check_F_func
    reg[31:0]       pc;
    reg[31:0]       insn;
 
    reg[127:0] p;
    p = pattern[idx][`__F_RNG];
    
    pc              = p[`__F_PC];
    insn            = p[`__F_INSN];
    if(
      (^pc !== 1'bx && pc !== dut.core.`PROBE_F_PC) ||
      (^insn !== 1'bx && insn !== dut.core.`PROBE_F_INSN) 
    ) begin
      $sformat(msg, "F stage mismatch: expected PC=%x, INSN=%x, got PC=%x, INSN=%x", 
        pc, insn,
        dut.core.`PROBE_F_PC, dut.core.`PROBE_F_INSN);
      res = 0;
    end else begin
      res = 1;
    end
  end
endtask

task check_D;
  input integer idx;
  output reg res;
  output reg[4095:0] msg;
  begin : check_D_func
    reg[31:0]       pc;
    reg[6:0]        opcode;
    reg[4:0]        rd;
    reg[4:0]        rs1;
    reg[4:0]        rs2;
    reg[2:0]        funct3;
    reg[6:0]        funct7;
    reg[31:0]       imm;
    reg[4:0]        shamt;
 
    reg[127:0] p;
    reg[223:0] t;
    p = pattern[idx][`__D_RNG];
    
    pc              = p[`__D_PC];
    opcode          = p[`__D_OPCODE];
    rd              = p[`__D_RD];
    rs1             = p[`__D_RS1];
    rs2             = p[`__D_RS2];
    funct3          = p[`__D_FUNCT3];
    funct7          = p[`__D_FUNCT7];
    imm             = p[`__D_IMM];

    if(
      (^pc !== 1'bx && pc !== dut.core.`PROBE_D_PC) ||
      (^opcode !== 1'bx && opcode !== dut.core.`PROBE_D_OPCODE) ||
      (^rd !== 1'bx && rd !== dut.core.`PROBE_D_RD) ||
      (^rs1 !== 1'bx && rs1 !== dut.core.`PROBE_D_RS1) ||
      (^rs2 !== 1'bx && rs2 !== dut.core.`PROBE_D_RS2) ||
      (^funct3 !== 1'bx && funct3 !== dut.core.`PROBE_D_FUNCT3) ||
      (^funct7 !== 1'bx && funct7 !== dut.core.`PROBE_D_FUNCT7) ||
      (^imm !== 1'bx && imm !== dut.core.`PROBE_D_IMM)
    ) begin
      $sformat(msg, "D stage mismatch: expected PC=%x, OPCODE=%x, RD=%x, RS1=%x, RS2=%x, FUNCT3=%x, FUNCT7=%x, IMM=%x, got PC=%x, OPCODE=%x, RD=%x, RS1=%x, RS2=%x, FUNCT3=%x, FUNCT7=%x, IMM=%x ", 
        pc, opcode, rd, rs1, rs2, funct3, funct7, imm,
        dut.core.`PROBE_D_PC, dut.core.`PROBE_D_OPCODE, dut.core.`PROBE_D_RD, dut.core.`PROBE_D_RS1, dut.core.`PROBE_D_RS2, dut.core.`PROBE_D_FUNCT3, dut.core.`PROBE_D_FUNCT7, dut.core.`PROBE_D_IMM);
      res = 0;
    end else begin
      res = 1;
    end
  end
endtask
