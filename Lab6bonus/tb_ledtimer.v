`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:12:42 10/03/2014 
// Design Name: 
// Module Name:    tb_ledtimer 
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
module tb_ledtimer;

	reg clk;

ledtimer u1(
	.swt 	(2'b00),
	.mclk	(clk));
	
	initial begin
	 clk = 0;
	 #100   //reset delay
	 forever #50 clk = ~clk;
	end
endmodule
