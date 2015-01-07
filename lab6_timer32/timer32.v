`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:31:24 09/13/2014 
// Design Name: 
// Module Name:    timer32 
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
module timer32(clk, reset, din, dout, wren, rden, addr);
	 
input clk, reset, wren, rden;
input [31:0] din;
output [31:0] dout;
input [1:0] addr;

reg [31:0] out, out2, timer, period;
// bits [0] enable, [1] TMR , [2] Toggle
reg [2:0] control;
// control commands

`define TIMER_REG   	2'b00
`define PERIOD_REG  	2'b01
`define CONTROL_REG 	2'b10
`define DUMMY_REG   	2'b11
`define ZERO			32'h00000000
`define COUNT        control[0]
`define TMR				control[1]
`define TOGGLE       control[2]

parameter PERIOD = 32'h0000000F;  //must have this initial value
parameter ENBIT = 1'b0;


always @(posedge clk or posedge reset) begin
	if(reset) begin
		timer<= `ZERO;
		period <= PERIOD;
		`COUNT = ENBIT;
		`TMR = 0;
		`TOGGLE = 0;
	end
	else begin
	//alot of if statements start here
	//count
	if(`COUNT) begin
		timer <= timer + 1;
		end
		
	//read control
	if(rden & (addr == `CONTROL_REG) & `TMR)
		`TMR = ~`TMR;
	
	// throw TMR flag/toggle bit
	if(timer == period) begin
		`TMR = 1;
		`TOGGLE = ~`TOGGLE;
		timer <= `ZERO;
		end

		
	//write to period reg
	if(wren & (addr == `PERIOD_REG))
		period <=  din;
		
	//write to control reg !!!!!leave bot!!!!!
	if(wren & (addr == `CONTROL_REG)) begin
		`TMR = ~`TMR;
		`COUNT = din[0];
		`TMR = din[1];
		`TOGGLE = din[2];
		end
	end
end

//out 4-1 mux
always @* begin
out = `ZERO;
	case(addr)
		`TIMER_REG:
			out = timer;
		`PERIOD_REG:
			out = period;
		`CONTROL_REG:
			out[2:0] = control;
	endcase
end

//read mux
always @* begin
out2 = `ZERO;
	case(rden)
		1'b1:
			out2 = out;
	endcase
end

assign dout = out2;
 
endmodule
