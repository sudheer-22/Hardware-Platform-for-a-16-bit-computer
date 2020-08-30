`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2020 17:49:04
// Design Name: 
// Module Name: program_counter
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


module program_counter(clk,reset, data,load, out);
input clk,reset,load;
input[15:0] data;
output reg[15:0] out;
reg[15:0] state;
always @(posedge clk or posedge reset)
begin
if(reset) state = 0;
else 
if(load==1) state = data;
else state = state+1; 
out = state;
end
endmodule
