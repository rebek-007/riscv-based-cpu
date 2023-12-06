`include "instr_memory.v"

module Instruction_Fetch_Unit(
    input clock,reset,
    output [31:0] Instruction_Code
);
reg [31:0] PC = 32'b0;  // The 32-bit program counter is set to zero upon startup.

    // Setting up the block of instruction memory
    INST_MEM instr_mem(PC,reset,Instruction_Code);

    always @(posedge clock, posedge reset)
    begin
        if(reset == 1) //Clear the program counter if the reset is one.
        PC <= 0;
        else
        PC <= PC+4;   // Program counter increment on the positive clock edge
    end

endmodule