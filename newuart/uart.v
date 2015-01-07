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
	output txout,
	output [7:0] Led 
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
`define PASSTX			3'b010
`define WRTX			3'b011
`define WAITTX			3'b100
`define CLRTX			3'b101
`define WAITWRTX		3'b110
`define STOP			3'b111//used for debug
`define RXREADY		to_tx[1]
`define TXREADY		tx_out[1]
`define TXWRRDY	 	tx_out[0]

wire [7:0] to_tx;
wire [1:0] tx_out;
reg [2:0] addr, pstate, nstate;
reg [1:0] addmux;
reg [3:0] din;
reg [7:0] cache, leds;
reg wr_rx, rd_rx, wr_tx, rd_tx, ld, cl;

uart_rx #(.PERIOD(8'h0C)) RX(
	.clk		(clk), 
	.reset	(reset), 
	.wren		(wr_rx), 
	.rden		(rd_rx), 
	.din		(1'b1), 
	.dout		(to_tx), 
	.rxin		(rxin), 
	.addr		(addr)
	);
	 
uart_tx #(.PERIOD(8'h0C)) TX(
	 .clk		(clk), 
	 .reset	(reset), 
	 .wren	(wr_tx), 
	 .rden	(rd_tx), 
	 .din		(cache), 
	 .dout	(tx_out), 
	 .txout	(txout), 
	 .addr	(addr)
	);
	
assign Led = leds;

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
	if(reset) begin
		cache <= 8'b11111111;
		leds <= 8'b11111111;
		end
	else begin
		if(ld)
			cache <= to_tx + 1;
		if(cl) begin
			cache <= 8'b00000000;
			leds <= cache;
		end
	end
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
	ld = 0; cl = 0;
	addmux = `CRX;
	nstate = pstate;
	case(pstate)
		`START: begin
			wr_rx = 1;
			nstate = `WAITRX;
		end
		`WAITRX: begin
			rd_rx = 1;
				if(`RXREADY) 
					nstate = `PASSTX;
		end
		`PASSTX: begin
			rd_rx = 1;
			addmux = `RXR;
			ld = 1;
			nstate = `WAITWRTX;
		end
		`WAITWRTX: begin
			rd_tx = 1;
			addmux = `CTX;
			if(~`TXWRRDY)
				nstate = `WRTX;
		end
		`WRTX: begin
			wr_tx = 1;
			addmux = `TXR;
			nstate = `WAITTX;
		end
		`WAITTX: begin
			rd_tx = 1;
			addmux = `CTX;
			if(`TXREADY) begin
				cl = 1;
				nstate = `CLRTX;
				end
		end
		`CLRTX: begin
			wr_tx = 1;
			addmux = `CTX;
			nstate = `WAITRX;
		end
		`STOP: begin
			nstate = `STOP;
		end
	endcase
end

endmodule 