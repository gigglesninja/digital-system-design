`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:34:44 10/02/2014 
// Design Name: 
// Module Name:    ledtimer 
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
module ledtimer(
	output [7:0] Led,
	input [1:0] swt,
	input mclk
    );
/*# Pin assignment for LEDs
NET "Led<7>" LOC = "G1" ; 
NET "Led<6>" LOC = "P4" ; 
NET "Led<5>" LOC = "N4" ;
NET "Led<4>" LOC = "N5" ; 
NET "Led<3>" LOC = "P6" ;
NET "Led<2>" LOC = "P7" ;
NET "Led<1>" LOC = "M11" ;
NET "Led<0>" LOC = "M5" ;

Address to be tied to control 2'b10 and rden is always high. Toggle bit tied to LED's
ENBIT is tied high. 
Timer			Period
1				0.125s
2				0.25s
3				0.5s
4				1.0s
5				2.0s
6				4.0s
7				8.0s
LED should be on/off for time periods
mclk 50MHz to tied to clk.
Switch 0 is reset
*/

wire clk, reset, wr1, rd1, pause;
wire [1:0] addr;
wire [31:0] d1, d2, d3, d4, d5, d6, d7, d8, din;

assign addr = 2'b10;
assign wr1 = 0;
assign rd1 = 1;
assign clk = mclk;

assign Led[0] = d1[2];
assign Led[1] = d2[2];
assign Led[2] = d3[2];
assign Led[3] = d4[2];
assign Led[4] = d5[2];
assign Led[5] = d6[2];
assign Led[6] = d7[2];
assign Led[7] = d8[2];

assign reset = swt[0];
assign din = 32'h00000000;

timer32 #(.ENBIT(1), .PERIOD(32'h005F5E10)) led1(
	.clk 		(clk),
	.reset	(reset), 
	.din		(din), 	
	.dout		(d1),
	.wren		(wr1),
	.rden		(rd1),
	.addr		(addr));

timer32 #(.ENBIT(1), .PERIOD(32'h00BEBC20)) led2(
	.clk 		(clk),
	.reset	(reset), 
	.din		(din), 	
	.dout		(d2),
	.wren		(wr1),
	.rden		(rd1),
	.addr		(addr));
	
timer32 #(.ENBIT(1), .PERIOD(32'h017D7840)) led3(
	.clk 		(clk),
	.reset	(reset), 
	.din		(din), 	
	.dout		(d3),
	.wren		(wr1),
	.rden		(rd1),
	.addr		(addr));

timer32 #(.ENBIT(1), .PERIOD(32'h02FAF080)) led4(
	.clk 		(clk),
	.reset	(reset), 
	.din		(din), 	
	.dout		(d4),
	.wren		(wr1),
	.rden		(rd1),
	.addr		(addr));
timer32 #(.ENBIT(1), .PERIOD(32'h05F5E100)) led5(
	.clk 		(clk),
	.reset	(reset), 
	.din		(din), 	
	.dout		(d5),
	.wren		(wr1),
	.rden		(rd1),
	.addr		(addr));

timer32 #(.ENBIT(1), .PERIOD(32'h0BEBC200)) led6(
	.clk 		(clk),
	.reset	(reset), 
	.din		(din), 	
	.dout		(d6),
	.wren		(wr1),
	.rden		(rd1),
	.addr		(addr));
	
timer32 #(.ENBIT(1), .PERIOD(32'h17D78400)) led7(
	.clk 		(clk),
	.reset	(reset), 
	.din		(din), 	
	.dout		(d7),
	.wren		(wr1),
	.rden		(rd1),
	.addr		(addr));
	
timer32 #(.ENBIT(1), .PERIOD(32'h17D78400)) led8(
	.clk 		(clk),
	.reset	(reset), 
	.din		(din), 	
	.dout		(d8),
	.wren		(wr1),
	.rden		(rd1),
	.addr		(addr));
	

endmodule
