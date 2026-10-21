// Independent retirement monitor. Shadow valid/instruction bits distinguish
// real instructions from stalls, reset slots and wrong-path instructions.
module benchmark;
    bit clk = 0;
    bit reset = 1;
    always #5 clk = ~clk;
    pd5 core (.clk(clk), .reset(reset));

    string image;
    integer words, max_cycles, cycles = 0;
    logic [31:0] program_words [0:262143];
    bit fv = 0, ev = 0, mv = 0, wv = 0;
    logic [31:0] ei, mi, wi;
    logic [31:0] store_addr, store_data;
    bit store_enable;

    initial begin
        if (!$value$plusargs("image=%s", image) ||
            !$value$plusargs("words=%d", words)) $fatal(1, "Missing image/words");
        if (!$value$plusargs("cycles=%d", max_cycles)) max_cycles = 200000;
        // Let the memory modules' own initial blocks finish first.
        #1;
        $readmemh(image, program_words, 0, words-1);
        for (int i = 0; i < words; i++) begin
            for (int b = 0; b < 4; b++) begin
                core.imem_0.main_memory[4*i+b] = program_words[i][8*b +: 8];
                core.dmem_0.main_memory[4*i+b] = program_words[i][8*b +: 8];
            end
        end
        repeat (5) @(negedge clk);
        reset = 0;
    end

    always @(posedge clk) begin
        if (reset) begin
            fv <= 0; ev <= 0; mv <= 0; wv <= 0;
        end else begin
            cycles <= cycles + 1;
            if (cycles >= max_cycles) $fatal(1, "Benchmark timeout");
            if (wv) begin
                $display("RET %08x %08x %0d %0d %08x %0d %08x %08x",
                    core.w_pc, wi, core.w_enable, core.w_destination,
                    core.w_data, store_enable, store_addr, store_data);
                // A full C benchmark returns from main to the reset value of ra.
                // Instruction benchmarks terminate with ECALL.
                if (wi == 32'h00000073 ||
                    (wi == 32'h00008067 && core.mw_q.alu_res == 0)) begin
                    $display("DONE %0d %08x %08x", cycles,
                        core.register_file_0.registers[3],
                        core.register_file_0.registers[10]);
                    $finish;
                end
            end
            if (core.redirect) fv <= 0;
            else if (!core.stall) fv <= 1;
            ev <= fv && !core.stall && !core.redirect;
            ei <= core.fd_q.insn;
            mv <= ev; mi <= ei;
            wv <= mv; wi <= mi;
            store_enable <= core.em_q.memwren;
            store_addr <= core.m_address;
            store_data <= core.m_data;
        end
    end
endmodule
