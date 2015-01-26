////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: fifo_timesim.v
// /___/   /\     Timestamp: Mon Oct 13 20:11:56 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf fifo.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim fifo.ncd fifo_timesim.v 
// Device	: 3s100ecp132-5 (PRODUCTION 1.27 2013-06-08)
// Input file	: fifo.ncd
// Output file	: C:\Users\James\Desktop\iDriveSync\IDrive-Sync\DSD LAB\lab7\netgen\par\fifo_timesim.v
// # of Modules	: 1
// Design Name	: fifo
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

module fifo (
  clk, rden, wren, reset, empty, full, sclr, dout, din
);
  input clk;
  input rden;
  input wren;
  input reset;
  output empty;
  output full;
  input sclr;
  output [7 : 0] dout;
  input [7 : 0] din;
  wire din_2_IBUF_275;
  wire wren_IBUF_276;
  wire din_3_IBUF_277;
  wire din_4_IBUF_278;
  wire din_5_IBUF_279;
  wire rden_IBUF_280;
  wire din_6_IBUF_281;
  wire din_7_IBUF_282;
  wire dout_0_OBUF_284;
  wire dout_1_OBUF_285;
  wire dout_2_OBUF_286;
  wire dout_3_OBUF_287;
  wire dout_4_OBUF_288;
  wire sclr_IBUF_289;
  wire dout_5_OBUF_290;
  wire dout_6_OBUF_291;
  wire dout_7_OBUF_292;
  wire empty_OBUF_293;
  wire reset_IBUF_294;
  wire full_OBUF_295;
  wire din_0_IBUF_296;
  wire din_1_IBUF_297;
  wire clk_BUFGP;
  wire a_en_0;
  wire b_en_0;
  wire N3;
  wire read_not0001_0;
  wire N02_0;
  wire write_not0001_0;
  wire N12_0;
  wire \rden/INBUF ;
  wire \din<2>/INBUF ;
  wire \din<3>/INBUF ;
  wire \din<4>/INBUF ;
  wire \wren/INBUF ;
  wire \din<5>/INBUF ;
  wire \dout<2>/O ;
  wire \din<7>/INBUF ;
  wire \din<6>/INBUF ;
  wire \dout<1>/O ;
  wire \dout<0>/O ;
  wire \clk/INBUF ;
  wire \din<0>/INBUF ;
  wire \sclr/INBUF ;
  wire \dout<4>/O ;
  wire \full/O ;
  wire \din<1>/INBUF ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \dout<3>/O ;
  wire \dout<5>/O ;
  wire \dout<7>/O ;
  wire \dout<6>/O ;
  wire \empty/O ;
  wire \reset/INBUF ;
  wire \write<1>/DXMUX_801 ;
  wire Mcount_write1;
  wire \write<1>/DYMUX_785 ;
  wire Mcount_write;
  wire \write<1>/SRINV_775 ;
  wire \write<1>/CLKINV_774 ;
  wire \write<1>/CEINV_773 ;
  wire \read<1>/DXMUX_717 ;
  wire Mcount_read1;
  wire \read<1>/DYMUX_701 ;
  wire Mcount_read;
  wire \read<1>/SRINV_691 ;
  wire \read<1>/CLKINV_690 ;
  wire \read<1>/CEINV_689 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB3 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB2 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB1 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB0 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB31 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB30 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB29 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB28 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB27 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB26 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB23 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB22 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB21 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB20 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB19 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB18 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB15 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB14 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB13 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB12 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB11 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB10 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB7 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB6 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB5 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB4 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB3 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB2 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA3 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA2 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA1 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA0 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA31 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA30 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA29 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA28 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA27 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA26 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA23 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA22 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA21 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA20 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA19 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA18 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA15 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA14 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA13 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA12 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA11 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA10 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA7 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA6 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA5 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA4 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA3 ;
  wire \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA2 ;
  wire N12;
  wire \write<2>/DYMUX_832 ;
  wire Mcount_write2;
  wire \write<2>/CLKINV_823 ;
  wire \write<2>/CEINV_822 ;
  wire N02;
  wire \read<2>/DYMUX_748 ;
  wire Mcount_read2;
  wire \read<2>/CLKINV_739 ;
  wire \read<2>/CEINV_738 ;
  wire b_en;
  wire N3_pack_1;
  wire write_not0001;
  wire full_OBUF_pack_1;
  wire a_en;
  wire read_not0001;
  wire empty_OBUF_pack_1;
  wire \read<2>/FFY/RSTAND_754 ;
  wire \write<2>/FFY/RSTAND_838 ;
  wire \NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> ;
  wire \NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> ;
  wire \NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> ;
  wire \NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> ;
  wire \NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> ;
  wire \NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> ;
  wire \NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> ;
  wire \NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> ;
  wire \NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> ;
  wire \NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> ;
  wire \NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> ;
  wire \NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17> ;
  wire \NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24> ;
  wire \NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> ;
  wire GND;
  wire VCC;
  wire [2 : 0] write;
  wire [2 : 0] read;
  wire [7 : 0] douta;
  initial $sdf_annotate("netgen/par/fifo_timesim.sdf");
  X_IPAD #(
    .LOC ( "PAD51" ))
  \rden/PAD  (
    .PAD(rden)
  );
  X_BUF #(
    .LOC ( "PAD51" ))
  rden_IBUF (
    .I(rden),
    .O(\rden/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD35" ))
  \din<2>/PAD  (
    .PAD(din[2])
  );
  X_BUF #(
    .LOC ( "PAD35" ))
  din_2_IBUF (
    .I(din[2]),
    .O(\din<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD49" ))
  \din<3>/PAD  (
    .PAD(din[3])
  );
  X_BUF #(
    .LOC ( "PAD49" ))
  din_3_IBUF (
    .I(din[3]),
    .O(\din<3>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD33" ))
  \din<4>/PAD  (
    .PAD(din[4])
  );
  X_BUF #(
    .LOC ( "PAD33" ))
  din_4_IBUF (
    .I(din[4]),
    .O(\din<4>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD48" ))
  \wren/PAD  (
    .PAD(wren)
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  wren_IBUF (
    .I(wren),
    .O(\wren/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD38" ))
  \din<5>/PAD  (
    .PAD(din[5])
  );
  X_BUF #(
    .LOC ( "PAD38" ))
  din_5_IBUF (
    .I(din[5]),
    .O(\din<5>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD91" ))
  \dout<2>/PAD  (
    .PAD(dout[2])
  );
  X_OBUF #(
    .LOC ( "PAD91" ))
  dout_2_OBUF (
    .I(\dout<2>/O ),
    .O(dout[2])
  );
  X_IPAD #(
    .LOC ( "PAD30" ))
  \din<7>/PAD  (
    .PAD(din[7])
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  din_7_IBUF (
    .I(din[7]),
    .O(\din<7>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD34" ))
  \din<6>/PAD  (
    .PAD(din[6])
  );
  X_BUF #(
    .LOC ( "PAD34" ))
  din_6_IBUF (
    .I(din[6]),
    .O(\din<6>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD40" ))
  \dout<1>/PAD  (
    .PAD(dout[1])
  );
  X_OBUF #(
    .LOC ( "PAD40" ))
  dout_1_OBUF (
    .I(\dout<1>/O ),
    .O(dout[1])
  );
  X_OPAD #(
    .LOC ( "PAD39" ))
  \dout<0>/PAD  (
    .PAD(dout[0])
  );
  X_OBUF #(
    .LOC ( "PAD39" ))
  dout_0_OBUF (
    .I(\dout<0>/O ),
    .O(dout[0])
  );
  X_IPAD #(
    .LOC ( "IPAD12" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "IPAD12" ))
  \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD37" ))
  \din<0>/PAD  (
    .PAD(din[0])
  );
  X_BUF #(
    .LOC ( "PAD37" ))
  din_0_IBUF (
    .I(din[0]),
    .O(\din<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD54" ))
  \sclr/PAD  (
    .PAD(sclr)
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  sclr_IBUF (
    .I(sclr),
    .O(\sclr/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD42" ))
  \dout<4>/PAD  (
    .PAD(dout[4])
  );
  X_OBUF #(
    .LOC ( "PAD42" ))
  dout_4_OBUF (
    .I(\dout<4>/O ),
    .O(dout[4])
  );
  X_OPAD #(
    .LOC ( "PAD47" ))
  \full/PAD  (
    .PAD(full)
  );
  X_OBUF #(
    .LOC ( "PAD47" ))
  full_OBUF (
    .I(\full/O ),
    .O(full)
  );
  X_IPAD #(
    .LOC ( "IPAD36" ))
  \din<1>/PAD  (
    .PAD(din[1])
  );
  X_BUF #(
    .LOC ( "IPAD36" ))
  din_1_IBUF (
    .I(din[1]),
    .O(\din<1>/INBUF )
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clk_BUFGP/BUFG/I0_USED  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/BUFG/I0_INV )
  );
  X_OPAD #(
    .LOC ( "PAD43" ))
  \dout<3>/PAD  (
    .PAD(dout[3])
  );
  X_OBUF #(
    .LOC ( "PAD43" ))
  dout_3_OBUF (
    .I(\dout<3>/O ),
    .O(dout[3])
  );
  X_OPAD #(
    .LOC ( "PAD68" ))
  \dout<5>/PAD  (
    .PAD(dout[5])
  );
  X_OBUF #(
    .LOC ( "PAD68" ))
  dout_5_OBUF (
    .I(\dout<5>/O ),
    .O(dout[5])
  );
  X_OPAD #(
    .LOC ( "PAD45" ))
  \dout<7>/PAD  (
    .PAD(dout[7])
  );
  X_OBUF #(
    .LOC ( "PAD45" ))
  dout_7_OBUF (
    .I(\dout<7>/O ),
    .O(dout[7])
  );
  X_OPAD #(
    .LOC ( "PAD79" ))
  \dout<6>/PAD  (
    .PAD(dout[6])
  );
  X_OBUF #(
    .LOC ( "PAD79" ))
  dout_6_OBUF (
    .I(\dout<6>/O ),
    .O(dout[6])
  );
  X_OPAD #(
    .LOC ( "PAD53" ))
  \empty/PAD  (
    .PAD(empty)
  );
  X_OBUF #(
    .LOC ( "PAD53" ))
  empty_OBUF (
    .I(\empty/O ),
    .O(empty)
  );
  X_IPAD #(
    .LOC ( "PAD44" ))
  \reset/PAD  (
    .PAD(reset)
  );
  X_BUF #(
    .LOC ( "PAD44" ))
  reset_IBUF (
    .I(reset),
    .O(\reset/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y15" ))
  \write<1>/DXMUX  (
    .I(Mcount_write1),
    .O(\write<1>/DXMUX_801 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y15" ))
  \write<1>/DYMUX  (
    .I(Mcount_write),
    .O(\write<1>/DYMUX_785 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y15" ))
  \write<1>/SRINV  (
    .I(reset_IBUF_294),
    .O(\write<1>/SRINV_775 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y15" ))
  \write<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\write<1>/CLKINV_774 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y15" ))
  \write<1>/CEINV  (
    .I(write_not0001_0),
    .O(\write<1>/CEINV_773 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y14" ))
  \read<1>/DXMUX  (
    .I(Mcount_read1),
    .O(\read<1>/DXMUX_717 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y14" ))
  \read<1>/DYMUX  (
    .I(Mcount_read),
    .O(\read<1>/DYMUX_701 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y14" ))
  \read<1>/SRINV  (
    .I(reset_IBUF_294),
    .O(\read<1>/SRINV_691 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y14" ))
  \read<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\read<1>/CLKINV_690 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y14" ))
  \read<1>/CEINV  (
    .I(read_not0001_0),
    .O(\read<1>/CEINV_689 )
  );
  X_RAMB16_S36_S36 #(
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .LOC ( "RAMB16_X0Y1" ),
    .SETUP_ALL ( 227 ),
    .SETUP_READ_FIRST ( 227 ))
  \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram  (
    .CLKA(clk_BUFGP),
    .CLKB(clk_BUFGP),
    .ENA(a_en_0),
    .ENB(b_en_0),
    .SSRA(1'b0),
    .SSRB(1'b0),
    .WEA(wren_IBUF_276),
    .WEB(wren_IBUF_276),
    .ADDRA({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> , 
\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> , 
\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> }),
    .ADDRB({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> , 
\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> , 
\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> }),
    .DIA({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> , 
\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24> , 1'b0
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17> , 
\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> , 1'b0
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> , 
\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> , 1'b0, 
1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> , 
\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> }),
    .DIPA({1'b0, 1'b0, 1'b0, 1'b0}),
    .DIB({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, douta[7], douta[6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, douta[5], douta[4], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0
, 1'b0, douta[3], douta[2], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, douta[1], douta[0]}),
    .DIPB({1'b0, 1'b0, 1'b0, 1'b0}),
    .DOA({\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA31 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA30 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA29 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA28 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA27 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA26 , douta[7], douta[6], 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA23 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA22 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA21 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA20 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA19 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA18 , douta[5], douta[4], 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA15 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA14 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA13 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA12 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA11 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA10 , douta[3], douta[2], 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA7 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA6 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA5 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA4 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA3 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA2 , douta[1], douta[0]}),
    .DOPA({\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA3 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA2 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA1 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA0 }),
    .DOB({\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB31 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB30 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB29 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB28 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB27 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB26 , dout_7_OBUF_292, 
dout_6_OBUF_291, \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB23 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB22 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB21 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB20 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB19 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB18 , dout_5_OBUF_290, 
dout_4_OBUF_288, \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB15 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB14 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB13 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB12 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB11 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB10 , dout_3_OBUF_287, 
dout_2_OBUF_286, \u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB7 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB6 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB5 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB4 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB3 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB2 , dout_1_OBUF_285, 
dout_0_OBUF_284}),
    .DOPB({\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB3 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB2 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB1 , 
\u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB0 })
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y15" ))
  \write<2>/XUSED  (
    .I(N12),
    .O(N12_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y15" ))
  \write<2>/DYMUX  (
    .I(Mcount_write2),
    .O(\write<2>/DYMUX_832 )
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y15" ))
  \write<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\write<2>/CLKINV_823 )
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y15" ))
  \write<2>/CEINV  (
    .I(write_not0001_0),
    .O(\write<2>/CEINV_822 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y12" ))
  \read<2>/XUSED  (
    .I(N02),
    .O(N02_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y12" ))
  \read<2>/DYMUX  (
    .I(Mcount_read2),
    .O(\read<2>/DYMUX_748 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y12" ))
  \read<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\read<2>/CLKINV_739 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y12" ))
  \read<2>/CEINV  (
    .I(read_not0001_0),
    .O(\read<2>/CEINV_738 )
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y12" ))
  \b_en/XUSED  (
    .I(b_en),
    .O(b_en_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y12" ))
  \b_en/YUSED  (
    .I(N3_pack_1),
    .O(N3)
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y13" ))
  \write_not0001/XUSED  (
    .I(write_not0001),
    .O(write_not0001_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y13" ))
  \write_not0001/YUSED  (
    .I(full_OBUF_pack_1),
    .O(full_OBUF_295)
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y13" ))
  \a_en/YUSED  (
    .I(a_en),
    .O(a_en_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y10" ))
  \read_not0001/XUSED  (
    .I(read_not0001),
    .O(read_not0001_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y10" ))
  \read_not0001/YUSED  (
    .I(empty_OBUF_pack_1),
    .O(empty_OBUF_293)
  );
  X_BUF #(
    .LOC ( "PAD38" ))
  \din<5>/IFF/IMUX  (
    .I(\din<5>/INBUF ),
    .O(din_5_IBUF_279)
  );
  X_BUF #(
    .LOC ( "PAD49" ))
  \din<3>/IFF/IMUX  (
    .I(\din<3>/INBUF ),
    .O(din_3_IBUF_277)
  );
  X_BUF #(
    .LOC ( "PAD34" ))
  \din<6>/IFF/IMUX  (
    .I(\din<6>/INBUF ),
    .O(din_6_IBUF_281)
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \din<7>/IFF/IMUX  (
    .I(\din<7>/INBUF ),
    .O(din_7_IBUF_282)
  );
  X_BUF #(
    .LOC ( "PAD35" ))
  \din<2>/IFF/IMUX  (
    .I(\din<2>/INBUF ),
    .O(din_2_IBUF_275)
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  \wren/IFF/IMUX  (
    .I(\wren/INBUF ),
    .O(wren_IBUF_276)
  );
  X_BUF #(
    .LOC ( "PAD51" ))
  \rden/IFF/IMUX  (
    .I(\rden/INBUF ),
    .O(rden_IBUF_280)
  );
  X_BUF #(
    .LOC ( "PAD33" ))
  \din<4>/IFF/IMUX  (
    .I(\din<4>/INBUF ),
    .O(din_4_IBUF_278)
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  \sclr/IFF/IMUX  (
    .I(\sclr/INBUF ),
    .O(sclr_IBUF_289)
  );
  X_BUF #(
    .LOC ( "PAD44" ))
  \reset/IFF/IMUX  (
    .I(\reset/INBUF ),
    .O(reset_IBUF_294)
  );
  X_BUF #(
    .LOC ( "PAD37" ))
  \din<0>/IFF/IMUX  (
    .I(\din<0>/INBUF ),
    .O(din_0_IBUF_296)
  );
  X_BUF #(
    .LOC ( "IPAD36" ))
  \din<1>/IFF/IMUX  (
    .I(\din<1>/INBUF ),
    .O(din_1_IBUF_297)
  );
  X_LUT4 #(
    .INIT ( 16'h1444 ),
    .LOC ( "SLICE_X30Y12" ))
  \Mcount_read_xor<2>11  (
    .ADR0(sclr_IBUF_289),
    .ADR1(read[2]),
    .ADR2(read[1]),
    .ADR3(read[0]),
    .O(Mcount_read2)
  );
  X_FF #(
    .LOC ( "SLICE_X30Y14" ),
    .INIT ( 1'b0 ))
  read_0 (
    .I(\read<1>/DYMUX_701 ),
    .CE(\read<1>/CEINV_689 ),
    .CLK(\read<1>/CLKINV_690 ),
    .SET(GND),
    .RST(\read<1>/SRINV_691 ),
    .O(read[0])
  );
  X_LUT4 #(
    .INIT ( 16'hF600 ),
    .LOC ( "SLICE_X31Y12" ))
  b_en_and00001 (
    .ADR0(read[2]),
    .ADR1(write[2]),
    .ADR2(N3),
    .ADR3(rden_IBUF_280),
    .O(b_en)
  );
  X_LUT4 #(
    .INIT ( 16'h0550 ),
    .LOC ( "SLICE_X30Y14" ))
  \Mcount_read_xor<1>11  (
    .ADR0(sclr_IBUF_289),
    .ADR1(VCC),
    .ADR2(read[1]),
    .ADR3(read[0]),
    .O(Mcount_read1)
  );
  X_FF #(
    .LOC ( "SLICE_X30Y14" ),
    .INIT ( 1'b0 ))
  read_1 (
    .I(\read<1>/DXMUX_717 ),
    .CE(\read<1>/CEINV_689 ),
    .CLK(\read<1>/CLKINV_690 ),
    .SET(GND),
    .RST(\read<1>/SRINV_691 ),
    .O(read[1])
  );
  X_LUT4 #(
    .INIT ( 16'h1111 ),
    .LOC ( "SLICE_X30Y15" ))
  \Mcount_write_xor<0>11  (
    .ADR0(write[0]),
    .ADR1(sclr_IBUF_289),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Mcount_write)
  );
  X_LUT4 #(
    .INIT ( 16'h6FF6 ),
    .LOC ( "SLICE_X31Y12" ))
  empty33_SW0 (
    .ADR0(write[1]),
    .ADR1(read[1]),
    .ADR2(write[0]),
    .ADR3(read[0]),
    .O(N3_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hF96F ),
    .LOC ( "SLICE_X30Y12" ))
  full3_SW0 (
    .ADR0(read[2]),
    .ADR1(write[2]),
    .ADR2(read[1]),
    .ADR3(write[1]),
    .O(N02)
  );
  X_LUT4 #(
    .INIT ( 16'h0033 ),
    .LOC ( "SLICE_X30Y14" ))
  \Mcount_read_xor<0>11  (
    .ADR0(VCC),
    .ADR1(sclr_IBUF_289),
    .ADR2(VCC),
    .ADR3(read[0]),
    .O(Mcount_read)
  );
  X_FF #(
    .LOC ( "SLICE_X30Y15" ),
    .INIT ( 1'b0 ))
  write_0 (
    .I(\write<1>/DYMUX_785 ),
    .CE(\write<1>/CEINV_773 ),
    .CLK(\write<1>/CLKINV_774 ),
    .SET(GND),
    .RST(\write<1>/SRINV_775 ),
    .O(write[0])
  );
  X_FF #(
    .LOC ( "SLICE_X30Y12" ),
    .INIT ( 1'b0 ))
  read_2 (
    .I(\read<2>/DYMUX_748 ),
    .CE(\read<2>/CEINV_738 ),
    .CLK(\read<2>/CLKINV_739 ),
    .SET(GND),
    .RST(\read<2>/FFY/RSTAND_754 ),
    .O(read[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y12" ))
  \read<2>/FFY/RSTAND  (
    .I(reset_IBUF_294),
    .O(\read<2>/FFY/RSTAND_754 )
  );
  X_LUT4 #(
    .INIT ( 16'h1212 ),
    .LOC ( "SLICE_X30Y15" ))
  \Mcount_write_xor<1>11  (
    .ADR0(write[0]),
    .ADR1(sclr_IBUF_289),
    .ADR2(write[1]),
    .ADR3(VCC),
    .O(Mcount_write1)
  );
  X_LUT4 #(
    .INIT ( 16'hCCFC ),
    .LOC ( "SLICE_X31Y13" ))
  write_not00011 (
    .ADR0(VCC),
    .ADR1(sclr_IBUF_289),
    .ADR2(wren_IBUF_276),
    .ADR3(full_OBUF_295),
    .O(write_not0001)
  );
  X_LUT4 #(
    .INIT ( 16'h2211 ),
    .LOC ( "SLICE_X30Y10" ))
  empty33 (
    .ADR0(write[2]),
    .ADR1(N3),
    .ADR2(VCC),
    .ADR3(read[2]),
    .O(empty_OBUF_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0426 ),
    .LOC ( "SLICE_X31Y13" ))
  full3 (
    .ADR0(write[0]),
    .ADR1(read[0]),
    .ADR2(N12_0),
    .ADR3(N02_0),
    .O(full_OBUF_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hCCEE ),
    .LOC ( "SLICE_X30Y10" ))
  read_not00011 (
    .ADR0(rden_IBUF_280),
    .ADR1(sclr_IBUF_289),
    .ADR2(VCC),
    .ADR3(empty_OBUF_293),
    .O(read_not0001)
  );
  X_LUT4 #(
    .INIT ( 16'h4444 ),
    .LOC ( "SLICE_X30Y13" ))
  a_en_and00001 (
    .ADR0(full_OBUF_295),
    .ADR1(wren_IBUF_276),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(a_en)
  );
  X_LUT4 #(
    .INIT ( 16'h7BDE ),
    .LOC ( "SLICE_X31Y15" ))
  full3_SW1 (
    .ADR0(read[1]),
    .ADR1(write[2]),
    .ADR2(write[1]),
    .ADR3(read[2]),
    .O(N12)
  );
  X_FF #(
    .LOC ( "SLICE_X30Y15" ),
    .INIT ( 1'b0 ))
  write_1 (
    .I(\write<1>/DXMUX_801 ),
    .CE(\write<1>/CEINV_773 ),
    .CLK(\write<1>/CLKINV_774 ),
    .SET(GND),
    .RST(\write<1>/SRINV_775 ),
    .O(write[1])
  );
  X_FF #(
    .LOC ( "SLICE_X31Y15" ),
    .INIT ( 1'b0 ))
  write_2 (
    .I(\write<2>/DYMUX_832 ),
    .CE(\write<2>/CEINV_822 ),
    .CLK(\write<2>/CLKINV_823 ),
    .SET(GND),
    .RST(\write<2>/FFY/RSTAND_838 ),
    .O(write[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y15" ))
  \write<2>/FFY/RSTAND  (
    .I(reset_IBUF_294),
    .O(\write<2>/FFY/RSTAND_838 )
  );
  X_LUT4 #(
    .INIT ( 16'h060C ),
    .LOC ( "SLICE_X31Y15" ))
  \Mcount_write_xor<2>11  (
    .ADR0(write[0]),
    .ADR1(write[2]),
    .ADR2(sclr_IBUF_289),
    .ADR3(write[1]),
    .O(Mcount_write2)
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \dout<2>/OUTPUT/OFF/OMUX  (
    .I(dout_2_OBUF_286),
    .O(\dout<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD40" ))
  \dout<1>/OUTPUT/OFF/OMUX  (
    .I(dout_1_OBUF_285),
    .O(\dout<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD39" ))
  \dout<0>/OUTPUT/OFF/OMUX  (
    .I(dout_0_OBUF_284),
    .O(\dout<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD42" ))
  \dout<4>/OUTPUT/OFF/OMUX  (
    .I(dout_4_OBUF_288),
    .O(\dout<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD47" ))
  \full/OUTPUT/OFF/OMUX  (
    .I(full_OBUF_295),
    .O(\full/O )
  );
  X_BUF #(
    .LOC ( "PAD43" ))
  \dout<3>/OUTPUT/OFF/OMUX  (
    .I(dout_3_OBUF_287),
    .O(\dout<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD68" ))
  \dout<5>/OUTPUT/OFF/OMUX  (
    .I(dout_5_OBUF_290),
    .O(\dout<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD45" ))
  \dout<7>/OUTPUT/OFF/OMUX  (
    .I(dout_7_OBUF_292),
    .O(\dout<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD79" ))
  \dout<6>/OUTPUT/OFF/OMUX  (
    .I(dout_6_OBUF_291),
    .O(\dout<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD53" ))
  \empty/OUTPUT/OFF/OMUX  (
    .I(empty_OBUF_293),
    .O(\empty/O )
  );
  X_BUF 
  \NlwBufferBlock_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2>  (
    .I(write[2]),
    .O
(\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> )
  );
  X_BUF 
  \NlwBufferBlock_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1>  (
    .I(write[1]),
    .O
(\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> )
  );
  X_BUF 
  \NlwBufferBlock_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0>  (
    .I(write[0]),
    .O
(\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> )
  );
  X_BUF 
  \NlwBufferBlock_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2>  (
    .I(read[2]),
    .O
(\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> )
  );
  X_BUF 
  \NlwBufferBlock_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1>  (
    .I(read[1]),
    .O
(\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> )
  );
  X_BUF 
  \NlwBufferBlock_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0>  (
    .I(read[0]),
    .O
(\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> )
  );
  X_BUF 
  \NlwBufferBlock_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0>  (
    .I(din_0_IBUF_296),
    .O(\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> )
  );
  X_BUF 
  \NlwBufferBlock_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1>  (
    .I(din_1_IBUF_297),
    .O(\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> )
  );
  X_BUF 
  \NlwBufferBlock_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8>  (
    .I(din_2_IBUF_275),
    .O(\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> )
  );
  X_BUF 
  \NlwBufferBlock_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9>  (
    .I(din_3_IBUF_277),
    .O(\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> )
  );
  X_BUF 
  \NlwBufferBlock_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16>  (
    .I(din_4_IBUF_278),
    .O
(\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> )
  );
  X_BUF 
  \NlwBufferBlock_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17>  (
    .I(din_5_IBUF_279),
    .O
(\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17> )
  );
  X_BUF 
  \NlwBufferBlock_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24>  (
    .I(din_6_IBUF_281),
    .O
(\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24> )
  );
  X_BUF 
  \NlwBufferBlock_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25>  (
    .I(din_7_IBUF_282),
    .O
(\NlwBufferSignal_u1/U0/xst_blk_mem_generator/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> )
  );
  X_ZERO   NlwBlock_fifo_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_fifo_VCC (
    .O(VCC)
  );
endmodule


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

