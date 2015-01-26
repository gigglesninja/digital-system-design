`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:38:39 08/19/2014
// Design Name:   satadd
// Module Name:   C:/ece4743/projects/lab2_solution_part1/tb_satadd.v
// Project Name:  lab2_solution_part1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: satadd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_satadd;

	// Inputs
	reg [11:0] a;
	reg [11:0] b;
	reg [1:0] mode;

	// Outputs
	wire [11:0] y;
	
	reg[8*100:1] aline;

   integer fd;
	integer count,status;
   integer i_a, i_b, i_mode, i_result;
	integer errors;


	// Instantiate the Unit Under Test (UUT)
	satadd uut (
		.a(a), 
		.b(b), 
		.mode(mode), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		mode = 0;
		fd = $fopen("test_out.txt","w");
		$fclose(fd);
		
		fd = $fopen("satadd_vectors.txt","r");
		count = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here
		errors = 0;
		while ($fgets(aline,fd)) begin
		 status = $sscanf(aline,"%x %x %x %x",i_mode, i_a, i_b, i_result);
		 a = i_a;
		 b = i_b;
		 mode = i_mode;
		 #10   //delay
		 if (i_result == y) begin
		  $display("PASS, mode: %x, a: %x, b: %x, y: %x\n",mode,a,b,y);
		 end else begin
        $display("FAIL, mode: %x, a: %x, b: %x, y (actual): %x, y (expected): %x\n",mode,a,b,y,i_result);	 
		   errors = errors + 1;
		 end

		end //end while
		
		if (errors == 0) $display("PASS: All vectors pased.\n");
		else $display ("FAIL: %d vectors failed\n",errors);
		
     
		
	end
      
endmodule

