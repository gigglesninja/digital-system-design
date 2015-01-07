`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:22:23 08/25/2014 
// Design Name: 
// Module Name:    lab3dpath 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module lab3dpath(x1,x2,x3,y);
input [9:0] x1,x2,x3;
output [9:0] y;

//mult12x12 input (a,b[11:0] output (p[23:0])

wire [11:0] s2;
wire [23:0] t1, t2, t3;

mult12x12 i1 (.a(12'b110000000000), .b({x1, 2'b00}), .p(t1));
mult12x12 i2 (.a(12'b010100000000), .b({x2, 2'b00}), .p(t2));
mult12x12 i3 (.a(12'b110000000000), .b({x3, 2'b00}), .p(t3));

assign s2 = t1[22:11] + t2[22:11] + t3[22:11];

assign y = s2[11:2];
endmodule
