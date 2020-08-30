`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2020 23:48:05
// Design Name: 
// Module Name: testbench_CPU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench_CPU;
reg[15:0] inM;
reg[15:0] instruction;
reg reset,clk;
wire [15:0] outM;
wire [14:0] pc;
wire [14:0] addressM;
wire writeM;
CPU cp(inM,instruction,reset,clk,outM, writeM, addressM, pc);
always #5 clk = ~clk;
initial
begin
clk = 0;
reset = 0;
inM = 16'b0;
instruction = 0;
#12 instruction = 2;//@2
#15 instruction = 16'b1110110000010000;
#15 instruction = 16'b0000000000000011;
#15 instruction = 16'b1110000010010000;
#15 instruction = 0;
#15 instruction = 16'b1110001100001000;
#15 $finish;
end
endmodule
