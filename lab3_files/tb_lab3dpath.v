`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:58:08 08/25/2014
// Design Name:   lab3dpath
// Module Name:   C:/ece4743/projects/lab3_solution/tb_lab3dpath.v
// Project Name:  lab3_solution
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lab3dpath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_lab3dpath;

	// Inputs
	reg [9:0] x1;
	reg [9:0] x2;
	reg [9:0] x3;

	// Outputs
	wire [9:0] y;
	
	reg[8*100:1] aline;

   integer fd;
	integer count,status;
   integer i_a, i_b, i_c, i_result;
	integer errors;

	// Instantiate the Unit Under Test (UUT)
	lab3dpath uut (
		.x1(x1), 
		.x2(x2), 
		.x3(x3), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		x1 = 0;
		x2 = 0;
		x3 = 0;


		fd = $fopen("multadd_vectors.txt","r");
		count = 0;

		// Wait 100 ns for global reset to finish
		#100;
	        
		// Add stimulus here
		// Add stimulus here
		errors = 0;
		while ($fgets(aline,fd)) begin
		 status = $sscanf(aline,"%x %x %x %x",i_a, i_b, i_c, i_result);
		 x1 = i_a;
		 x2 = i_b;
		 x3 = i_c;
		 #40   //delay
		 if (i_result == y) begin
		  $display("PASS, x1: %x, x2: %x, x3: %x, y: %x\n",x1,x2,x3,y);
		 end else begin
        $display("FAIL, x1: %x, x2: %x, x3: %x, y (actual): %x, y (expected): %x\n",x1,x2,x3,y,i_result);	 
		   errors = errors + 1;
		 end

		end //end while
		
		if (errors == 0) $display("PASS: All vectors pased.\n");
		else $display ("FAIL: %d vectors failed\n",errors);
		
			
	end
      
endmodule

