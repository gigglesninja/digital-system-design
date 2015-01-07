`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:39:09 11/03/2014
// Design Name:   spi_bonus
// Module Name:   C:/ece4743/projects/spi_bonus_solution/tb_spi_bonus.v
// Project Name:  spi_bonus_solution
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: spi_bonus
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_spi_bonus;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] din;
	reg wren;
	reg rden;
	reg [1:0] addr;
	reg miso;

	// Outputs
	wire [7:0] dout;
	wire mosi;
	wire sclk;

	// Instantiate the Unit Under Test (UUT)
	spi_bonus uut (
		.clk(clk), 
		.reset(reset), 
		.din(din), 
		.dout(dout), 
		.wren(wren), 
		.rden(rden), 
		.addr(addr), 
		.mosi(mosi), 
		.miso(miso), 
		.sclk(sclk)
	);
	
	reg invert_mosi;
	always @* begin
	  miso = invert_mosi? ~mosi:mosi;
   end	
	
	`define FSIZE 1024

	integer infifo[(`FSIZE-1):0];
	integer head,tail;
	
	integer errors;
	integer i;
	reg [7:0] outdata;
	integer all_vectors_done;
		
	
	initial begin
	 clk = 0;
	 #100   //reset delay
	 forever #10 clk = ~clk;
	end
	
	 reg checktrigger;
	
	task applydata;
	 input [7:0] val;	 
	begin	
	   @(negedge clk);
	   infifo[head] = val;
		head = head + 1;
		if (head == `FSIZE) head = 0;
		checktrigger = 1; //trigger output check process
		
	   din = val;   
		wren = 1;
		addr = 2'b00;
		@(negedge clk);
		wren = 0;
		checktrigger = 0;
		@(negedge clk);
		
   end
   endtask
	
	task getserialdata;
	 input [7:0] expecteddata;
	begin
	  outdata = 0;	
	  i = 0;
	  while (i != 8) begin
	   outdata = outdata << 1;
	   @(negedge sclk);
		outdata[0] = mosi;
		i = i + 1;
	  end  

    if (outdata != expecteddata) begin
	      errors = errors + 1;
			$display("%t: FAIL,expected serial MOSI out of %h, found: %h",$time,expecteddata,outdata);
	 end else begin
		  $display("%t: PASS,got expected serial MOSI out of %h",$time,expecteddata);
	 end
		
	 end
	endtask
	
	task rddatardy;    //read the data rdy flag
	input expectedbit;
   begin
	  @(negedge clk);
	   addr = 2;
		rden = 1;
	   @(negedge clk);
		if (dout[1] != expectedbit) begin
	     errors = errors + 1;
	     $display("%t: FAIL, reading SPI DATARDY bit, expected: %h, actual: %h.",$time,expectedbit,dout[1]);
	   end else begin
	     $display("%t: PASS, reading SPI DATARDY bit.",$time);
		end 
		rden = 0;
	 end
	 endtask
	 
	 task readdata;
    input [7:0] expecteddata;	 
	begin
	  	//read status register, wait for DATA RDY bit to be set
	  @(negedge clk);
	  rden = 1;	 
     addr = 2;    //status register
	  @(negedge clk);
	  while (dout[1] == 0) begin
	   @(negedge clk); //wait for DataRdy bit
	  end
	  rden = 1;	 
  	  addr = 1;    //FIFO read port
	  @(posedge clk);  //must latch FIFO out data on posedge
	  	   //no expected framing error
		if (expecteddata != dout) begin
		  errors = errors + 1;
	     $display("%t: FAIL,expected serial RXFIFO out of %h, found: %h",$time,expecteddata,dout);
		end else begin
		  $display("%t: PASS,got expected serial RXFIFO of %h",$time,expecteddata);
		end
	  addr = 2;
	  rden = 0;
	  @(negedge clk);	  
	
	end
	endtask
	 
	//timeout process
	initial begin
	
		#(1000000);   //1 ms

		if (all_vectors_done == 0) begin		
		 $display("%t: ERROR -- TIMEOUT, not all data processed.",$time);
		 $display("The timeout is probably due to the DATARDY bit never going high.");
	   end
	
	end
	

	initial begin
		// Initialize Inputs
		#1		
		reset = 1;
		din = 0;
		wren = 0;
		rden = 0;
		addr = 0;
		miso = 0;
		head = 0;
		tail = 0;
		checktrigger = 0;
		errors = 0;
		invert_mosi = 0;
		all_vectors_done = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 0;
	   // Add stimulus here
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		applydata(8'h55); //alternating 1's and 0's
		applydata(8'h62); 
		applydata(8'h38); 		
		readdata(8'h55); //alternating 1's and 0's
		readdata(8'h62); 
		readdata(8'h38); 
		rddatardy(0);    //data ready bit should be set
		
		invert_mosi = 1;
		applydata(8'hA9); 
		applydata(8'hF3); 
		applydata(8'h2C); 	
		readdata(~(8'hA9)); 
		readdata(~(8'hF3)); 
		readdata(~(8'h2C)); 	
		all_vectors_done = 1;
		$display("%t: All vectors done.",$time);
		if (errors != 0) 
		  $display("%t: FAIL, had %d errors during simulation.",$time,errors);
		else
		  $display("%t: PASS, no errors during simulation.",$time); 
  
	end
	
	
	
	reg [7:0] checkdata;
	always @(posedge checktrigger) begin
	//check output
	  while(head != tail) begin
	    checkdata = infifo[tail];
		 tail = tail + 1;
		 if (tail == `FSIZE) tail = 0;
	    getserialdata(checkdata);
	  end
	end
      
endmodule

