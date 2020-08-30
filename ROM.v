`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2020 16:49:07
// Design Name: 
// Module Name: ROM
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


module ROM(address, data);
parameter address_size = 15, data_size = 16, memory_size=32786;
input[address_size-1:0] address;
output[data_size-1:0] data;
reg[data_size-1:0] mem[memory_size-1:0];
assign data = mem[address];
endmodule
