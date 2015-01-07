`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:20 10/26/2014 
// Design Name: 
// Module Name:    uart 
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
module uart( 
	input clk,
	input reset,
	input rx,
	input fsm,
	output [2:0] Led,
	output tx
); 

`define TXreg 			3'b001 
`define controltx 	3'b011
`define RXreg 			3'b101
`define controlrx 	3'b111
`define NOTREADY		3'b000
`define WAITRX			3'b001
`define TRANS 			3'b010
`define PASSTX			3'b011
`define CHECKTX		3'b100
`define PASSTX1		3'b101
`define STOP			3'b111
`define RXREADY		dout[1]

reg wr_tx, rd_tx, wr_rx, rd_rx, rx_sel, tx_sel, finished, dadd, clr;
reg [7:0] data;
wire [7:0] ready, dout_tx;
wire [8:0] dout_rx;
reg [2:0] addr_rx, addr_tx;
reg [2:0] nstate, pstate, dout;
reg [1:0] trans;

assign ready = 8'b00000001;

uart_tx #(.PERIOD(8'h1A)) out(
	.clk		(clk), 
	.reset   (reset), 
	.wren		(wr_tx), 
	.rden		(rd_tx), 
	.din		(data), 
	.dout		(dout_tx), 
	.txout	(tx), 
	.addr		(addr_tx));
	
uart_rx #(.PERIOD(8'h1A)) in(
	.clk		(clk),
	.reset   (reset),
	.wren		(wr_rx), 
	.rden		(rd_rx), 
	.din		(ready), 
	.dout		(dout_rx), 
	.rxin		(rx), 
	.addr		(addr_rx));
	
	
// adder
always @(posedge clk or posedge reset) begin
	if(reset)
		data <= 8'b11111111;
	else begin
		if(rx_sel)
			data <= dout_rx + 1'b1;
	end
end

always @(posedge clk or posedge reset) begin
	if(reset)
		dout = dout_rx[2:0];
	else begin
		if(dadd)
			dout = dout_tx[2:0];
		else
			dout = dout_rx[2:0];
	end
end
assign Led[0] = dout[0];
assign Led[1] = dout[1];
assign Led[2] = data[2];

always @* begin
	addr_rx = `controlrx;
	case(rx_sel)
		1'b1: 
			addr_rx = `RXreg;
	endcase
end

always @* begin
	if(tx_sel)
		addr_tx = `TXreg;
	else
		addr_tx = `controltx;
end

//trans clock
always @(posedge clk or posedge reset) begin
	if(reset)
		trans <= 2'b00;
	else begin
		trans <= trans + 1;
		if(clr)
			trans <= 2'b00;
	end
end

// set state during startup.
always @(posedge clk or posedge reset) begin
     if (reset)
    	  pstate <= `NOTREADY;
	  else
		  pstate <= nstate;
end


// fsm
always @* begin
	wr_tx = 0; wr_rx = 0;
	rd_tx = 0; rd_tx = 0;
	rx_sel = 0; tx_sel = 0;
	finished = 0; clr = 0;
	nstate = pstate;
	case (pstate)
		`NOTREADY: begin
			wr_rx = 1;
			nstate = `WAITRX;
		end
		`WAITRX: begin
			rd_rx = 1;
			if(`RXREADY) begin
				nstate = `TRANS;
				clr = 1;
			end
		end
		`TRANS: begin
			if(trans == 2'b11) begin
				rd_rx = 1;
				rx_sel = 1;
				nstate = `PASSTX;
			end
		end
		`PASSTX: begin
			rd_rx = 1;
			rx_sel = 1;
			nstate = `PASSTX1;
		end
		`PASSTX1: begin
			wr_tx = 1;
			tx_sel = 1;
			nstate = `STOP;
		end
		`STOP: begin
			nstate = `STOP;
			end
	endcase 		 
end

endmodule 
