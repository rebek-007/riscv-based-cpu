`include "Instruction_Fetch_Unit.v"
module td(

);
    reg CLOCK, RESET;
    wire [31:0] OUTPUT;

    // Initializing IFU module
    Instruction_Fetch_Unit IFU(CLOCK,RESET,OUTPUT);

    // Setting up waveform
    initial
    begin
        $dumpfile("Instruction_Fetch_Unit_Waveform.vcd");
        $dumpvars(0,td);
    end

    // Monitoring the changes in values
    initial
    $monitor($time, "CLOCK = %b, RESET = %b, Instruction Code = %h", CLOCK,RESET,OUTPUT);

    // Initializing reset
    initial
    begin
        RESET = 1'b0;
        #20 RESET = 1'b1;
        #200 RESET = 1'b0;
        #100 RESET = 1'b1;
    end

    // Initializing clock
    initial
    begin
        CLOCK = 1;
        forever #20 CLOCK = ~CLOCK;
    end

    initial
    #400 $finish;

endmodule