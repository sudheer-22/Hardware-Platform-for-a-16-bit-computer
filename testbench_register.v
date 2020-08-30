`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2020 23:14:17
// Design Name: 
// Module Name: testbench_register
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


module testbench_register;
reg[15:0] in;
reg clk, load;
wire[15:0] out;
Register A(in, clk, load, out); 
always #5 clk = ~clk;
initial
begin
in = 58;
clk = 0;
load = 0;
#10 load = 1;
#2 in = 85;
#5 load = 0;
#10 load = 1;
#10 $finish;
end
endmodule
