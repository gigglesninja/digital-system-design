`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:03:21 10/28/2014 
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
	input rxin,
	output txout
);

`define TXREG 			3'b001 
`define CONTROLTX 	3'b011
`define RXREG 			3'b101
`define CONTROLRX 	3'b111
`define TXR				2'b00
`define CTX				2'b01
`define RXR				2'b10
`define CRX				2'b11
`define START 			3'b000
`define WAITRX			3'b001
	 
wire [7:0] to_tx;
reg [2:0] addr, pstate, nstate;
reg [1:0] addmux;
reg [3:0] din;
reg wr_rx, rd_rx, wr_tx, rd_tx;

uart_rx #(.PERIOD(8'h1A)) RX(
	.clk		(clk), 
	.reset	(reset), 
	.wren		(wr_rx), 
	.rden		(rd_rx), 
	.din		(8'b00000001), 
	.dout		(to_tx), 
	.rxin		(rxin), 
	.addr		(addr)
	);
	 
uart_tx #(.PERIOD(8'h1A)) TX(
	 .clk		(clk), 
	 .reset	(reset), 
	 .wren	(wr_tx), 
	 .rden	(rd_tx), 
	 .din		(to_tx), 
	 .dout	(dout), 
	 .txout	(txout), 
	 .addr	(addr)
	);
	
always @* begin
	addr = 3'b010;
	case(addmux)
		`TXR:
			addr = `TXREG;
		`CTX:
			addr = `CONTROLTX;
		`RXR:
			addr = `RXREG;
		`CRX:
			addr = `CONTROLRX;
	endcase
end

always @(posedge clk or posedge reset) begin
	if(reset)
		pstate <= `START;
	else begin
		pstate <= nstate;
	end
end

always @* begin
	wr_rx = 0; rd_rx = 0;
	wr_tx = 0; rd_tx = 0;
	nstate = pstate;
	case(pstate)
		`START: begin
			wr_rx = 1;
			addmux = `CRX;
			nstate = `WAITRX;
		end
		`WAITRX: begin
			rd_rx = 1;
			if(to_tx[1])
				//recieve is done/
		end
	endcase
end

endmodule 