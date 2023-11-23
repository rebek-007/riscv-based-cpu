// The instruction fetch unit has clock and reset pins as input  and 32-bit instruction code as output.
// Created by Adideb Das and Rohan Gupta

`include "instrmem.v"

module IFU(
    input logic clk, reset,
    output logic [31:0] instruction
);
    // Internal register to keep track of the Program Counter (PC)
    logic [31:0] PC = 32'b0;//we have kept it as 0

    // Instantiate the instruction memory module
    instrmem instr_mem(PC, reset, instruction);

    // Sequential logic for updating the Program Counter
    always_ff @(posedge clk or posedge reset)
    begin
        if (reset)  
            PC <= 0;
        else
            PC <= PC + 4;
    end

endmodule
