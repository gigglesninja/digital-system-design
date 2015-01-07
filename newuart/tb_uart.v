`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:53:19 10/26/2014 
// Design Name: 
// Module Name:    tb_uart 
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
module tb_uart;
	reg clk;
	reg reset;
	reg tx;
	reg rx;
	wire [7:0] led;
	
parameter CLK_PERIOD=20;       //clock period in ns.  20 ns = 50 MHZ	
parameter UUT_PERIOD=8'h1A;    //57600 baudrate

parameter CLK16X_PERIOD=(CLK_PERIOD*(UUT_PERIOD+1)*2);
parameter CHARACTER_PERIOD = (CLK16X_PERIOD * 16 * 10);
	
	uart u1( 
	.clk		(clk),
	.reset	(reset),
	.rxin		(rx),
	.txout	(tx),
	.Led		(led)
	); 
	
	
	`define FSIZE 1024

	integer infifo[(`FSIZE-1):0];
	integer head,tail;
	
	integer errors;
	
	initial begin
	 clk = 0;
	 #100   //reset delay
	 forever #10 clk = ~clk;
	end
	
	
	reg [9:0] shiftdata;
	integer i;
	
	task putserialdata;
	 input [8:0] outdata;
	 
	 begin
	 
	  infifo[head] = outdata;
	  head = head + 1;	
     if (head 	== `FSIZE) head = 0;
	  
	  shiftdata ={1'b1,outdata[7:0],1'b0};
	  i = 0;
	  while (i != 10) begin
	   rx = shiftdata[0];
		#(CLK16X_PERIOD*16)  //wait one bit time
		i = i + 1;
		shiftdata = {1'b1,shiftdata[9:1]};	  
	  end	 
	 end
	endtask 
	
	
	initial begin
		clk = 0;
		reset = 1;
		// Wait 100 ns for global reset to finish
		#100;
		reset = 0;
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		#50;
		putserialdata(9'h039);
	end
	

endmodule
