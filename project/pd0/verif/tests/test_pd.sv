/*
 * Module: top
 *
 * Description: Testbench that drives the probes and displays the signal changes
 */
`include "probes.svh"

module top;
 logic clock;
 logic reset;

 clockgen clkg(
     .clk(clock),
     .rst(reset)
 );

 design_wrapper dut(
     .clk(clock),
     .reset(reset)
 );

 integer counter = 0;
 integer errors = 0;


 always_ff @(posedge clock) begin
    counter <= counter + 1;
    if(counter == 100) begin
        $display("[PD0] No error encountered");
        $finish;
    end
 end

 initial begin
    $monitor(" clk = %0b", clock);
 end

 always_ff @(negedge clock) begin
    $display("###########");
 end

 logic       reset_done;
 logic       reset_neg;
 logic       reset_reg;
 integer     reset_counter;
 always_ff @(posedge clock) begin
   if(reset) reset_counter <= 0;
   else      reset_counter <= reset_counter + 1;
   // detect negedge
   reset_reg <= reset;
   if(reset_reg && !reset) reset_neg <= 1;
   // delay for some cycles
   if(reset_neg && reset_counter >= 3) begin
     reset_done <= 1;
   end
 end

 // assign_xor
 logic assign_xor_op1;
 logic assign_xor_op2;
 logic assign_xor_res;

 always_comb begin: assign_xor_input
     dut.core.`PROBE_ASSIGN_XOR_OP1 = counter[0];
     dut.core.`PROBE_ASSIGN_XOR_OP2 = counter[1];
 end

 always_ff @(posedge clock) begin: assign_xor_test
     if (reset_done) begin
        $display("[ASSIGN_XOR] op1=%b, op2=%b, res=%b", assign_xor_op1, assign_xor_op2, assign_xor_res);
     end
     assign_xor_op1 <= dut.core.`PROBE_ASSIGN_XOR_OP1;
     assign_xor_op2 <= dut.core.`PROBE_ASSIGN_XOR_OP2;
     assign_xor_res <= dut.core.`PROBE_ASSIGN_XOR_RES;
 end

`ifdef PROBE_ALU_OP1 `ifdef PROBE_ALU_OP2 `ifdef PROBE_ALU_SEL `ifdef PROBE_ALU_RES
    `define PROBE_ALU_OK
`endif  `endif `endif `endif
`ifdef PROBE_ALU_OK
 // alu
 logic [1:0] alu_sel;
 logic [31:0] alu_op1;
 logic [31:0] alu_op2;
 logic [31:0] alu_res;
 always_comb begin: alu_input
      dut.core.`ALU_SEL  = counter[1:0];
      dut.core.`ALU_OP1  = counter[31:0];
      dut.core.`ALU_OP2  = {counter[2], counter[3], counter[0], counter[1], counter[31:4]};
  end
  always_ff @(posedge clock) begin: alu_test
      if (reset_done) begin
          $display("[ALU] inp1=%b, inp2=%b, alusel=%b, res=%b", alu_op1, alu_op2, alu_sel, alu_res);
      end
      alu_sel  <= dut.core.`PROBE_ALU_SEL;
      alu_op1 <= dut.core.`PROBE_ALU_OP1;
      alu_op2 <= dut.core.`PROBE_ALU_OP2;
      alu_res  <= dut.core.`PROBE_ALU_RES;
  end
 `else
    always_ff @(posedge clock) begin: alu_test
        $fatal(1, "[ALU] Probe signals not defined");
    end
`endif


`ifdef PROBE_REG_IN `ifdef PROBE_REG_OUT
`define PROBE_REG_OK
`endif `endif
`ifdef PROBE_REG_OK
  logic [31:0] reg_rst_inp;
  logic [31:0] reg_rst_out;

  always_comb begin: reg_rst_input
      dut.core.`PROBE_REG_INP = counter[31:0];
  end
  always_ff @(posedge clock) begin: reg_rst_test
      if (reset_done) begin
        $display("[REG] inp=%b, out=%b", reg_rst_inp, reg_rst_out);
      end
      reg_rst_inp <= dut.core.`PROBE_REG_INP;
      reg_rst_out <= dut.core.`PROBE_REG_OUT;
  end
  `else
    always_ff @(posedge clock) begin: reg_rst_test
        $fatal(1, "[REG] Probe signals not defined");
    end
`endif

`ifdef PROBE_TSP_OP1 `ifdef PROBE_TSP_OP2 `ifdef PROBE_TSP_RES
`define PROBE_TSP_OK
`endif `endif `endif
`ifdef PROBE_TSP_OK

  // three_stage_pipeline
  logic [31:0] tsp_op1;
  logic [31:0] tsp_op2;
  logic [31:0] tsp_out;
  always_comb begin: tsp_input
      dut.core.`PROBE_TSP_OP1 = counter[31:0];
      dut.core.`PROBE_TSP_OP2 = {counter[1], counter[2], counter[0], counter[31:3]};
  end
  always_ff @(posedge clock) begin: tsp_test
      if (reset_done) begin
        $display("[TSP] op1=%b, op2=%b, out=%b", tsp_op1, tsp_op2, tsp_out);
      end
      tsp_op1 <= dut.core.`PROBE_TSP_OP1;
      tsp_op2 <= dut.core.`PROBE_TSP_OP2;
      tsp_out <= dut.core.`PROBE_TSP_RES;
  end
    `else
    always_ff @(posedge clock) begin: tsp_test
        $fatal(1, "[TSP] Probe signals not defined");
    end
`endif


 `ifdef VCD
  initial begin
    $dumpfile(`VCD_FILE);
    $dumpvars;
  end
  `endif
endmodule
