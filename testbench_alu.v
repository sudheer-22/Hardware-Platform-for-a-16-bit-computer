`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2020 17:39:11
// Design Name: 
// Module Name: testbench_alu
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


module testbench_alu;
reg[15:0] X,Y;
reg zx, nx, zy, ny, f, no;
wire[15:0] out;
wire zr,ng;
ALU alu(X, Y, zx, nx, zy, ny, f, no, out ,zr, ng);
initial
begin
X = 16'b0000000000001111;
Y = 16'b0000000000110000;
$monitor($time, " zx = %b, nx = %b, zy = %b, ny = %b, f = %b, no = %b, out = %b ,zr = %b, ng = %b",zx, nx, zy, ny, f, no, out ,zr, ng);
#5 zx=1; nx=0; zy=1; ny=0; f=1; no=0;
#5 zx=1; nx=1; zy=1; ny=1; f=1; no=1;
#5 zx=0; nx=0; zy=1; ny=1; f=0; no=0;
#5 zx=1; nx=1; zy=0; ny=0; f=0; no=0;
#5 zx=0; nx=0; zy=0; ny=0; f=0; no=0;
#10 $finish;
end
endmodule
