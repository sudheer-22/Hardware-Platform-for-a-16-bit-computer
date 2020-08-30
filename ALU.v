`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2020 17:01:16
// Design Name: 
// Module Name: ALU
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


module ALU(X, Y, zx, nx, zy, ny, f, no, out,zr,ng);
input zx, nx, zy, ny, f, no;
reg[5:0] control_vector;
input[15:0] X,Y;
output reg[15:0] out;
output reg zr,ng;
parameter s0 = 6'b101010, s1 = 6'b111111, s2 = 6'b111010, s3 = 6'b001100,s4 = 6'b110000,s5 = 6'b001101;
parameter s6 = 6'b110001, s7 = 6'b001111, s8 = 6'b110011, s9 = 6'b011111,s10 = 6'b110111,s11 = 6'b001110;
parameter s12 = 6'b110010, s13 = 6'b000010, s14 = 6'b010011, s15 = 6'b000111,s16 = 6'b000000,s17 = 6'b010101;
always @(*)
begin
control_vector = {zx, nx, zy, ny, f, no};
case(control_vector)
 s0 : out = 0;
 s1 : out = 1;
 s2 : out = -1;
 s3: out = X;
 s4 : out = Y;
 s5 : out = !X; 
 s6 : out =  !Y;
 s7 : out = -X; 
 s8 : out = -Y; 
 s9: out = X+1;
 s10 : out = Y+1; 
 s11 : out = X-1; 
 s12 : out = Y-1; 
 s13 : out = X+Y; 
 s14 : out = X-Y; 
 s15 : out = Y-X; 
 s16 : out = X&Y; 
 s17 : out = X|Y;
 default: out = 16'bz;
endcase
if(out == 0) zr = 1;
else zr = 0 ;
if (out < 0) ng = 1;
else ng = 0;
end
endmodule

// 