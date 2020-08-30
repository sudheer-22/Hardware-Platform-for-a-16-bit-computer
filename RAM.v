`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2020 16:13:29
// Design Name: 
// Module Name: RAM
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


module RAM(data, address, write);
parameter word_size = 16, address_size = 15,  memory_size = 32786; 
inout[word_size-1:0] data;
input[address_size-1:0] address;
input write;
reg[word_size-1:0] mem[memory_size-1:0];
reg[word_size-1:0] data_out;
assign data = data_out;
always @(*)
case(write)
 0: data_out = mem[address];
 1: mem[address] = data;
 default: data_out = 16'bZ;
endcase
endmodule
