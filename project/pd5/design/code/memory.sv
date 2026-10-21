/*
 * Module: memory
 *
 * Description: Byte-addressable memory implementation. Supports both read and write operations.
 * Reads are combinational and writes are performed on the rising clock edge.
 *
 * Inputs:
 * 1) clk
 * 2) rst signal
 * 3) AWIDTH address addr_i
 * 4) DWIDTH data to write data_i
 * 5) read enable signal read_en_i
 * 6) write enable signal write_en_i
 * 7) 3-bit access size funct3_i (funct3 of the load/store; [1:0] = byte/half/word)
 *
 * Outputs:
 * 1) DWIDTH data output data_o
 * 2) data out valid signal data_vld_o
 */

module memory #(
  // parameters
  parameter int AWIDTH = 32,
  parameter int DWIDTH = 32,
  parameter logic [31:0] BASE_ADDR = 32'h01000000
) (
  // inputs
  input logic clk,
  input logic rst,
  input logic [AWIDTH-1:0] addr_i = BASE_ADDR,
  input logic [DWIDTH-1:0] data_i,
  input logic read_en_i,
  input logic write_en_i,
  input logic [2:0] funct3_i,
  // outputs
  output logic [DWIDTH-1:0] data_o,
  output logic data_vld_o
);

  logic [DWIDTH-1:0] temp_memory [0:`MEM_DEPTH];
  // Byte-addressable memory
  logic [7:0] main_memory [0:`MEM_DEPTH];  // Byte-addressable memory
  // Byte offsets wrap around the memory depth
  logic [AWIDTH-1:0] offset;
  logic [AWIDTH-1:0] address [0:3];
  assign offset = addr_i - BASE_ADDR;
  always_comb begin
    for (int i = 0; i < 4; i++)
      address[i] = (offset + i) % `MEM_DEPTH;
  end

  initial begin
    $readmemh(`MEM_PATH, temp_memory);
    // Load data from temp_memory into main_memory
    for (int i = 0; i < `LINE_COUNT; i++) begin
      main_memory[4*i]     = temp_memory[i][7:0];
      main_memory[4*i + 1] = temp_memory[i][15:8];
      main_memory[4*i + 2] = temp_memory[i][23:16];
      main_memory[4*i + 3] = temp_memory[i][31:24];
    end
    $display("IMEMORY: Loaded %0d 32-bit words from %s", `LINE_COUNT, `MEM_PATH);
  end

  // Combinational little-endian read
  always_comb begin
    if (read_en_i)
      data_o = {main_memory[address[3]], main_memory[address[2]],
                main_memory[address[1]], main_memory[address[0]]};
    else
      data_o = '0;
  end

  // Reads are combinational, so data is valid whenever a read is requested
  assign data_vld_o = read_en_i;

  // Little-endian write on the rising clock edge: SB writes 1 byte,
  // SH writes 2, SW writes 4
  always_ff @(posedge clk) begin
    if (write_en_i) begin
      main_memory[address[0]] <= data_i[7:0];
      if (funct3_i[1:0] != 2'b00)
        main_memory[address[1]] <= data_i[15:8];
      if (funct3_i[1:0] == 2'b10) begin
        main_memory[address[2]] <= data_i[23:16];
        main_memory[address[3]] <= data_i[31:24];
      end
    end
  end

endmodule : memory
