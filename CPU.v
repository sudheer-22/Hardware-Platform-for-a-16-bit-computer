`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2020 23:28:52
// Design Name: 
// Module Name: computer
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
module computer(inM,instruction,reset,clk,outM, writeM, addressM, pc);
input[15:0] instruction, inM;
input clk,reset;
output [15:0] outM;
output [14:0] pc;
output [14:0] addressM;
output writeM;
wire t_out, AReg_out,DReg_out,load_pc,t_pc;
wire[15:0] mux1_out, mux2_out;
wire zr,ng;
Mux16 first(instruction, t_out, instruction[15], mux1_out);
Register A(mux1_out,clk,(instruction[5]&&instruction[15])||!instruction[15],AReg_out);
assign addressM = AReg_out;
Mux16 second(AReg_out,inM,instruction[12]&&instruction[15], mux2_out);
Register D(t_out,clk,instruction[4]||instruction[15],DReg_out);
ALU alu(DReg_out, AReg_out,instruction[11],instruction[10],instruction[9],
        instruction[8],instruction[7],instruction[6], t_out,zr,ng);
assign outM = t_out;
assign writeM = instruction[15]&&instruction[3];
assign load_pc = (instruction[2]&&instruction[1]&&instruction[0])||
(!ng&&instruction[0]&&!zr||!ng&&instruction[1]&&zr)||(instruction[1]&&zr&&ng);
program_counter(clk,reset,AReg_out,load_pc,t_pc);
assign pc = t_pc;
endmodule
