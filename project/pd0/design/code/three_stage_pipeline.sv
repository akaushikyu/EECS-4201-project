/*
 *
 Module: three_stage_pipeline
 *
 * A 3-stage pipeline (TSP) where the first stage performs an addition of two
 * operands (op1_i, op2_i) and registers the output, and the second stage computes
 * the difference between the output from the first stage and op1_i and registers the
 * output. This means that the output (res_o) must be available two cycles after the
 * corresponding inputs have been observed on the rising clock edge
 *
 * Visually, the circuit should look like this:
 *               <---         Stage 1           --->
 *                                                        <---         Stage 2           --->
 *                                                                                               <--    Stage 3    -->
 *                                    |------------------>|                    |
 * -- op1_i -->|                    | --> |         |     |                    |-->|         |   |                    |
 *             | pipeline registers |     | ALU add | --> | pipeline registers |   | ALU sub |-->| pipeline register  | -- res_o -->
 * -- op2_i -->|                    | --> |         |     |                    |-->|         |   |                    |
 *
 * Inputs:
 * 1) 1-bit clock signal
 * 2) 1-bit wide synchronous reset
 * 3) DWIDTH-wide input op1_i
 * 4) DWIDTH-wide input op2_i
 *
 * Outputs:
 * 1) DWIDTH-wide result res_o
 */


module three_stage_pipeline #(
			                  parameter int DWIDTH = 8)(
			                                            input logic               clk,
			                                            input logic               rst,
			                                            input logic [DWIDTH-1:0]  op1_i,
			                                            input logic [DWIDTH-1:0]  op2_i,
			                                            output logic [DWIDTH-1:0] res_o
			                                            );

  /*
   * Process definitions to be filled by
   * student below...
   * [HINT] Instantiate the alu and reg_rst modules
   * and set up the necessary connections
   *
   */




  wire [DWIDTH*2-1:0]inS1;
  wire [DWIDTH*2-1:0] inAluAdd;
  wire [DWIDTH*2-1:0] inAluSub;
  
  assign inS1[DWIDTH-1:0] = op1_i; 
  assign inS1[DWIDTH*2-1:DWIDTH] = op2_i;
  
  wire [DWIDTH*2-1:0] inS2;
  wire [DWIDTH-1:0]  outAluAdd;
  wire [DWIDTH-1:0]  outAluSub;

  /* verilator lint_off PINMISSING */
  /* verilator lint_off WIDTHEXPAND */
  /*linty*/
  assign inS2[DWIDTH*2-1:0] =  op1_i + (outAluAdd << (DWIDTH-1));
  
  wire [DWIDTH-1:0]outS3;

  //input -> ins1 -> inAluAdd-> first alu -> ins2 -> inAluSub -> second alu -> outAluSub -> outs3 -> res_o
  
  reg_rst #(DWIDTH*2) s1(.clk(clk),.rst(rst),.in_i(inS1),.out_o(inAluAdd));
  reg_rst #(DWIDTH*2) s2(.clk(clk),.rst(rst),.in_i(inS2),.out_o(inAluSub)); 
  /*linty*/
  reg_rst #(DWIDTH*2) s3(.clk(clk),.rst(rst),.in_i(outAluSub),.out_o(outS3));	  
  
  
  /*linty*/
  alu #(.DWIDTH) adder(.op1_i(inAluAdd[DWIDTH*2-1:DWIDTH]),.op2_i(inAluAdd[DWIDTH-1:0]),.sel_i(0), .res_o(outAluAdd[DWIDTH-1:0]) );
  alu #(.DWIDTH) subber(.op1_i(inAluSub[DWIDTH*2-1:DWIDTH]),.op2_i(inAluSub[DWIDTH-1:0]),.sel_i(1),.res_o(outAluSub[DWIDTH-1:0]) );
  
  assign  res_o = outS3;
  
  
endmodule: three_stage_pipeline
