`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2020 21:57:01
// Design Name: 
// Module Name: Mux16=
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


module Mux16(X,Y,sel, out);
input[15:0] X,Y;
input sel;
output reg[15:0] out;
always @(*)
begin
if(sel) out = Y;
else
begin
 if(!sel) out = X;
end
end
endmodule
