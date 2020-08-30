`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2020 22:50:53
// Design Name: 
// Module Name: testbench_mux16
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


module testbench_mux16;
reg[15:0] X,Y;
reg sel;
wire[15:0] out;
Mux16 m1(X,Y,sel, out);
initial 
begin
X = 45; Y = 89; sel = 0; #5 sel =1;
#5 Y = 98; # 5 X=23; #5 sel = 0;
#5 $finish;
end
endmodule
