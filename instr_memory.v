module instr_mem(
    input [31:0] PC,
    input reset,
    output [31:0] Instruction_Code
);
    reg [7:0] Memory [31:0]; // 32-location byte addressable memory

    // In the case of regular operation (reset = 0), we designate the initial code according to PC
    assign Instruction_Code = {Memory[PC+3],Memory[PC+2],Memory[PC+1],Memory[PC]};

     // Establishing memory when a reset is applicable
    always @(reset)
    begin
        if(reset == 1)
        begin
            // Setting 32-bit instruction: add t1, s0,s1 => 0xb8989a40 
            Memory[3] = 8'hb8;
            Memory[2] = 8'h98;
            Memory[1] = 8'h9a;
            Memory[0] = 8'h40;
            // Setting 32-bit instruction: sub t2, s2, s3 => 0x77f7daa2
            Memory[7] = 8'h77;
            Memory[6] = 8'hf7;
            Memory[5] = 8'hda;
            Memory[4] = 8'ha2;
            // Setting 32-bit instruction: mul t0, s4, s5 => 0x7eae37e1
            Memory[11] = 8'h7e;
            Memory[10] = 8'hae;
            Memory[9] = 8'h37;
            Memory[8] = 8'he1;
            // Setting 32-bit instruction: xor t3, s6, s7 => 0xbad9ab6f
            Memory[15] = 8'hba;
            Memory[14] = 8'hd9;
            Memory[13] = 8'hab;
            Memory[12] = 8'h6f;
            // Setting 32-bit instruction: sll t4, s8, s9 => 0xc4be365a
            Memory[19] = 8'hc4;
            Memory[18] = 8'hbe;
            Memory[17] = 8'h36;
            Memory[16] = 8'h5a;
            // Setting 32-bit instruction: srl t5, s10, s11 => 0x4c382029 
            Memory[23] = 8'h4c;
            Memory[22] = 8'h38;
            Memory[21] = 8'h20;
            Memory[20] = 8'h29;
            // Setting 32-bit instruction: and t6, a2, a3 => 0xd2a441f1
            Memory[27] = 8'hd2;
            Memory[26] = 8'ha4;
            Memory[25] = 8'h41;
            Memory[24] = 8'hf1;
            // Setting 32-bit instruction: or a7, a4, a5 => 0x43ac6712
            Memory[31] = 8'h43;
            Memory[30] = 8'hac;
            Memory[29] = 8'h67;
            Memory[28] = 8'h12;
        end
    end

endmodule