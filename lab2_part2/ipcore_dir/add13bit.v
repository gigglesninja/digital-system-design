////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: add13bit.v
// /___/   /\     Timestamp: Fri Aug 29 10:36:02 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "C:/Users/James/Desktop/iDriveSync/IDrive-Sync/DSD LAB/lab2_part2/ipcore_dir/tmp/_cg/add13bit.ngc" "C:/Users/James/Desktop/iDriveSync/IDrive-Sync/DSD LAB/lab2_part2/ipcore_dir/tmp/_cg/add13bit.v" 
// Device	: 3s50cp132-5
// Input file	: C:/Users/James/Desktop/iDriveSync/IDrive-Sync/DSD LAB/lab2_part2/ipcore_dir/tmp/_cg/add13bit.ngc
// Output file	: C:/Users/James/Desktop/iDriveSync/IDrive-Sync/DSD LAB/lab2_part2/ipcore_dir/tmp/_cg/add13bit.v
// # of Modules	: 1
// Design Name	: add13bit
// Xilinx        : C:\Xilinx\14.6\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module add13bit (
s, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  output [12 : 0] s;
  input [12 : 0] a;
  input [12 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000041 ;
  wire \blk00000001/sig00000040 ;
  wire \blk00000001/sig0000003f ;
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \blk00000001/sig00000036 ;
  wire \blk00000001/sig00000035 ;
  wire \blk00000001/sig00000034 ;
  wire \blk00000001/sig00000033 ;
  wire \blk00000001/sig00000032 ;
  wire \blk00000001/sig00000031 ;
  wire \blk00000001/sig00000030 ;
  wire \blk00000001/sig0000002f ;
  wire \blk00000001/sig0000002e ;
  wire \blk00000001/sig0000002d ;
  wire \blk00000001/sig0000002c ;
  wire \blk00000001/sig0000002b ;
  wire \blk00000001/sig0000002a ;
  wire \blk00000001/sig00000029 ;
  wire \blk00000001/sig0000001b ;
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000028  (
    .I0(b[0]),
    .I1(a[0]),
    .O(\blk00000001/sig00000035 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000027  (
    .I0(b[1]),
    .I1(a[1]),
    .O(\blk00000001/sig00000039 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000026  (
    .I0(b[2]),
    .I1(a[2]),
    .O(\blk00000001/sig0000003a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000025  (
    .I0(b[3]),
    .I1(a[3]),
    .O(\blk00000001/sig0000003b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000024  (
    .I0(b[4]),
    .I1(a[4]),
    .O(\blk00000001/sig0000003c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000023  (
    .I0(b[5]),
    .I1(a[5]),
    .O(\blk00000001/sig0000003d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000022  (
    .I0(b[6]),
    .I1(a[6]),
    .O(\blk00000001/sig0000003e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000021  (
    .I0(b[7]),
    .I1(a[7]),
    .O(\blk00000001/sig0000003f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000020  (
    .I0(b[8]),
    .I1(a[8]),
    .O(\blk00000001/sig00000040 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000001f  (
    .I0(b[9]),
    .I1(a[9]),
    .O(\blk00000001/sig00000041 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000001e  (
    .I0(b[10]),
    .I1(a[10]),
    .O(\blk00000001/sig00000036 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000001d  (
    .I0(b[11]),
    .I1(a[11]),
    .O(\blk00000001/sig00000037 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000001c  (
    .I0(b[12]),
    .I1(a[12]),
    .O(\blk00000001/sig00000038 )
  );
  MUXCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig0000001b ),
    .DI(a[0]),
    .S(\blk00000001/sig00000035 ),
    .O(\blk00000001/sig00000029 )
  );
  XORCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig0000001b ),
    .LI(\blk00000001/sig00000035 ),
    .O(s[0])
  );
  XORCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig0000002b ),
    .LI(\blk00000001/sig00000038 ),
    .O(s[12])
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig00000029 ),
    .DI(a[1]),
    .S(\blk00000001/sig00000039 ),
    .O(\blk00000001/sig0000002c )
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig00000029 ),
    .LI(\blk00000001/sig00000039 ),
    .O(s[1])
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig0000002c ),
    .DI(a[2]),
    .S(\blk00000001/sig0000003a ),
    .O(\blk00000001/sig0000002d )
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig0000002c ),
    .LI(\blk00000001/sig0000003a ),
    .O(s[2])
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig0000002d ),
    .DI(a[3]),
    .S(\blk00000001/sig0000003b ),
    .O(\blk00000001/sig0000002e )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig0000002d ),
    .LI(\blk00000001/sig0000003b ),
    .O(s[3])
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig0000002e ),
    .DI(a[4]),
    .S(\blk00000001/sig0000003c ),
    .O(\blk00000001/sig0000002f )
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig0000002e ),
    .LI(\blk00000001/sig0000003c ),
    .O(s[4])
  );
  MUXCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig0000002f ),
    .DI(a[5]),
    .S(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig00000030 )
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig0000002f ),
    .LI(\blk00000001/sig0000003d ),
    .O(s[5])
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000030 ),
    .DI(a[6]),
    .S(\blk00000001/sig0000003e ),
    .O(\blk00000001/sig00000031 )
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000030 ),
    .LI(\blk00000001/sig0000003e ),
    .O(s[6])
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000031 ),
    .DI(a[7]),
    .S(\blk00000001/sig0000003f ),
    .O(\blk00000001/sig00000032 )
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000031 ),
    .LI(\blk00000001/sig0000003f ),
    .O(s[7])
  );
  MUXCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig00000032 ),
    .DI(a[8]),
    .S(\blk00000001/sig00000040 ),
    .O(\blk00000001/sig00000033 )
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig00000032 ),
    .LI(\blk00000001/sig00000040 ),
    .O(s[8])
  );
  MUXCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000033 ),
    .DI(a[9]),
    .S(\blk00000001/sig00000041 ),
    .O(\blk00000001/sig00000034 )
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig00000033 ),
    .LI(\blk00000001/sig00000041 ),
    .O(s[9])
  );
  MUXCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000034 ),
    .DI(a[10]),
    .S(\blk00000001/sig00000036 ),
    .O(\blk00000001/sig0000002a )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000034 ),
    .LI(\blk00000001/sig00000036 ),
    .O(s[10])
  );
  MUXCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig0000002a ),
    .DI(a[11]),
    .S(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig0000002b )
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig0000002a ),
    .LI(\blk00000001/sig00000037 ),
    .O(s[11])
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig0000001b )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
