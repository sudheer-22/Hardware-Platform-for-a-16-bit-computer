`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2020 23:04:37
// Design Name: 
// Module Name: Register
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


module Register(in, clk, load, out);
input[15:0] in;
input clk, load;
output reg[15:0] out;
reg[15:0] state; 
always @(posedge clk)
begin
if(load == 1) state = in;
out = state;
end
endmodule
