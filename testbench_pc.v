`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2020 21:33:14
// Design Name: 
// Module Name: testbench_pc
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


module testbench_pc;
reg clk,reset,load;
reg [15:0] data;
wire[15:0] out;
program_counter pc(clk,reset, data,load, out);
always #5 clk = ~clk;
initial
begin
reset = 0;
clk = 0;
load = 0;
data = 0;
$monitor ($time ,"clk = %b, reset = %b, load = %b, data = %b, out = %b", clk, reset, load, data, out);
#2 reset = 1; #2 reset = 0;
#48 data = 45; #1 load = 1; #5 load = 0;
end
initial
#150 $finish;
endmodule
