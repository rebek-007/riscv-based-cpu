`include "instr_memory.v"

module td ();
    reg [31:0] PC;
    reg RST;
    wire [31:0]Instruction_Code;

    // Instantiating instruction memory module
    instr_mem INST_MEM(PC,RST,Instruction_Code);

    // Setting up waveform
    initial
    begin
        $dumpfile("Instruction_Memory.vcd");
        $dumpvars(0,td);
    end

    initial
    $monitor($time, " Instruction code = %h, PC = %d", Instruction_Code, PC);

    // Setting test conditions
    initial
    begin
        RESET = 1'b0;
        #20 RESET = 1'b1;
        #20 PC = 32'd0;
        #20 PC = 32'd4;
        #20 PC = 32'd8;
        #20 PC = 32'd12;
    end

    // Terminating after 150 clock cycles
    initial
    #150 $finish;

endmodule