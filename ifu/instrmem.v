// Instruction Memory containing the addresses
// Created by Adideb Das and Rohan Gupta
module instrmem(
    input [31:0] PC,
    input reset,
    output [31:0] instruction
);
    reg [7:0] Memory [31:0]; // Byte-addressable memory with 32 locations

    // Under normal operation (reset = 0), we assign the instruction code based on PC
    assign instruction = {Memory[PC + 3], Memory[PC + 2], Memory[PC + 1], Memory[PC]};

    // Initializing memory when reset is one
    always_ff @(posedge reset)
    begin
        if (reset)
        begin
            // Setting 32-bit instructions during reset

            Memory[3]  <= 8'h00; // Address is 0x00940333
            Memory[2]  <= 8'h94;
            Memory[1]  <= 8'h03;
            Memory[0]  <= 8'h33;

            Memory[7]  <= 8'h41; // Address is 0x413903b3
            Memory[6]  <= 8'h39;
            Memory[5]  <= 8'h03;
            Memory[4]  <= 8'hb3;

            Memory[11] <= 8'h03; // Address is 0x035a02b3
            Memory[10] <= 8'h5a;
            Memory[9]  <= 8'h02;
            Memory[8]  <= 8'hb3;

            Memory[15] <= 8'h01; // Address is 0x017b4e33
            Memory[14] <= 8'h7b;
            Memory[13] <= 8'h4e;
            Memory[12] <= 8'h33;

            Memory[19] <= 8'h01; // Address is 0x019c1eb3
            Memory[18] <= 8'h9c;
            Memory[17] <= 8'h1e;
            Memory[16] <= 8'hb3;

            Memory[23] <= 8'h01; // Address is 0x01bd5f33
            Memory[22] <= 8'hbd;
            Memory[21] <= 8'h5f;
            Memory[20] <= 8'h33;

            Memory[27] <= 8'h00; // Address is 0x00d67fb3
            Memory[26] <= 8'hd6;
            Memory[25] <= 8'h7f;
            Memory[24] <= 8'hb3;

            Memory[31] <= 8'h00; // Address is 0x00f768b3
            Memory[30] <= 8'hf7;
            Memory[29] <= 8'h68;
            Memory[28] <= 8'hb3;
        end
    end
endmodule;
