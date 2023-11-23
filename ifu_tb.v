// following testbench is regarding only for instruction fetch unit 
//Created by Adideb Das and Rohan Gupta
`include "ifu.v"
module ifu_tb{
};
reg clk, reset;
wire [31:0] outpt;

//instantiate the ifu from header files
IFU ifu_mod(clk,reset,outpt);
initial
begin
    $dumpfile("ifu_testbench.vcd")
    $dumpvars(0,ifu_tb); 

end

initial
$monitor($time,"clock=%b,reset=%b,instruction code=%h", clk,reset,outpt);

//intialising reset
initial 
begin
reset=1'b0;
#20
reset=1'b1;
reset=1'b0;
#20
reset=1'b1;
end

//initialising clk
initial 
begin
clk=1;
forever  #20
clk=~clk;
end


initial 500
endmodule