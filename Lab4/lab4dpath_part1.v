`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:10:52 08/30/2014 
// Design Name: 
// Module Name:    lab4dpath 
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
module lab4dpath(x1,x2,x3,y,clk);
input [9:0] x1,x2,x3;
input clk;
output [9:0] y;

//mult12x12 input (a,b[11:0] output (p[23:0])

wire [11:0] s2, v1, v2, v3;
wire [23:0] t1, t2, t3;

//dff io ports
reg [9:0] d1, d2, d3, q1, q2, q3;

//input dff
always @(posedge clk) begin
	d1 <= x1;
	d2 <= x2;
	d3 <= x3;
end

//output dff
always @(posedge clk) begin
	q1 <= d1;
	q2 <= d2;
	q3 <= d3;
end

assign v1 = {q1, 2'b00};
assign v2 = {q2, 2'b00};
assign v3 = {q3, 2'b00};

mult12x12 i1 (.a(12'b110000000000), .b(v1), .p(t1));
mult12x12 i2 (.a(12'b010100000000), .b(v2), .p(t2));
mult12x12 i3 (.a(12'b110000000000), .b(v3), .p(t3));

assign s2 = t1[22:11] + t2[22:11] + t3[22:11];

//assign y to upper bits of s2
assign y = s2[11:2];
endmodule
