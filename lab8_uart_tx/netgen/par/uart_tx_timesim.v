////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: uart_tx_timesim.v
// /___/   /\     Timestamp: Mon Oct 20 14:19:35 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf uart_tx.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim uart_tx.ncd uart_tx_timesim.v 
// Device	: 3s100ecp132-5 (PRODUCTION 1.27 2013-06-08)
// Input file	: uart_tx.ncd
// Output file	: C:\Users\James\Desktop\iDriveSync\IDrive-Sync\DSD LAB\lab8\netgen\par\uart_tx_timesim.v
// # of Modules	: 1
// Design Name	: uart_tx
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

module uart_tx (
  clk, rden, wren, reset, txout, dout, addr, din
);
  input clk;
  input rden;
  input wren;
  input reset;
  output txout;
  output [7 : 0] dout;
  input [2 : 0] addr;
  input [7 : 0] din;
  wire addr_2_IBUF_853;
  wire din_2_IBUF_854;
  wire wren_IBUF_855;
  wire din_3_IBUF_856;
  wire din_4_IBUF_857;
  wire din_5_IBUF_858;
  wire rden_IBUF_859;
  wire din_6_IBUF_860;
  wire din_7_IBUF_861;
  wire reset_IBUF_872;
  wire addr_0_IBUF_873;
  wire din_0_IBUF_874;
  wire addr_1_IBUF_875;
  wire din_1_IBUF_876;
  wire clk_BUFGP;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ;
  wire \baud1/baud_cmp_eq0000_0 ;
  wire N36;
  wire pstate_FSM_FFd2_907;
  wire empty;
  wire N14;
  wire pstate_FSM_FFd1_910;
  wire \baud1/baud_911 ;
  wire N27_0;
  wire shift_out_not0001_0;
  wire \baud1/baud_cmp_eq0000826/O ;
  wire \baud1/baud_cmp_eq0000853_0 ;
  wire \baud1/baud_cmp_eq0000893_0 ;
  wire \baud1/baud_cmp_eq00008120_0 ;
  wire control_1_not00017_0;
  wire \control_1_not000121/O ;
  wire \bitcounter_not0001_SW0/O ;
  wire bitcounter_not0001_0;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_928 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O ;
  wire \fifo1/N8_0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_937 ;
  wire \pstate_FSM_FFd1-In3_SW0/O ;
  wire N16_0;
  wire \baud1/Madd_timer_addsub0000_cy[3] ;
  wire N44_0;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O ;
  wire \fifo1/N6_0 ;
  wire \baud1/Madd_timer_addsub0000_cy[5] ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_951 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_0 ;
  wire \fifo1/N01_0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_0 ;
  wire N46_0;
  wire N47_0;
  wire N34_0;
  wire N42_0;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_979 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_980 ;
  wire pstate_FSM_FFd2_1_981;
  wire ld_shift;
  wire bittime_0;
  wire wr_baud_0;
  wire N2;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_987 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ;
  wire N3;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1004 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1005 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_1008 ;
  wire wr_fifo;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_1011 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_1012 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_1013 ;
  wire N25;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_1015 ;
  wire full;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_1017 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_1018 ;
  wire N30_0;
  wire N29;
  wire \addr<2>/INBUF ;
  wire \din<2>/INBUF ;
  wire \wren/INBUF ;
  wire \din<3>/INBUF ;
  wire \din<4>/INBUF ;
  wire \din<5>/INBUF ;
  wire \rden/INBUF ;
  wire \din<6>/INBUF ;
  wire \din<7>/INBUF ;
  wire \clk/INBUF ;
  wire \dout<0>/O ;
  wire \dout<1>/O ;
  wire \dout<2>/O ;
  wire \dout<3>/O ;
  wire \dout<4>/O ;
  wire \dout<5>/O ;
  wire \dout<6>/O ;
  wire \dout<7>/O ;
  wire \txout/O ;
  wire \reset/INBUF ;
  wire \addr<0>/INBUF ;
  wire \din<0>/INBUF ;
  wire \addr<1>/INBUF ;
  wire \din<1>/INBUF ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB3 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB2 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB1 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB31 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB30 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB29 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB28 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB27 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB26 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB23 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB22 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB21 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB20 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB19 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB18 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB15 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB14 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB13 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB12 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB11 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB10 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB7 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB6 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB5 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB4 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB3 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB2 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA3 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA2 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA1 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA31 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA30 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA29 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA28 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA27 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA26 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA25 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA24 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA23 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA22 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA21 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA20 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA19 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA18 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA17 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA16 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA15 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA14 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA13 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA12 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA11 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA10 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA9 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA8 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA7 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA6 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA5 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA4 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA3 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA2 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA1 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB3 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB2 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB1 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB31 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB30 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB29 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB28 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB27 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB26 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB25 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB24 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB23 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB22 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB21 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB20 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB19 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB18 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB17 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB16 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB15 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB14 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB13 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB12 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB11 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB10 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB9 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB8 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB7 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB6 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB5 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB4 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB3 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB2 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB1 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB0 ;
  wire \dout_1_OBUF/F5MUX_1382 ;
  wire \dout<1>1_1380 ;
  wire \dout_1_OBUF/BXINV_1375 ;
  wire \dout<1>2_1373 ;
  wire \dout_0_OBUF/F5MUX_1407 ;
  wire \dout<0>1_1405 ;
  wire \dout_0_OBUF/BXINV_1400 ;
  wire \dout<0>2_1398 ;
  wire \baud1/timer<1>/DXMUX_1437 ;
  wire N36_pack_2;
  wire \baud1/timer<1>/CLKINV_1419 ;
  wire shift_out_not0001;
  wire N14_pack_1;
  wire \baud1/baud_cmp_eq0000 ;
  wire \baud1/baud_cmp_eq0000826/O_pack_1 ;
  wire control_1_not0001;
  wire \control_1_not000121/O_pack_1 ;
  wire bitcounter_not0001_1537;
  wire \bitcounter_not0001_SW0/O_pack_1 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_1569 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_1568 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O_pack_1 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_1553 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FFX/SET ;
  wire N16;
  wire \pstate_FSM_FFd1-In3_SW0/O_pack_1 ;
  wire N44;
  wire \baud1/Madd_timer_addsub0000_cy<3>_pack_1 ;
  wire \fifo1/N8 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O_pack_1 ;
  wire \baud1/timer<6>/DXMUX_1675 ;
  wire \baud1/Madd_timer_addsub0000_cy<5>_pack_2 ;
  wire \baud1/timer<6>/CLKINV_1658 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_1710 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O_pack_2 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_1694 ;
  wire \shift_out<5>/DXMUX_1753 ;
  wire \shift_out<5>/DYMUX_1739 ;
  wire \shift_out<5>/SRINV_1731 ;
  wire \shift_out<5>/CLKINV_1730 ;
  wire \shift_out<5>/CEINV_1729 ;
  wire \shift_out<7>/DXMUX_1797 ;
  wire \shift_out<7>/DYMUX_1783 ;
  wire \shift_out<7>/SRINV_1775 ;
  wire \shift_out<7>/CLKINV_1774 ;
  wire \shift_out<7>/CEINV_1773 ;
  wire N46;
  wire \shift_out<8>/DYMUX_1826 ;
  wire \shift_out<8>/CLKINV_1816 ;
  wire \shift_out<8>/CEINV_1815 ;
  wire \shift_out<8>/FFY/SET ;
  wire N47;
  wire \baud1/timer<0>/DYMUX_1862 ;
  wire \baud1/timer<0>/CLKINV_1853 ;
  wire \baud1/timer<3>/FFX/RST ;
  wire \baud1/timer<3>/DXMUX_1911 ;
  wire \baud1/timer<3>/DYMUX_1897 ;
  wire \baud1/timer<3>/SRINV_1889 ;
  wire \baud1/timer<3>/CLKINV_1888 ;
  wire \baud1/timer<5>/DXMUX_1953 ;
  wire \baud1/timer<5>/DYMUX_1939 ;
  wire \baud1/timer<5>/SRINV_1931 ;
  wire \baud1/timer<5>/CLKINV_1930 ;
  wire \baud1/timer<7>/DYMUX_1976 ;
  wire \baud1/timer<7>/CLKINV_1967 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_2021 ;
  wire \fifo1/Result<3>1 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_2006 ;
  wire \fifo1/Result<2>1 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_1997 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_1996 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_1995 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/FFY/RST ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_2067 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_2052 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2043 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2042 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2041 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_2110 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX_2096 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_2088 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_2087 ;
  wire bittime;
  wire \pstate_FSM_FFd2_1/DYMUX_2137 ;
  wire \pstate_FSM_FFd2_1/GYMUX_2136 ;
  wire \pstate_FSM_FFd2-In ;
  wire \pstate_FSM_FFd2_1/CLKINV_2128 ;
  wire wr_baud;
  wire \control<1>/DYMUX_2176 ;
  wire control_1_mux0000;
  wire \control<1>/CLKINV_2167 ;
  wire \control<1>/CEINV_2166 ;
  wire \bitcounter<2>/DXMUX_2229 ;
  wire Mcount_bitcounter2;
  wire \bitcounter<2>/DYMUX_2213 ;
  wire Mcount_bitcounter1;
  wire \bitcounter<2>/SRINV_2204 ;
  wire \bitcounter<2>/CLKINV_2203 ;
  wire \bitcounter<2>/CEINV_2202 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX_2259 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_2258 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or0000 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_2250 ;
  wire \bittimer<3>/DXMUX_2310 ;
  wire \bittimer<3>/DYMUX_2295 ;
  wire \bittimer<3>/SRINV_2286 ;
  wire \bittimer<3>/CLKINV_2285 ;
  wire \bittimer<3>/CEINV_2284 ;
  wire \shift_out<1>/DXMUX_2355 ;
  wire \shift_out<1>/DYMUX_2341 ;
  wire \shift_out<1>/SRINV_2332 ;
  wire \shift_out<1>/CLKINV_2331 ;
  wire \shift_out<1>/CEINV_2330 ;
  wire \shift_out<3>/DXMUX_2399 ;
  wire \shift_out<3>/DYMUX_2385 ;
  wire \shift_out<3>/SRINV_2377 ;
  wire \shift_out<3>/CLKINV_2376 ;
  wire \shift_out<3>/CEINV_2375 ;
  wire dout_2_OBUF_2427;
  wire dout_3_OBUF_2419;
  wire dout_5_OBUF_2451;
  wire dout_4_OBUF_2443;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX_2463 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV_2462 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV_2460 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV_2459 ;
  wire \baud1/period<1>/DXMUX_2490 ;
  wire \baud1/period<1>/DYMUX_2481 ;
  wire \baud1/period<1>/SRINV_2479 ;
  wire \baud1/period<1>/CLKINV_2478 ;
  wire \baud1/period<1>/CEINV_2477 ;
  wire \baud1/period<3>/DXMUX_2517 ;
  wire \baud1/period<3>/DYMUX_2508 ;
  wire \baud1/period<3>/SRINV_2506 ;
  wire \baud1/period<3>/CLKINV_2505 ;
  wire \baud1/period<3>/CEINV_2504 ;
  wire \baud1/baud_cmp_eq00008120_2545 ;
  wire dout_6_OBUF_2538;
  wire \baud1/period<5>/DXMUX_2567 ;
  wire \baud1/period<5>/DYMUX_2559 ;
  wire \baud1/period<5>/SRINV_2557 ;
  wire \baud1/period<5>/CLKINV_2556 ;
  wire \baud1/period<5>/CEINV_2555 ;
  wire \bitcounter<0>/DXMUX_2605 ;
  wire Mcount_bitcounter;
  wire N2_pack_2;
  wire \bitcounter<0>/CLKINV_2588 ;
  wire \bitcounter<0>/CEINV_2587 ;
  wire \baud1/period<7>/DXMUX_2633 ;
  wire \baud1/period<7>/DYMUX_2624 ;
  wire \baud1/period<7>/SRINV_2622 ;
  wire \baud1/period<7>/CLKINV_2621 ;
  wire \baud1/period<7>/CEINV_2620 ;
  wire \baud1/baud/DYMUX_2650 ;
  wire \baud1/baud/CLKINV_2647 ;
  wire \baud1/baud/CEINV_2646 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX_2670 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX_2665 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_2663 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ;
  wire ld_shift_pack_1;
  wire dout_7_OBUF_2719;
  wire N3_pack_1;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX_2775 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_2772 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX_2759 ;
  wire \fifo1/Result<1>1 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_2749 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_2748 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_2747 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_2823 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_2820 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_2805 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_2795 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_2794 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_2793 ;
  wire \fifo1/N01 ;
  wire wr_fifo_pack_1;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_2875 ;
  wire \fifo1/N6 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/DYMUX_2887 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/BYINV_2886 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLKINV_2884 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CEINV_2883 ;
  wire \to_shift<1>/DXMUX_2912 ;
  wire \to_shift<1>/DYMUX_2905 ;
  wire \to_shift<1>/SRINV_2903 ;
  wire \to_shift<1>/CLKINV_2902 ;
  wire \to_shift<1>/CEINV_2901 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ;
  wire \to_shift<3>/DXMUX_2948 ;
  wire \to_shift<3>/DYMUX_2941 ;
  wire \to_shift<3>/SRINV_2939 ;
  wire \to_shift<3>/CLKINV_2938 ;
  wire \to_shift<3>/CEINV_2937 ;
  wire \to_shift<5>/DXMUX_2972 ;
  wire \to_shift<5>/DYMUX_2965 ;
  wire \to_shift<5>/SRINV_2963 ;
  wire \to_shift<5>/CLKINV_2962 ;
  wire \to_shift<5>/CEINV_2961 ;
  wire \to_shift<7>/DXMUX_2996 ;
  wire \to_shift<7>/DYMUX_2989 ;
  wire \to_shift<7>/SRINV_2987 ;
  wire \to_shift<7>/CLKINV_2986 ;
  wire \to_shift<7>/CEINV_2985 ;
  wire N34;
  wire \baud1/baud_cmp_eq0000853_3016 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_3038 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_3070 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_3061 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3059 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3058 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3057 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/FFY/RST ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/FFX/RST ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_3098 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_3089 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3087 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3086 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3085 ;
  wire \pstate_FSM_FFd1/FFY/RST ;
  wire \pstate_FSM_FFd1/FFX/RST ;
  wire \pstate_FSM_FFd1/DXMUX_3144 ;
  wire \pstate_FSM_FFd1-In_3141 ;
  wire \pstate_FSM_FFd1/DYMUX_3130 ;
  wire N25_pack_2;
  wire \pstate_FSM_FFd1/SRINV_3121 ;
  wire \pstate_FSM_FFd1/CLKINV_3120 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/FFY/RST ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/FFX/RST ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_3171 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_3162 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_3160 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_3159 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_3158 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_3199 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_3190 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_3188 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_3187 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_3186 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DXMUX_3223 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DYMUX_3216 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/BYINV_3215 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV_3214 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV_3213 ;
  wire \control<0>/DYMUX_3236 ;
  wire \control<0>/CLKINV_3233 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX_3258 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV_3257 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX_3251 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV_3250 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_3249 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_3248 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/DYMUX_3271 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLKINV_3268 ;
  wire \baud1/baud_cmp_eq0000893_3286 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb ;
  wire N42;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/DYMUX_3320 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLKINV_3317 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DXMUX_3339 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DYMUX_3334 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV_3332 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_3352 ;
  wire \bittimer<0>/DXMUX_3396 ;
  wire N27;
  wire \bittimer<0>/DYMUX_3379 ;
  wire \bittimer<0>/SRINV_3369 ;
  wire \bittimer<0>/CLKINV_3368 ;
  wire \bittimer<0>/CEINV_3367 ;
  wire \full/DYMUX_3411 ;
  wire \full/CLKINV_3408 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/DYMUX_3424 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/BYINV_3423 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/CLKINV_3421 ;
  wire \empty/DYMUX_3437 ;
  wire \empty/CLKINV_3434 ;
  wire \bitcounter<3>/DXMUX_3473 ;
  wire Mcount_bitcounter3;
  wire N29_pack_2;
  wire \bitcounter<3>/CLKINV_3457 ;
  wire \bitcounter<3>/CEINV_3456 ;
  wire N30;
  wire control_1_not00017_3502;
  wire \baud1/timer<7>/FFY/RSTAND_1981 ;
  wire \baud1/timer<1>/FFX/RSTAND_1442 ;
  wire \baud1/timer<6>/FFX/RSTAND_1680 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SET ;
  wire \baud1/timer<0>/FFY/RSTAND_1867 ;
  wire \pstate_FSM_FFd2_1/FFY/RSTAND_2142 ;
  wire \control<1>/FFY/RSTAND_2182 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SET ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SET ;
  wire \bitcounter<0>/FFX/RSTAND_2611 ;
  wire \baud1/baud/FFY/RSTAND_2656 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/FFY/SET ;
  wire \control<0>/FFY/SET ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/FFY/SET ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/FFY/RSTAND_3325 ;
  wire \full/FFY/SET ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/FFY/SET ;
  wire \empty/FFY/SET ;
  wire \bitcounter<3>/FFX/RSTAND_3479 ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> ;
  wire GND;
  wire VCC;
  wire [8 : 0] shift_out;
  wire [3 : 0] \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 ;
  wire [3 : 0] \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 ;
  wire [7 : 0] \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem ;
  wire [1 : 0] control;
  wire [7 : 0] \baud1/period ;
  wire [7 : 0] \baud1/timer ;
  wire [3 : 0] bittimer;
  wire [3 : 0] bitcounter;
  wire [3 : 0] \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count ;
  wire [7 : 0] to_shift;
  wire [1 : 1] \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg ;
  wire [3 : 0] \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count ;
  wire [7 : 0] \baud1/timer_mux0000 ;
  wire [8 : 0] shift_out_mux0000;
  wire [3 : 1] \fifo1/Result ;
  wire [3 : 1] Result;
  initial $sdf_annotate("netgen/par/uart_tx_timesim.sdf");
  X_IPAD #(
    .LOC ( "PAD54" ))
  \addr<2>/PAD  (
    .PAD(addr[2])
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  addr_2_IBUF (
    .I(addr[2]),
    .O(\addr<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD34" ))
  \din<2>/PAD  (
    .PAD(din[2])
  );
  X_BUF #(
    .LOC ( "PAD34" ))
  din_2_IBUF (
    .I(din[2]),
    .O(\din<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD43" ))
  \wren/PAD  (
    .PAD(wren)
  );
  X_BUF #(
    .LOC ( "PAD43" ))
  wren_IBUF (
    .I(wren),
    .O(\wren/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD39" ))
  \din<3>/PAD  (
    .PAD(din[3])
  );
  X_BUF #(
    .LOC ( "PAD39" ))
  din_3_IBUF (
    .I(din[3]),
    .O(\din<3>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD39" ))
  \din<3>/IFF/IMUX  (
    .I(\din<3>/INBUF ),
    .O(din_3_IBUF_856)
  );
  X_IPAD #(
    .LOC ( "PAD31" ))
  \din<4>/PAD  (
    .PAD(din[4])
  );
  X_BUF #(
    .LOC ( "PAD31" ))
  din_4_IBUF (
    .I(din[4]),
    .O(\din<4>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD35" ))
  \din<5>/PAD  (
    .PAD(din[5])
  );
  X_BUF #(
    .LOC ( "PAD35" ))
  din_5_IBUF (
    .I(din[5]),
    .O(\din<5>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD28" ))
  \rden/PAD  (
    .PAD(rden)
  );
  X_BUF #(
    .LOC ( "PAD28" ))
  rden_IBUF (
    .I(rden),
    .O(\rden/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD30" ))
  \din<6>/PAD  (
    .PAD(din[6])
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  din_6_IBUF (
    .I(din[6]),
    .O(\din<6>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD33" ))
  \din<7>/PAD  (
    .PAD(din[7])
  );
  X_BUF #(
    .LOC ( "PAD33" ))
  din_7_IBUF (
    .I(din[7]),
    .O(\din<7>/INBUF )
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
  X_OPAD #(
    .LOC ( "PAD45" ))
  \dout<0>/PAD  (
    .PAD(dout[0])
  );
  X_OBUF #(
    .LOC ( "PAD45" ))
  dout_0_OBUF (
    .I(\dout<0>/O ),
    .O(dout[0])
  );
  X_OPAD #(
    .LOC ( "PAD51" ))
  \dout<1>/PAD  (
    .PAD(dout[1])
  );
  X_OBUF #(
    .LOC ( "PAD51" ))
  dout_1_OBUF (
    .I(\dout<1>/O ),
    .O(dout[1])
  );
  X_OPAD #(
    .LOC ( "PAD52" ))
  \dout<2>/PAD  (
    .PAD(dout[2])
  );
  X_OBUF #(
    .LOC ( "PAD52" ))
  dout_2_OBUF (
    .I(\dout<2>/O ),
    .O(dout[2])
  );
  X_OPAD #(
    .LOC ( "PAD49" ))
  \dout<3>/PAD  (
    .PAD(dout[3])
  );
  X_OBUF #(
    .LOC ( "PAD49" ))
  dout_3_OBUF (
    .I(\dout<3>/O ),
    .O(dout[3])
  );
  X_OPAD #(
    .LOC ( "PAD44" ))
  \dout<4>/PAD  (
    .PAD(dout[4])
  );
  X_OBUF #(
    .LOC ( "PAD44" ))
  dout_4_OBUF (
    .I(\dout<4>/O ),
    .O(dout[4])
  );
  X_OPAD #(
    .LOC ( "PAD48" ))
  \dout<5>/PAD  (
    .PAD(dout[5])
  );
  X_OBUF #(
    .LOC ( "PAD48" ))
  dout_5_OBUF (
    .I(\dout<5>/O ),
    .O(dout[5])
  );
  X_OPAD #(
    .LOC ( "PAD38" ))
  \dout<6>/PAD  (
    .PAD(dout[6])
  );
  X_OBUF #(
    .LOC ( "PAD38" ))
  dout_6_OBUF (
    .I(\dout<6>/O ),
    .O(dout[6])
  );
  X_OPAD #(
    .LOC ( "PAD42" ))
  \dout<7>/PAD  (
    .PAD(dout[7])
  );
  X_OBUF #(
    .LOC ( "PAD42" ))
  dout_7_OBUF (
    .I(\dout<7>/O ),
    .O(dout[7])
  );
  X_OPAD #(
    .LOC ( "PAD37" ))
  \txout/PAD  (
    .PAD(txout)
  );
  X_OBUF #(
    .LOC ( "PAD37" ))
  txout_OBUF (
    .I(\txout/O ),
    .O(txout)
  );
  X_IPAD #(
    .LOC ( "PAD29" ))
  \reset/PAD  (
    .PAD(reset)
  );
  X_BUF #(
    .LOC ( "PAD29" ))
  reset_IBUF (
    .I(reset),
    .O(\reset/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD53" ))
  \addr<0>/PAD  (
    .PAD(addr[0])
  );
  X_BUF #(
    .LOC ( "PAD53" ))
  addr_0_IBUF (
    .I(addr[0]),
    .O(\addr<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD40" ))
  \din<0>/PAD  (
    .PAD(din[0])
  );
  X_BUF #(
    .LOC ( "PAD40" ))
  din_0_IBUF (
    .I(din[0]),
    .O(\din<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD47" ))
  \addr<1>/PAD  (
    .PAD(addr[1])
  );
  X_BUF #(
    .LOC ( "PAD47" ))
  addr_1_IBUF (
    .I(addr[1]),
    .O(\addr<1>/INBUF )
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
  X_RAMB16_S36_S36 #(
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .WRITE_MODE_A ( "NO_CHANGE" ),
    .WRITE_MODE_B ( "NO_CHANGE" ),
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
    .LOC ( "RAMB16_X0Y3" ),
    .SETUP_ALL ( 227 ),
    .SETUP_READ_FIRST ( 227 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram  (
    .CLKA(clk_BUFGP),
    .CLKB(clk_BUFGP),
    .ENA(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .ENB(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 ),
    .SSRA(1'b0),
    .SSRB(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .WEA(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .WEB(1'b0),
    .ADDRA({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3> 
, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> 
, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> 
, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> 
}),
    .ADDRB({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> 
, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> 
, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> 
, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> 
}),
    .DIA({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> 
, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17> 
, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> 
, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> 
, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> 
}),
    .DIPA({1'b0, 1'b0, 1'b0, 1'b0}),
    .DIB({
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB31 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB30 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB29 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB28 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB27 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB26 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB25 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB24 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB23 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB22 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB21 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB20 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB19 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB18 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB17 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB16 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB15 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB14 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB13 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB12 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB11 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB10 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB9 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB8 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB7 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB6 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB5 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB4 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB3 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB2 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB1 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB0 
}),
    .DIPB({
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB3 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB2 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB1 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB0 
}),
    .DOA({
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA31 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA30 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA29 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA28 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA27 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA26 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA25 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA24 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA23 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA22 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA21 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA20 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA19 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA18 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA17 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA16 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA15 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA14 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA13 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA12 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA11 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA10 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA9 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA8 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA7 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA6 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA5 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA4 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA3 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA2 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA1 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA0 
}),
    .DOPA({
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA3 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA2 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA1 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA0 
}),
    .DOB({
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB31 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB30 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB29 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB28 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB27 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB26 
, \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [7], 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [6], 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB23 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB22 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB21 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB20 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB19 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB18 
, \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [5], 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [4], 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB15 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB14 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB13 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB12 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB11 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB10 
, \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [3], 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [2], 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB7 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB6 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB5 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB4 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB3 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB2 
, \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [1], 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [0]}),
    .DOPB({
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB3 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB2 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB1 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB0 
})
  );
  X_MUX2 #(
    .LOC ( "SLICE_X31Y20" ))
  \dout_1_OBUF/F5MUX  (
    .IA(\dout<1>2_1373 ),
    .IB(\dout<1>1_1380 ),
    .SEL(\dout_1_OBUF/BXINV_1375 ),
    .O(\dout_1_OBUF/F5MUX_1382 )
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y20" ))
  \dout_1_OBUF/BXINV  (
    .I(addr_1_IBUF_875),
    .O(\dout_1_OBUF/BXINV_1375 )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X29Y21" ))
  \dout<0>1  (
    .ADR0(addr_0_IBUF_873),
    .ADR1(control[0]),
    .ADR2(rden_IBUF_859),
    .ADR3(addr_2_IBUF_853),
    .O(\dout<0>1_1405 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X29Y21" ))
  \dout_0_OBUF/F5MUX  (
    .IA(\dout<0>2_1398 ),
    .IB(\dout<0>1_1405 ),
    .SEL(\dout_0_OBUF/BXINV_1400 ),
    .O(\dout_0_OBUF/F5MUX_1407 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y21" ))
  \dout_0_OBUF/BXINV  (
    .I(addr_1_IBUF_875),
    .O(\dout_0_OBUF/BXINV_1400 )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ),
    .LOC ( "SLICE_X29Y21" ))
  \dout<0>2  (
    .ADR0(addr_0_IBUF_873),
    .ADR1(addr_2_IBUF_853),
    .ADR2(rden_IBUF_859),
    .ADR3(\baud1/period [0]),
    .O(\dout<0>2_1398 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y27" ))
  \baud1/timer<1>/DXMUX  (
    .I(\baud1/timer_mux0000 [6]),
    .O(\baud1/timer<1>/DXMUX_1437 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y27" ))
  \baud1/timer<1>/YUSED  (
    .I(N36_pack_2),
    .O(N36)
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y27" ))
  \baud1/timer<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/timer<1>/CLKINV_1419 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y26" ))
  \shift_out_not0001/XUSED  (
    .I(shift_out_not0001),
    .O(shift_out_not0001_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y26" ))
  \shift_out_not0001/YUSED  (
    .I(N14_pack_1),
    .O(N14)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X27Y25" ))
  \baud1/baud_cmp_eq00008136  (
    .ADR0(\baud1/baud_cmp_eq0000826/O ),
    .ADR1(\baud1/baud_cmp_eq0000893_0 ),
    .ADR2(\baud1/baud_cmp_eq00008120_0 ),
    .ADR3(\baud1/baud_cmp_eq0000853_0 ),
    .O(\baud1/baud_cmp_eq0000 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y25" ))
  \baud1/baud_cmp_eq0000/XUSED  (
    .I(\baud1/baud_cmp_eq0000 ),
    .O(\baud1/baud_cmp_eq0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y25" ))
  \baud1/baud_cmp_eq0000/YUSED  (
    .I(\baud1/baud_cmp_eq0000826/O_pack_1 ),
    .O(\baud1/baud_cmp_eq0000826/O )
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ),
    .LOC ( "SLICE_X27Y25" ))
  \baud1/baud_cmp_eq0000826  (
    .ADR0(\baud1/timer [1]),
    .ADR1(\baud1/period [1]),
    .ADR2(\baud1/period [0]),
    .ADR3(\baud1/timer [0]),
    .O(\baud1/baud_cmp_eq0000826/O_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y22" ))
  \control_1_not0001/YUSED  (
    .I(\control_1_not000121/O_pack_1 ),
    .O(\control_1_not000121/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y24" ))
  \bitcounter_not0001/XUSED  (
    .I(bitcounter_not0001_1537),
    .O(bitcounter_not0001_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y24" ))
  \bitcounter_not0001/YUSED  (
    .I(\bitcounter_not0001_SW0/O_pack_1 ),
    .O(\bitcounter_not0001_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_1568 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_1569 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_1568 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/YUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O_pack_1 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_1553 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y23" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_1569 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_1553 ),
    .SET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FFX/SET ),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_937 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FFX/SETOR  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_928 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FFX/SET )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y24" ))
  \N16/XUSED  (
    .I(N16),
    .O(N16_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y24" ))
  \N16/YUSED  (
    .I(\pstate_FSM_FFd1-In3_SW0/O_pack_1 ),
    .O(\pstate_FSM_FFd1-In3_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y25" ))
  \N44/XUSED  (
    .I(N44),
    .O(N44_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y25" ))
  \N44/YUSED  (
    .I(\baud1/Madd_timer_addsub0000_cy<3>_pack_1 ),
    .O(\baud1/Madd_timer_addsub0000_cy[3] )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y22" ))
  \fifo1/N8/XUSED  (
    .I(\fifo1/N8 ),
    .O(\fifo1/N8_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y22" ))
  \fifo1/N8/YUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O_pack_1 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O )
  );
  X_LUT4 #(
    .INIT ( 16'hA000 ),
    .LOC ( "SLICE_X26Y26" ))
  \baud1/Madd_timer_addsub0000_cy<5>11  (
    .ADR0(\baud1/Madd_timer_addsub0000_cy[3] ),
    .ADR1(VCC),
    .ADR2(\baud1/timer [5]),
    .ADR3(\baud1/timer [4]),
    .O(\baud1/Madd_timer_addsub0000_cy<5>_pack_2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y26" ))
  \baud1/timer<6>/DXMUX  (
    .I(\baud1/timer_mux0000 [1]),
    .O(\baud1/timer<6>/DXMUX_1675 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y26" ))
  \baud1/timer<6>/YUSED  (
    .I(\baud1/Madd_timer_addsub0000_cy<5>_pack_2 ),
    .O(\baud1/Madd_timer_addsub0000_cy[5] )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y26" ))
  \baud1/timer<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/timer<6>/CLKINV_1658 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_1710 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/YUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O_pack_2 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_1694 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y25" ),
    .INIT ( 1'b1 ))
  shift_out_5 (
    .I(\shift_out<5>/DXMUX_1753 ),
    .CE(\shift_out<5>/CEINV_1729 ),
    .CLK(\shift_out<5>/CLKINV_1730 ),
    .SET(\shift_out<5>/SRINV_1731 ),
    .RST(GND),
    .O(shift_out[5])
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y25" ))
  \shift_out<5>/DXMUX  (
    .I(shift_out_mux0000[5]),
    .O(\shift_out<5>/DXMUX_1753 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y25" ))
  \shift_out<5>/DYMUX  (
    .I(shift_out_mux0000[4]),
    .O(\shift_out<5>/DYMUX_1739 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y25" ))
  \shift_out<5>/SRINV  (
    .I(reset_IBUF_872),
    .O(\shift_out<5>/SRINV_1731 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y25" ))
  \shift_out<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shift_out<5>/CLKINV_1730 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y25" ))
  \shift_out<5>/CEINV  (
    .I(shift_out_not0001_0),
    .O(\shift_out<5>/CEINV_1729 )
  );
  X_LUT4 #(
    .INIT ( 16'hFE02 ),
    .LOC ( "SLICE_X15Y25" ))
  \shift_out_mux0000<5>1  (
    .ADR0(to_shift[4]),
    .ADR1(empty),
    .ADR2(pstate_FSM_FFd2_907),
    .ADR3(shift_out[6]),
    .O(shift_out_mux0000[5])
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y26" ))
  \shift_out<7>/DXMUX  (
    .I(shift_out_mux0000[7]),
    .O(\shift_out<7>/DXMUX_1797 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y26" ))
  \shift_out<7>/DYMUX  (
    .I(shift_out_mux0000[6]),
    .O(\shift_out<7>/DYMUX_1783 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y26" ))
  \shift_out<7>/SRINV  (
    .I(reset_IBUF_872),
    .O(\shift_out<7>/SRINV_1775 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y26" ))
  \shift_out<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shift_out<7>/CLKINV_1774 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y26" ))
  \shift_out<7>/CEINV  (
    .I(shift_out_not0001_0),
    .O(\shift_out<7>/CEINV_1773 )
  );
  X_LUT4 #(
    .INIT ( 16'h30FF ),
    .LOC ( "SLICE_X19Y26" ))
  \baud1/timer_mux0000<0>11_SW6  (
    .ADR0(VCC),
    .ADR1(pstate_FSM_FFd2_907),
    .ADR2(empty),
    .ADR3(\baud1/timer [7]),
    .O(N46)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \shift_out<8>/XUSED  (
    .I(N46),
    .O(N46_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \shift_out<8>/DYMUX  (
    .I(shift_out_mux0000[8]),
    .O(\shift_out<8>/DYMUX_1826 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \shift_out<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shift_out<8>/CLKINV_1816 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \shift_out<8>/CEINV  (
    .I(shift_out_not0001_0),
    .O(\shift_out<8>/CEINV_1815 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y26" ),
    .INIT ( 1'b1 ))
  shift_out_8 (
    .I(\shift_out<8>/DYMUX_1826 ),
    .CE(\shift_out<8>/CEINV_1815 ),
    .CLK(\shift_out<8>/CLKINV_1816 ),
    .SET(\shift_out<8>/FFY/SET ),
    .RST(GND),
    .O(shift_out[8])
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \shift_out<8>/FFY/SETOR  (
    .I(reset_IBUF_872),
    .O(\shift_out<8>/FFY/SET )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y27" ))
  \baud1/timer<0>/XUSED  (
    .I(N47),
    .O(N47_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y27" ))
  \baud1/timer<0>/DYMUX  (
    .I(\baud1/timer_mux0000 [7]),
    .O(\baud1/timer<0>/DYMUX_1862 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y27" ))
  \baud1/timer<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/timer<0>/CLKINV_1853 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y23" ))
  \baud1/timer<3>/FFX/RSTOR  (
    .I(\baud1/timer<3>/SRINV_1889 ),
    .O(\baud1/timer<3>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X27Y23" ),
    .INIT ( 1'b0 ))
  \baud1/timer_3  (
    .I(\baud1/timer<3>/DXMUX_1911 ),
    .CE(VCC),
    .CLK(\baud1/timer<3>/CLKINV_1888 ),
    .SET(GND),
    .RST(\baud1/timer<3>/FFX/RST ),
    .O(\baud1/timer [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y23" ))
  \baud1/timer<3>/DXMUX  (
    .I(\baud1/timer_mux0000 [4]),
    .O(\baud1/timer<3>/DXMUX_1911 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y23" ))
  \baud1/timer<3>/DYMUX  (
    .I(\baud1/timer_mux0000 [5]),
    .O(\baud1/timer<3>/DYMUX_1897 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y23" ))
  \baud1/timer<3>/SRINV  (
    .I(reset_IBUF_872),
    .O(\baud1/timer<3>/SRINV_1889 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y23" ))
  \baud1/timer<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/timer<3>/CLKINV_1888 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y24" ))
  \baud1/timer<5>/DXMUX  (
    .I(\baud1/timer_mux0000 [2]),
    .O(\baud1/timer<5>/DXMUX_1953 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y24" ))
  \baud1/timer<5>/DYMUX  (
    .I(\baud1/timer_mux0000 [3]),
    .O(\baud1/timer<5>/DYMUX_1939 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y24" ))
  \baud1/timer<5>/SRINV  (
    .I(reset_IBUF_872),
    .O(\baud1/timer<5>/SRINV_1931 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y24" ))
  \baud1/timer<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/timer<5>/CLKINV_1930 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y26" ))
  \baud1/timer<7>/DYMUX  (
    .I(\baud1/timer_mux0000 [0]),
    .O(\baud1/timer<7>/DYMUX_1976 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y26" ))
  \baud1/timer<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/timer<7>/CLKINV_1967 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX  (
    .I(\fifo1/Result<3>1 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_2021 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX  (
    .I(\fifo1/Result<2>1 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_2006 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_1997 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_1996 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_1995 )
  );
  X_LUT4 #(
    .INIT ( 16'h78F0 ),
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<3>11  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\fifo1/Result [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/FFY/RSTOR  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2043 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/FFY/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y27" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_2  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_2052 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2041 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2042 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/FFY/RST ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2])
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX  (
    .I(\fifo1/Result [3]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_2067 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX  (
    .I(\fifo1/Result [2]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_2052 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2043 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2042 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2041 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_2110 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX_2096 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_2088 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_2087 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFAB ),
    .LOC ( "SLICE_X17Y25" ))
  \pstate_FSM_FFd2-In1  (
    .ADR0(pstate_FSM_FFd1_910),
    .ADR1(empty),
    .ADR2(pstate_FSM_FFd2_907),
    .ADR3(N16_0),
    .O(\pstate_FSM_FFd2-In )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y25" ))
  \pstate_FSM_FFd2_1/XUSED  (
    .I(bittime),
    .O(bittime_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y25" ))
  \pstate_FSM_FFd2_1/DYMUX  (
    .I(\pstate_FSM_FFd2_1/GYMUX_2136 ),
    .O(\pstate_FSM_FFd2_1/DYMUX_2137 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y25" ))
  \pstate_FSM_FFd2_1/GYMUX  (
    .I(\pstate_FSM_FFd2-In ),
    .O(\pstate_FSM_FFd2_1/GYMUX_2136 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y25" ))
  \pstate_FSM_FFd2_1/CLKINV  (
    .I(clk_BUFGP),
    .O(\pstate_FSM_FFd2_1/CLKINV_2128 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y20" ))
  \control<1>/XUSED  (
    .I(wr_baud),
    .O(wr_baud_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y20" ))
  \control<1>/DYMUX  (
    .I(control_1_mux0000),
    .O(\control<1>/DYMUX_2176 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y20" ))
  \control<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\control<1>/CLKINV_2167 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y20" ))
  \control<1>/CEINV  (
    .I(control_1_not0001),
    .O(\control<1>/CEINV_2166 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y25" ))
  \bitcounter<2>/DXMUX  (
    .I(Mcount_bitcounter2),
    .O(\bitcounter<2>/DXMUX_2229 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y25" ))
  \bitcounter<2>/DYMUX  (
    .I(Mcount_bitcounter1),
    .O(\bitcounter<2>/DYMUX_2213 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y25" ))
  \bitcounter<2>/SRINV  (
    .I(reset_IBUF_872),
    .O(\bitcounter<2>/SRINV_2204 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y25" ))
  \bitcounter<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\bitcounter<2>/CLKINV_2203 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y25" ))
  \bitcounter<2>/CEINV  (
    .I(bitcounter_not0001_0),
    .O(\bitcounter<2>/CEINV_2202 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/XUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_2258 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX_2259 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or0000 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_2258 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_2250 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y31" ))
  \bittimer<3>/DXMUX  (
    .I(Result[3]),
    .O(\bittimer<3>/DXMUX_2310 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y31" ))
  \bittimer<3>/DYMUX  (
    .I(Result[2]),
    .O(\bittimer<3>/DYMUX_2295 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y31" ))
  \bittimer<3>/SRINV  (
    .I(reset_IBUF_872),
    .O(\bittimer<3>/SRINV_2286 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y31" ))
  \bittimer<3>/CLKINV  (
    .I(\baud1/baud_911 ),
    .O(\bittimer<3>/CLKINV_2285 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y31" ))
  \bittimer<3>/CEINV  (
    .I(bittime_0),
    .O(\bittimer<3>/CEINV_2284 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y27" ))
  \shift_out<1>/DXMUX  (
    .I(shift_out_mux0000[1]),
    .O(\shift_out<1>/DXMUX_2355 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y27" ))
  \shift_out<1>/DYMUX  (
    .I(shift_out_mux0000[0]),
    .O(\shift_out<1>/DYMUX_2341 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y27" ))
  \shift_out<1>/SRINV  (
    .I(reset_IBUF_872),
    .O(\shift_out<1>/SRINV_2332 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y27" ))
  \shift_out<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shift_out<1>/CLKINV_2331 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y27" ))
  \shift_out<1>/CEINV  (
    .I(shift_out_not0001_0),
    .O(\shift_out<1>/CEINV_2330 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y27" ))
  \shift_out<3>/DXMUX  (
    .I(shift_out_mux0000[3]),
    .O(\shift_out<3>/DXMUX_2399 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y27" ))
  \shift_out<3>/DYMUX  (
    .I(shift_out_mux0000[2]),
    .O(\shift_out<3>/DYMUX_2385 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y27" ))
  \shift_out<3>/SRINV  (
    .I(reset_IBUF_872),
    .O(\shift_out<3>/SRINV_2377 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y27" ))
  \shift_out<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shift_out<3>/CLKINV_2376 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y27" ))
  \shift_out<3>/CEINV  (
    .I(shift_out_not0001_0),
    .O(\shift_out<3>/CEINV_2375 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y30" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV_2462 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX_2463 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y30" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV  (
    .I(1'b0),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV_2462 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y30" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV_2460 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y30" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1004 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV_2459 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y23" ))
  \baud1/period<1>/DXMUX  (
    .I(din_1_IBUF_876),
    .O(\baud1/period<1>/DXMUX_2490 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y23" ))
  \baud1/period<1>/DYMUX  (
    .I(din_0_IBUF_874),
    .O(\baud1/period<1>/DYMUX_2481 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y23" ))
  \baud1/period<1>/SRINV  (
    .I(reset_IBUF_872),
    .O(\baud1/period<1>/SRINV_2479 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y23" ))
  \baud1/period<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/period<1>/CLKINV_2478 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y23" ))
  \baud1/period<1>/CEINV  (
    .I(wr_baud_0),
    .O(\baud1/period<1>/CEINV_2477 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y22" ))
  \baud1/period<3>/DXMUX  (
    .I(din_3_IBUF_856),
    .O(\baud1/period<3>/DXMUX_2517 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y22" ))
  \baud1/period<3>/DYMUX  (
    .I(din_2_IBUF_854),
    .O(\baud1/period<3>/DYMUX_2508 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y22" ))
  \baud1/period<3>/SRINV  (
    .I(reset_IBUF_872),
    .O(\baud1/period<3>/SRINV_2506 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y22" ))
  \baud1/period<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/period<3>/CLKINV_2505 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y22" ))
  \baud1/period<3>/CEINV  (
    .I(wr_baud_0),
    .O(\baud1/period<3>/CEINV_2504 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y24" ))
  \baud1/baud_cmp_eq00008120/XUSED  (
    .I(\baud1/baud_cmp_eq00008120_2545 ),
    .O(\baud1/baud_cmp_eq00008120_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y23" ))
  \baud1/period<5>/DXMUX  (
    .I(din_5_IBUF_858),
    .O(\baud1/period<5>/DXMUX_2567 )
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y23" ))
  \baud1/period<5>/DYMUX  (
    .I(din_4_IBUF_857),
    .O(\baud1/period<5>/DYMUX_2559 )
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y23" ))
  \baud1/period<5>/SRINV  (
    .I(reset_IBUF_872),
    .O(\baud1/period<5>/SRINV_2557 )
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y23" ))
  \baud1/period<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/period<5>/CLKINV_2556 )
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y23" ))
  \baud1/period<5>/CEINV  (
    .I(wr_baud_0),
    .O(\baud1/period<5>/CEINV_2555 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y25" ))
  \bitcounter<0>/DXMUX  (
    .I(Mcount_bitcounter),
    .O(\bitcounter<0>/DXMUX_2605 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y25" ))
  \bitcounter<0>/YUSED  (
    .I(N2_pack_2),
    .O(N2)
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y25" ))
  \bitcounter<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\bitcounter<0>/CLKINV_2588 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y25" ))
  \bitcounter<0>/CEINV  (
    .I(bitcounter_not0001_0),
    .O(\bitcounter<0>/CEINV_2587 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y23" ))
  \baud1/period<7>/DXMUX  (
    .I(din_7_IBUF_861),
    .O(\baud1/period<7>/DXMUX_2633 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y23" ))
  \baud1/period<7>/DYMUX  (
    .I(din_6_IBUF_860),
    .O(\baud1/period<7>/DYMUX_2624 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y23" ))
  \baud1/period<7>/SRINV  (
    .I(reset_IBUF_872),
    .O(\baud1/period<7>/SRINV_2622 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y23" ))
  \baud1/period<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/period<7>/CLKINV_2621 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y23" ))
  \baud1/period<7>/CEINV  (
    .I(wr_baud_0),
    .O(\baud1/period<7>/CEINV_2620 )
  );
  X_INV #(
    .LOC ( "SLICE_X20Y26" ))
  \baud1/baud/DYMUX  (
    .I(\baud1/baud_911 ),
    .O(\baud1/baud/DYMUX_2650 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y26" ))
  \baud1/baud/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/baud/CLKINV_2647 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y26" ))
  \baud1/baud/CEINV  (
    .I(\baud1/baud_cmp_eq0000_0 ),
    .O(\baud1/baud/CEINV_2646 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y30" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1004 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX_2670 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y30" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1005 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX_2665 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y30" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_2663 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en/XUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en/YUSED  (
    .I(ld_shift_pack_1),
    .O(ld_shift)
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y18" ))
  \dout_7_OBUF/YUSED  (
    .I(N3_pack_1),
    .O(N3)
  );
  X_INV #(
    .LOC ( "SLICE_X15Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX_2775 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/XUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_2772 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX  (
    .I(\fifo1/Result<1>1 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX_2759 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_2749 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_2748 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_2747 )
  );
  X_INV #(
    .LOC ( "SLICE_X13Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_2823 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/XUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_2820 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX  (
    .I(\fifo1/Result [1]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_2805 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_2795 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_2794 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_2793 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y20" ))
  \fifo1/N01/XUSED  (
    .I(\fifo1/N01 ),
    .O(\fifo1/N01_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y20" ))
  \fifo1/N01/YUSED  (
    .I(wr_fifo_pack_1),
    .O(wr_fifo)
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67/XUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_2875 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67/YUSED  (
    .I(\fifo1/N6 ),
    .O(\fifo1/N6_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/BYINV_2886 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/DYMUX_2887 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/BYINV  (
    .I(1'b0),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/BYINV_2886 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLKINV_2884 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_1011 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CEINV_2883 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y26" ))
  \to_shift<1>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [1]),
    .O(\to_shift<1>/DXMUX_2912 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y26" ))
  \to_shift<1>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [0]),
    .O(\to_shift<1>/DYMUX_2905 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y26" ))
  \to_shift<1>/SRINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\to_shift<1>/SRINV_2903 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y26" ))
  \to_shift<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\to_shift<1>/CLKINV_2902 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y26" ))
  \to_shift<1>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\to_shift<1>/CEINV_2901 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y29" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en/YUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y27" ))
  \to_shift<3>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [3]),
    .O(\to_shift<3>/DXMUX_2948 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y27" ))
  \to_shift<3>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [2]),
    .O(\to_shift<3>/DYMUX_2941 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y27" ))
  \to_shift<3>/SRINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\to_shift<3>/SRINV_2939 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y27" ))
  \to_shift<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\to_shift<3>/CLKINV_2938 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y27" ))
  \to_shift<3>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\to_shift<3>/CEINV_2937 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y26" ))
  \to_shift<5>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [5]),
    .O(\to_shift<5>/DXMUX_2972 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y26" ))
  \to_shift<5>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [4]),
    .O(\to_shift<5>/DYMUX_2965 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y26" ))
  \to_shift<5>/SRINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\to_shift<5>/SRINV_2963 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y26" ))
  \to_shift<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\to_shift<5>/CLKINV_2962 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y26" ))
  \to_shift<5>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\to_shift<5>/CEINV_2961 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y27" ))
  \to_shift<7>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [7]),
    .O(\to_shift<7>/DXMUX_2996 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y27" ))
  \to_shift<7>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [6]),
    .O(\to_shift<7>/DYMUX_2989 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y27" ))
  \to_shift<7>/SRINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\to_shift<7>/SRINV_2987 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y27" ))
  \to_shift<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\to_shift<7>/CLKINV_2986 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y27" ))
  \to_shift<7>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\to_shift<7>/CEINV_2985 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y22" ))
  \N34/XUSED  (
    .I(N34),
    .O(N34_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y22" ))
  \N34/YUSED  (
    .I(\baud1/baud_cmp_eq0000853_3016 ),
    .O(\baud1/baud_cmp_eq0000853_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y21" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en/XUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y21" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en/YUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_3038 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_3070 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_3061 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3059 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3058 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3057 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/FFY/RSTOR  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3087 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/FFY/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_0  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_3089 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3085 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3086 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/FFY/RST ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/FFX/RSTOR  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3087 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_3098 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3085 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3086 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/FFX/RST ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_3098 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_3089 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3087 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3086 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3085 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y24" ))
  \pstate_FSM_FFd1/FFY/RSTOR  (
    .I(\pstate_FSM_FFd1/SRINV_3121 ),
    .O(\pstate_FSM_FFd1/FFY/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y24" ),
    .INIT ( 1'b0 ))
  pstate_FSM_FFd2 (
    .I(\pstate_FSM_FFd1/DYMUX_3130 ),
    .CE(VCC),
    .CLK(\pstate_FSM_FFd1/CLKINV_3120 ),
    .SET(GND),
    .RST(\pstate_FSM_FFd1/FFY/RST ),
    .O(pstate_FSM_FFd2_907)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X17Y24" ))
  \pstate_FSM_FFd1-In_SW0  (
    .ADR0(bittimer[0]),
    .ADR1(bittimer[2]),
    .ADR2(bittimer[3]),
    .ADR3(bittimer[1]),
    .O(N25_pack_2)
  );
  X_LUT4 #(
    .INIT ( 16'hEAC8 ),
    .LOC ( "SLICE_X17Y24" ))
  \pstate_FSM_FFd1-In  (
    .ADR0(\baud1/baud_911 ),
    .ADR1(pstate_FSM_FFd1_910),
    .ADR2(N25),
    .ADR3(N16_0),
    .O(\pstate_FSM_FFd1-In_3141 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y24" ))
  \pstate_FSM_FFd1/FFX/RSTOR  (
    .I(\pstate_FSM_FFd1/SRINV_3121 ),
    .O(\pstate_FSM_FFd1/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y24" ),
    .INIT ( 1'b0 ))
  pstate_FSM_FFd1 (
    .I(\pstate_FSM_FFd1/DXMUX_3144 ),
    .CE(VCC),
    .CLK(\pstate_FSM_FFd1/CLKINV_3120 ),
    .SET(GND),
    .RST(\pstate_FSM_FFd1/FFX/RST ),
    .O(pstate_FSM_FFd1_910)
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y24" ))
  \pstate_FSM_FFd1/DXMUX  (
    .I(\pstate_FSM_FFd1-In_3141 ),
    .O(\pstate_FSM_FFd1/DXMUX_3144 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y24" ))
  \pstate_FSM_FFd1/DYMUX  (
    .I(\pstate_FSM_FFd2_1/GYMUX_2136 ),
    .O(\pstate_FSM_FFd1/DYMUX_3130 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y24" ))
  \pstate_FSM_FFd1/YUSED  (
    .I(N25_pack_2),
    .O(N25)
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y24" ))
  \pstate_FSM_FFd1/SRINV  (
    .I(reset_IBUF_872),
    .O(\pstate_FSM_FFd1/SRINV_3121 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y24" ))
  \pstate_FSM_FFd1/CLKINV  (
    .I(clk_BUFGP),
    .O(\pstate_FSM_FFd1/CLKINV_3120 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/FFY/RSTOR  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_3160 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/FFY/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y25" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_2  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_3162 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_3158 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_3159 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/FFY/RST ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2])
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/FFX/RSTOR  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_3160 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y25" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_3171 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_3158 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_3159 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/FFX/RST ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_3171 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_3162 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_3160 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_3159 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_3158 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_3199 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_3190 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_3188 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_3187 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_3186 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y24" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_3  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_3199 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_3186 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_3187 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_3188 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_1015 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DXMUX_3223 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/BYINV_3215 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DYMUX_3216 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/BYINV  (
    .I(1'b0),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/BYINV_3215 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV  (
    .I(reset_IBUF_872),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV_3214 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV_3213 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y21" ))
  \control<0>/DYMUX  (
    .I(full),
    .O(\control<0>/DYMUX_3236 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y21" ))
  \control<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\control<0>/CLKINV_3233 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y28" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV_3257 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX_3258 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y28" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV  (
    .I(1'b0),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV_3257 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y28" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV_3250 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX_3251 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y28" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV  (
    .I(1'b0),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV_3250 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y28" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_3249 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y28" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_3248 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_928 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/DYMUX_3271 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLKINV_3268 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y24" ))
  \baud1/baud_cmp_eq0000893/XUSED  (
    .I(\baud1/baud_cmp_eq0000893_3286 ),
    .O(\baud1/baud_cmp_eq0000893_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y22" ))
  \N42/XUSED  (
    .I(N42),
    .O(N42_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_1017 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/DYMUX_3320 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLKINV_3317 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y29" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_1011 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DXMUX_3339 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y29" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_1012 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DYMUX_3334 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y29" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV_3332 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062/XUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_3352 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_0 )
  );
  X_INV #(
    .LOC ( "SLICE_X17Y29" ))
  \bittimer<0>/DXMUX  (
    .I(bittimer[0]),
    .O(\bittimer<0>/DXMUX_3396 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y29" ))
  \bittimer<0>/XUSED  (
    .I(N27),
    .O(N27_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y29" ))
  \bittimer<0>/DYMUX  (
    .I(Result[1]),
    .O(\bittimer<0>/DYMUX_3379 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y29" ))
  \bittimer<0>/SRINV  (
    .I(reset_IBUF_872),
    .O(\bittimer<0>/SRINV_3369 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y29" ))
  \bittimer<0>/CLKINV  (
    .I(\baud1/baud_911 ),
    .O(\bittimer<0>/CLKINV_3368 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y29" ))
  \bittimer<0>/CEINV  (
    .I(bittime_0),
    .O(\bittimer<0>/CEINV_3367 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y22" ))
  \full/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_1568 ),
    .O(\full/DYMUX_3411 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y22" ))
  \full/CLKINV  (
    .I(clk_BUFGP),
    .O(\full/CLKINV_3408 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y31" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/BYINV_3423 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/DYMUX_3424 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y31" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/BYINV  (
    .I(1'b0),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/BYINV_3423 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y31" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/CLKINV_3421 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y28" ))
  \empty/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_2258 ),
    .O(\empty/DYMUX_3437 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y28" ))
  \empty/CLKINV  (
    .I(clk_BUFGP),
    .O(\empty/CLKINV_3434 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \bitcounter<3>/DXMUX  (
    .I(Mcount_bitcounter3),
    .O(\bitcounter<3>/DXMUX_3473 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \bitcounter<3>/YUSED  (
    .I(N29_pack_2),
    .O(N29)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \bitcounter<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\bitcounter<3>/CLKINV_3457 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \bitcounter<3>/CEINV  (
    .I(bitcounter_not0001_0),
    .O(\bitcounter<3>/CEINV_3456 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y27" ))
  \N30/XUSED  (
    .I(N30),
    .O(N30_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y20" ))
  \control_1_not00017/XUSED  (
    .I(control_1_not00017_3502),
    .O(control_1_not00017_0)
  );
  X_LUT4 #(
    .INIT ( 16'h1020 ),
    .LOC ( "SLICE_X26Y26" ))
  \baud1/timer_mux0000<1>1  (
    .ADR0(\baud1/timer [6]),
    .ADR1(\baud1/baud_cmp_eq0000_0 ),
    .ADR2(N36),
    .ADR3(\baud1/Madd_timer_addsub0000_cy[5] ),
    .O(\baud1/timer_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0203 ),
    .LOC ( "SLICE_X27Y23" ))
  \baud1/timer_mux0000<4>  (
    .ADR0(pstate_FSM_FFd2_907),
    .ADR1(N34_0),
    .ADR2(\baud1/baud_cmp_eq0000_0 ),
    .ADR3(empty),
    .O(\baud1/timer_mux0000 [4])
  );
  X_FF #(
    .LOC ( "SLICE_X27Y26" ),
    .INIT ( 1'b0 ))
  \baud1/timer_7  (
    .I(\baud1/timer<7>/DYMUX_1976 ),
    .CE(VCC),
    .CLK(\baud1/timer<7>/CLKINV_1967 ),
    .SET(GND),
    .RST(\baud1/timer<7>/FFY/RSTAND_1981 ),
    .O(\baud1/timer [7])
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y26" ))
  \baud1/timer<7>/FFY/RSTAND  (
    .I(reset_IBUF_872),
    .O(\baud1/timer<7>/FFY/RSTAND_1981 )
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  \addr<2>/IFF/IMUX  (
    .I(\addr<2>/INBUF ),
    .O(addr_2_IBUF_853)
  );
  X_BUF #(
    .LOC ( "PAD34" ))
  \din<2>/IFF/IMUX  (
    .I(\din<2>/INBUF ),
    .O(din_2_IBUF_854)
  );
  X_BUF #(
    .LOC ( "PAD43" ))
  \wren/IFF/IMUX  (
    .I(\wren/INBUF ),
    .O(wren_IBUF_855)
  );
  X_BUF #(
    .LOC ( "PAD31" ))
  \din<4>/IFF/IMUX  (
    .I(\din<4>/INBUF ),
    .O(din_4_IBUF_857)
  );
  X_BUF #(
    .LOC ( "PAD35" ))
  \din<5>/IFF/IMUX  (
    .I(\din<5>/INBUF ),
    .O(din_5_IBUF_858)
  );
  X_BUF #(
    .LOC ( "PAD28" ))
  \rden/IFF/IMUX  (
    .I(\rden/INBUF ),
    .O(rden_IBUF_859)
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \din<6>/IFF/IMUX  (
    .I(\din<6>/INBUF ),
    .O(din_6_IBUF_860)
  );
  X_BUF #(
    .LOC ( "PAD33" ))
  \din<7>/IFF/IMUX  (
    .I(\din<7>/INBUF ),
    .O(din_7_IBUF_861)
  );
  X_BUF #(
    .LOC ( "PAD29" ))
  \reset/IFF/IMUX  (
    .I(\reset/INBUF ),
    .O(reset_IBUF_872)
  );
  X_BUF #(
    .LOC ( "PAD53" ))
  \addr<0>/IFF/IMUX  (
    .I(\addr<0>/INBUF ),
    .O(addr_0_IBUF_873)
  );
  X_BUF #(
    .LOC ( "PAD40" ))
  \din<0>/IFF/IMUX  (
    .I(\din<0>/INBUF ),
    .O(din_0_IBUF_874)
  );
  X_BUF #(
    .LOC ( "PAD47" ))
  \addr<1>/IFF/IMUX  (
    .I(\addr<1>/INBUF ),
    .O(addr_1_IBUF_875)
  );
  X_BUF #(
    .LOC ( "IPAD36" ))
  \din<1>/IFF/IMUX  (
    .I(\din<1>/INBUF ),
    .O(din_1_IBUF_876)
  );
  X_LUT4 #(
    .INIT ( 16'h0200 ),
    .LOC ( "SLICE_X31Y20" ))
  \dout<1>2  (
    .ADR0(rden_IBUF_859),
    .ADR1(addr_0_IBUF_873),
    .ADR2(addr_2_IBUF_853),
    .ADR3(\baud1/period [1]),
    .O(\dout<1>2_1373 )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X31Y20" ))
  \dout<1>1  (
    .ADR0(addr_0_IBUF_873),
    .ADR1(control[1]),
    .ADR2(rden_IBUF_859),
    .ADR3(addr_2_IBUF_853),
    .O(\dout<1>1_1380 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0FF ),
    .LOC ( "SLICE_X27Y27" ))
  \baud1/timer_mux0000<0>11_SW1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(pstate_FSM_FFd2_907),
    .ADR3(empty),
    .O(N36_pack_2)
  );
  X_LUT4 #(
    .INIT ( 16'h0408 ),
    .LOC ( "SLICE_X27Y27" ))
  \baud1/timer_mux0000<6>1  (
    .ADR0(\baud1/timer [1]),
    .ADR1(N36),
    .ADR2(\baud1/baud_cmp_eq0000_0 ),
    .ADR3(\baud1/timer [0]),
    .O(\baud1/timer_mux0000 [6])
  );
  X_FF #(
    .LOC ( "SLICE_X27Y27" ),
    .INIT ( 1'b0 ))
  \baud1/timer_1  (
    .I(\baud1/timer<1>/DXMUX_1437 ),
    .CE(VCC),
    .CLK(\baud1/timer<1>/CLKINV_1419 ),
    .SET(GND),
    .RST(\baud1/timer<1>/FFX/RSTAND_1442 ),
    .O(\baud1/timer [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y27" ))
  \baud1/timer<1>/FFX/RSTAND  (
    .I(reset_IBUF_872),
    .O(\baud1/timer<1>/FFX/RSTAND_1442 )
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ),
    .LOC ( "SLICE_X18Y26" ))
  bitcounter_not00012 (
    .ADR0(pstate_FSM_FFd1_910),
    .ADR1(bittimer[2]),
    .ADR2(N27_0),
    .ADR3(\baud1/baud_911 ),
    .O(N14_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFF03 ),
    .LOC ( "SLICE_X18Y26" ))
  shift_out_not00012 (
    .ADR0(VCC),
    .ADR1(empty),
    .ADR2(pstate_FSM_FFd2_907),
    .ADR3(N14),
    .O(shift_out_not0001)
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ),
    .LOC ( "SLICE_X24Y22" ))
  control_1_not000121 (
    .ADR0(bitcounter[2]),
    .ADR1(bitcounter[3]),
    .ADR2(bitcounter[1]),
    .ADR3(pstate_FSM_FFd1_910),
    .O(\control_1_not000121/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hAEAA ),
    .LOC ( "SLICE_X24Y22" ))
  control_1_not000131 (
    .ADR0(control_1_not00017_0),
    .ADR1(pstate_FSM_FFd2_907),
    .ADR2(bitcounter[0]),
    .ADR3(\control_1_not000121/O ),
    .O(control_1_not0001)
  );
  X_LUT4 #(
    .INIT ( 16'hFFDF ),
    .LOC ( "SLICE_X18Y24" ))
  bitcounter_not0001_SW0 (
    .ADR0(bitcounter[1]),
    .ADR1(bitcounter[0]),
    .ADR2(bitcounter[3]),
    .ADR3(bitcounter[2]),
    .O(\bitcounter_not0001_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hCCDC ),
    .LOC ( "SLICE_X18Y24" ))
  bitcounter_not0001 (
    .ADR0(pstate_FSM_FFd1_910),
    .ADR1(N14),
    .ADR2(pstate_FSM_FFd2_907),
    .ADR3(\bitcounter_not0001_SW0/O ),
    .O(bitcounter_not0001_1537)
  );
  X_LUT4 #(
    .INIT ( 16'h8400 ),
    .LOC ( "SLICE_X15Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_0 ),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hB3A2 ),
    .LOC ( "SLICE_X15Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb97  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_0 ),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .ADR2(\fifo1/N8_0 ),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb )
  );
  X_LUT4 #(
    .INIT ( 16'hAAFF ),
    .LOC ( "SLICE_X16Y24" ))
  \pstate_FSM_FFd1-In3_SW0  (
    .ADR0(bitcounter[0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(bitcounter[1]),
    .O(\pstate_FSM_FFd1-In3_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hCC8C ),
    .LOC ( "SLICE_X16Y24" ))
  \pstate_FSM_FFd1-In3  (
    .ADR0(bitcounter[2]),
    .ADR1(pstate_FSM_FFd2_907),
    .ADR2(bitcounter[3]),
    .ADR3(\pstate_FSM_FFd1-In3_SW0/O ),
    .O(N16)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X26Y25" ))
  \baud1/Madd_timer_addsub0000_cy<3>11  (
    .ADR0(\baud1/timer [2]),
    .ADR1(\baud1/timer [1]),
    .ADR2(\baud1/timer [0]),
    .ADR3(\baud1/timer [3]),
    .O(\baud1/Madd_timer_addsub0000_cy<3>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hC03F ),
    .LOC ( "SLICE_X26Y25" ))
  \baud1/timer_mux0000<0>11_SW5  (
    .ADR0(VCC),
    .ADR1(\baud1/timer [4]),
    .ADR2(\baud1/Madd_timer_addsub0000_cy[3] ),
    .ADR3(\baud1/timer [5]),
    .O(N44)
  );
  X_LUT4 #(
    .INIT ( 16'h7BDE ),
    .LOC ( "SLICE_X12Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFDE ),
    .LOC ( "SLICE_X12Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .ADR1(\fifo1/N6_0 ),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O ),
    .O(\fifo1/N8 )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y26" ),
    .INIT ( 1'b0 ))
  \baud1/timer_6  (
    .I(\baud1/timer<6>/DXMUX_1675 ),
    .CE(VCC),
    .CLK(\baud1/timer<6>/CLKINV_1658 ),
    .SET(GND),
    .RST(\baud1/timer<6>/FFX/RSTAND_1680 ),
    .O(\baud1/timer [6])
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y26" ))
  \baud1/timer<6>/FFX/RSTAND  (
    .I(reset_IBUF_872),
    .O(\baud1/timer<6>/FFX/RSTAND_1680 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X14Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079  (
    .ADR0(\fifo1/N01_0 ),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_0 ),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8FA ),
    .LOC ( "SLICE_X14Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000092  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_951 ),
    .ADR1(\fifo1/N8_0 ),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O ),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y23" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_1710 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_1694 ),
    .SET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SET ),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_951 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SETOR  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SET )
  );
  X_LUT4 #(
    .INIT ( 16'hFE02 ),
    .LOC ( "SLICE_X15Y25" ))
  \shift_out_mux0000<4>1  (
    .ADR0(to_shift[3]),
    .ADR1(empty),
    .ADR2(pstate_FSM_FFd2_907),
    .ADR3(shift_out[5]),
    .O(shift_out_mux0000[4])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y25" ),
    .INIT ( 1'b1 ))
  shift_out_4 (
    .I(\shift_out<5>/DYMUX_1739 ),
    .CE(\shift_out<5>/CEINV_1729 ),
    .CLK(\shift_out<5>/CLKINV_1730 ),
    .SET(\shift_out<5>/SRINV_1731 ),
    .RST(GND),
    .O(shift_out[4])
  );
  X_LUT4 #(
    .INIT ( 16'hAAB8 ),
    .LOC ( "SLICE_X16Y26" ))
  \shift_out_mux0000<6>1  (
    .ADR0(shift_out[7]),
    .ADR1(empty),
    .ADR2(to_shift[5]),
    .ADR3(pstate_FSM_FFd2_907),
    .O(shift_out_mux0000[6])
  );
  X_FF #(
    .LOC ( "SLICE_X16Y26" ),
    .INIT ( 1'b1 ))
  shift_out_6 (
    .I(\shift_out<7>/DYMUX_1783 ),
    .CE(\shift_out<7>/CEINV_1773 ),
    .CLK(\shift_out<7>/CLKINV_1774 ),
    .SET(\shift_out<7>/SRINV_1775 ),
    .RST(GND),
    .O(shift_out[6])
  );
  X_LUT4 #(
    .INIT ( 16'hAAB8 ),
    .LOC ( "SLICE_X16Y26" ))
  \shift_out_mux0000<7>1  (
    .ADR0(shift_out[8]),
    .ADR1(empty),
    .ADR2(to_shift[6]),
    .ADR3(pstate_FSM_FFd2_907),
    .O(shift_out_mux0000[7])
  );
  X_FF #(
    .LOC ( "SLICE_X16Y26" ),
    .INIT ( 1'b1 ))
  shift_out_7 (
    .I(\shift_out<7>/DXMUX_1797 ),
    .CE(\shift_out<7>/CEINV_1773 ),
    .CLK(\shift_out<7>/CLKINV_1774 ),
    .SET(\shift_out<7>/SRINV_1775 ),
    .RST(GND),
    .O(shift_out[7])
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ),
    .LOC ( "SLICE_X19Y26" ))
  \shift_out_mux0000<8>1  (
    .ADR0(to_shift[7]),
    .ADR1(pstate_FSM_FFd2_907),
    .ADR2(empty),
    .ADR3(VCC),
    .O(shift_out_mux0000[8])
  );
  X_LUT4 #(
    .INIT ( 16'h1101 ),
    .LOC ( "SLICE_X26Y27" ))
  \baud1/timer_mux0000<7>1  (
    .ADR0(\baud1/timer [0]),
    .ADR1(\baud1/baud_cmp_eq0000_0 ),
    .ADR2(empty),
    .ADR3(pstate_FSM_FFd2_907),
    .O(\baud1/timer_mux0000 [7])
  );
  X_FF #(
    .LOC ( "SLICE_X26Y27" ),
    .INIT ( 1'b0 ))
  \baud1/timer_0  (
    .I(\baud1/timer<0>/DYMUX_1862 ),
    .CE(VCC),
    .CLK(\baud1/timer<0>/CLKINV_1853 ),
    .SET(GND),
    .RST(\baud1/timer<0>/FFY/RSTAND_1867 ),
    .O(\baud1/timer [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y27" ))
  \baud1/timer<0>/FFY/RSTAND  (
    .I(reset_IBUF_872),
    .O(\baud1/timer<0>/FFY/RSTAND_1867 )
  );
  X_LUT4 #(
    .INIT ( 16'h99F9 ),
    .LOC ( "SLICE_X26Y27" ))
  \baud1/timer_mux0000<0>11_SW7  (
    .ADR0(\baud1/timer [7]),
    .ADR1(\baud1/timer [6]),
    .ADR2(empty),
    .ADR3(pstate_FSM_FFd2_907),
    .O(N47)
  );
  X_FF #(
    .LOC ( "SLICE_X27Y23" ),
    .INIT ( 1'b0 ))
  \baud1/timer_2  (
    .I(\baud1/timer<3>/DYMUX_1897 ),
    .CE(VCC),
    .CLK(\baud1/timer<3>/CLKINV_1888 ),
    .SET(GND),
    .RST(\baud1/timer<3>/SRINV_1889 ),
    .O(\baud1/timer [2])
  );
  X_LUT4 #(
    .INIT ( 16'h000B ),
    .LOC ( "SLICE_X27Y23" ))
  \baud1/timer_mux0000<5>1  (
    .ADR0(pstate_FSM_FFd2_907),
    .ADR1(empty),
    .ADR2(\baud1/baud_cmp_eq0000_0 ),
    .ADR3(N42_0),
    .O(\baud1/timer_mux0000 [5])
  );
  X_FF #(
    .LOC ( "SLICE_X26Y24" ),
    .INIT ( 1'b0 ))
  \baud1/timer_4  (
    .I(\baud1/timer<5>/DYMUX_1939 ),
    .CE(VCC),
    .CLK(\baud1/timer<5>/CLKINV_1930 ),
    .SET(GND),
    .RST(\baud1/timer<5>/SRINV_1931 ),
    .O(\baud1/timer [4])
  );
  X_LUT4 #(
    .INIT ( 16'h0048 ),
    .LOC ( "SLICE_X26Y24" ))
  \baud1/timer_mux0000<3>1  (
    .ADR0(\baud1/timer [4]),
    .ADR1(N36),
    .ADR2(\baud1/Madd_timer_addsub0000_cy[3] ),
    .ADR3(\baud1/baud_cmp_eq0000_0 ),
    .O(\baud1/timer_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0031 ),
    .LOC ( "SLICE_X26Y24" ))
  \baud1/timer_mux0000<2>1  (
    .ADR0(empty),
    .ADR1(N44_0),
    .ADR2(pstate_FSM_FFd2_907),
    .ADR3(\baud1/baud_cmp_eq0000_0 ),
    .O(\baud1/timer_mux0000 [2])
  );
  X_FF #(
    .LOC ( "SLICE_X26Y24" ),
    .INIT ( 1'b0 ))
  \baud1/timer_5  (
    .I(\baud1/timer<5>/DXMUX_1953 ),
    .CE(VCC),
    .CLK(\baud1/timer<5>/CLKINV_1930 ),
    .SET(GND),
    .RST(\baud1/timer<5>/SRINV_1931 ),
    .O(\baud1/timer [5])
  );
  X_LUT4 #(
    .INIT ( 16'h0213 ),
    .LOC ( "SLICE_X27Y26" ))
  \baud1/timer_mux0000<0>1  (
    .ADR0(\baud1/Madd_timer_addsub0000_cy[5] ),
    .ADR1(\baud1/baud_cmp_eq0000_0 ),
    .ADR2(N47_0),
    .ADR3(N46_0),
    .O(\baud1/timer_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h66AA ),
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<2>11  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR2(VCC),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\fifo1/Result [2])
  );
  X_LUT4 #(
    .INIT ( 16'h3CF0 ),
    .LOC ( "SLICE_X12Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<2>11  (
    .ADR0(VCC),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .O(\fifo1/Result<2>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y25" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_2  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_2006 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_1995 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_1996 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_1997 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2])
  );
  X_LUT4 #(
    .INIT ( 16'h78F0 ),
    .LOC ( "SLICE_X12Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<3>11  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .O(\fifo1/Result<3>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y25" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_3  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_2021 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_1995 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_1996 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_1997 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y25" ),
    .INIT ( 1'b0 ))
  pstate_FSM_FFd2_1 (
    .I(\pstate_FSM_FFd2_1/DYMUX_2137 ),
    .CE(VCC),
    .CLK(\pstate_FSM_FFd2_1/CLKINV_2128 ),
    .SET(GND),
    .RST(\pstate_FSM_FFd2_1/FFY/RSTAND_2142 ),
    .O(pstate_FSM_FFd2_1_981)
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y25" ))
  \pstate_FSM_FFd2_1/FFY/RSTAND  (
    .I(reset_IBUF_872),
    .O(\pstate_FSM_FFd2_1/FFY/RSTAND_2142 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y27" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_3  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_2067 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2041 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2042 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2043 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX_2096 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_2087 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_2088 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_979 )
  );
  X_LUT4 #(
    .INIT ( 16'h0F8F ),
    .LOC ( "SLICE_X14Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In1  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_980 ),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_979 ),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_951 ),
    .ADR3(ld_shift),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In )
  );
  X_LUT4 #(
    .INIT ( 16'hEEEC ),
    .LOC ( "SLICE_X14Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In1  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_980 ),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_979 ),
    .ADR2(empty),
    .ADR3(pstate_FSM_FFd2_1_981),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_2110 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_2087 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_2088 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_980 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFCC ),
    .LOC ( "SLICE_X17Y25" ))
  bittime1 (
    .ADR0(VCC),
    .ADR1(pstate_FSM_FFd1_910),
    .ADR2(VCC),
    .ADR3(N16_0),
    .O(bittime)
  );
  X_LUT4 #(
    .INIT ( 16'hFF7F ),
    .LOC ( "SLICE_X26Y20" ))
  control_1_mux00001 (
    .ADR0(addr_1_IBUF_875),
    .ADR1(wren_IBUF_855),
    .ADR2(addr_0_IBUF_873),
    .ADR3(addr_2_IBUF_853),
    .O(control_1_mux0000)
  );
  X_FF #(
    .LOC ( "SLICE_X26Y20" ),
    .INIT ( 1'b0 ))
  control_1 (
    .I(\control<1>/DYMUX_2176 ),
    .CE(\control<1>/CEINV_2166 ),
    .CLK(\control<1>/CLKINV_2167 ),
    .SET(GND),
    .RST(\control<1>/FFY/RSTAND_2182 ),
    .O(control[1])
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y20" ))
  \control<1>/FFY/RSTAND  (
    .I(reset_IBUF_872),
    .O(\control<1>/FFY/RSTAND_2182 )
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ),
    .LOC ( "SLICE_X26Y20" ))
  wr_baud1 (
    .ADR0(addr_1_IBUF_875),
    .ADR1(wren_IBUF_855),
    .ADR2(addr_0_IBUF_873),
    .ADR3(addr_2_IBUF_853),
    .O(wr_baud)
  );
  X_LUT4 #(
    .INIT ( 16'h0AF0 ),
    .LOC ( "SLICE_X19Y25" ))
  \Mcount_bitcounter_xor<1>12  (
    .ADR0(N2),
    .ADR1(VCC),
    .ADR2(bitcounter[0]),
    .ADR3(bitcounter[1]),
    .O(Mcount_bitcounter1)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y25" ),
    .INIT ( 1'b0 ))
  bitcounter_1 (
    .I(\bitcounter<2>/DYMUX_2213 ),
    .CE(\bitcounter<2>/CEINV_2202 ),
    .CLK(\bitcounter<2>/CLKINV_2203 ),
    .SET(GND),
    .RST(\bitcounter<2>/SRINV_2204 ),
    .O(bitcounter[1])
  );
  X_LUT4 #(
    .INIT ( 16'h5AAA ),
    .LOC ( "SLICE_X19Y25" ))
  \Mcount_bitcounter_xor<2>11  (
    .ADR0(bitcounter[2]),
    .ADR1(VCC),
    .ADR2(bitcounter[0]),
    .ADR3(bitcounter[1]),
    .O(Mcount_bitcounter2)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y25" ),
    .INIT ( 1'b0 ))
  bitcounter_2 (
    .I(\bitcounter<2>/DXMUX_2229 ),
    .CE(\bitcounter<2>/CEINV_2202 ),
    .CLK(\bitcounter<2>/CLKINV_2203 ),
    .SET(GND),
    .RST(\bitcounter<2>/SRINV_2204 ),
    .O(bitcounter[2])
  );
  X_LUT4 #(
    .INIT ( 16'hAE0A ),
    .LOC ( "SLICE_X15Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or00001  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_987 ),
    .ADR1(ld_shift),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_979 ),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_980 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y24" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX_2259 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_2250 ),
    .SET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SET ),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_987 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SETOR  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h10F0 ),
    .LOC ( "SLICE_X15Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/RAM_REGOUT_EN1  (
    .ADR0(pstate_FSM_FFd2_1_981),
    .ADR1(empty),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_979 ),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_980 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en )
  );
  X_LUT4 #(
    .INIT ( 16'h66AA ),
    .LOC ( "SLICE_X17Y31" ))
  \Mcount_bittimer_xor<2>11  (
    .ADR0(bittimer[2]),
    .ADR1(bittimer[1]),
    .ADR2(VCC),
    .ADR3(bittimer[0]),
    .O(Result[2])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y31" ),
    .INIT ( 1'b0 ))
  bittimer_2 (
    .I(\bittimer<3>/DYMUX_2295 ),
    .CE(\bittimer<3>/CEINV_2284 ),
    .CLK(\bittimer<3>/CLKINV_2285 ),
    .SET(GND),
    .RST(\bittimer<3>/SRINV_2286 ),
    .O(bittimer[2])
  );
  X_LUT4 #(
    .INIT ( 16'h78F0 ),
    .LOC ( "SLICE_X17Y31" ))
  \Mcount_bittimer_xor<3>11  (
    .ADR0(bittimer[2]),
    .ADR1(bittimer[1]),
    .ADR2(bittimer[3]),
    .ADR3(bittimer[0]),
    .O(Result[3])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y31" ),
    .INIT ( 1'b0 ))
  bittimer_3 (
    .I(\bittimer<3>/DXMUX_2310 ),
    .CE(\bittimer<3>/CEINV_2284 ),
    .CLK(\bittimer<3>/CLKINV_2285 ),
    .SET(GND),
    .RST(\bittimer<3>/SRINV_2286 ),
    .O(bittimer[3])
  );
  X_LUT4 #(
    .INIT ( 16'hEE00 ),
    .LOC ( "SLICE_X17Y27" ))
  \shift_out_mux0000<0>1  (
    .ADR0(empty),
    .ADR1(pstate_FSM_FFd2_907),
    .ADR2(VCC),
    .ADR3(shift_out[1]),
    .O(shift_out_mux0000[0])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y27" ),
    .INIT ( 1'b1 ))
  shift_out_0 (
    .I(\shift_out<1>/DYMUX_2341 ),
    .CE(\shift_out<1>/CEINV_2330 ),
    .CLK(\shift_out<1>/CLKINV_2331 ),
    .SET(\shift_out<1>/SRINV_2332 ),
    .RST(GND),
    .O(shift_out[0])
  );
  X_LUT4 #(
    .INIT ( 16'hF0E2 ),
    .LOC ( "SLICE_X17Y27" ))
  \shift_out_mux0000<1>1  (
    .ADR0(to_shift[0]),
    .ADR1(empty),
    .ADR2(shift_out[2]),
    .ADR3(pstate_FSM_FFd2_907),
    .O(shift_out_mux0000[1])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y27" ),
    .INIT ( 1'b1 ))
  shift_out_1 (
    .I(\shift_out<1>/DXMUX_2355 ),
    .CE(\shift_out<1>/CEINV_2330 ),
    .CLK(\shift_out<1>/CLKINV_2331 ),
    .SET(\shift_out<1>/SRINV_2332 ),
    .RST(GND),
    .O(shift_out[1])
  );
  X_LUT4 #(
    .INIT ( 16'hAAAC ),
    .LOC ( "SLICE_X14Y27" ))
  \shift_out_mux0000<2>1  (
    .ADR0(shift_out[3]),
    .ADR1(to_shift[1]),
    .ADR2(empty),
    .ADR3(pstate_FSM_FFd2_907),
    .O(shift_out_mux0000[2])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y27" ),
    .INIT ( 1'b1 ))
  shift_out_2 (
    .I(\shift_out<3>/DYMUX_2385 ),
    .CE(\shift_out<3>/CEINV_2375 ),
    .CLK(\shift_out<3>/CLKINV_2376 ),
    .SET(\shift_out<3>/SRINV_2377 ),
    .RST(GND),
    .O(shift_out[2])
  );
  X_LUT4 #(
    .INIT ( 16'hAAAC ),
    .LOC ( "SLICE_X14Y27" ))
  \shift_out_mux0000<3>1  (
    .ADR0(shift_out[4]),
    .ADR1(to_shift[2]),
    .ADR2(empty),
    .ADR3(pstate_FSM_FFd2_907),
    .O(shift_out_mux0000[3])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y27" ),
    .INIT ( 1'b1 ))
  shift_out_3 (
    .I(\shift_out<3>/DXMUX_2399 ),
    .CE(\shift_out<3>/CEINV_2375 ),
    .CLK(\shift_out<3>/CLKINV_2376 ),
    .SET(\shift_out<3>/SRINV_2377 ),
    .RST(GND),
    .O(shift_out[3])
  );
  X_LUT4 #(
    .INIT ( 16'hA000 ),
    .LOC ( "SLICE_X30Y14" ))
  \dout<3>1  (
    .ADR0(rden_IBUF_859),
    .ADR1(VCC),
    .ADR2(N3),
    .ADR3(\baud1/period [3]),
    .O(dout_3_OBUF_2419)
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ),
    .LOC ( "SLICE_X30Y14" ))
  \dout<2>1  (
    .ADR0(\baud1/period [2]),
    .ADR1(rden_IBUF_859),
    .ADR2(N3),
    .ADR3(VCC),
    .O(dout_2_OBUF_2427)
  );
  X_LUT4 #(
    .INIT ( 16'hA000 ),
    .LOC ( "SLICE_X31Y15" ))
  \dout<4>1  (
    .ADR0(N3),
    .ADR1(VCC),
    .ADR2(\baud1/period [4]),
    .ADR3(rden_IBUF_859),
    .O(dout_4_OBUF_2443)
  );
  X_LUT4 #(
    .INIT ( 16'h8800 ),
    .LOC ( "SLICE_X31Y15" ))
  \dout<5>1  (
    .ADR0(N3),
    .ADR1(\baud1/period [5]),
    .ADR2(VCC),
    .ADR3(rden_IBUF_859),
    .O(dout_5_OBUF_2451)
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X14Y30" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX_2463 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV_2459 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV_2460 ),
    .SET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SET ),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1005 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y30" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SETOR  (
    .I(reset_IBUF_872),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SET )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y23" ),
    .INIT ( 1'b0 ))
  \baud1/period_0  (
    .I(\baud1/period<1>/DYMUX_2481 ),
    .CE(\baud1/period<1>/CEINV_2477 ),
    .CLK(\baud1/period<1>/CLKINV_2478 ),
    .SET(GND),
    .RST(\baud1/period<1>/SRINV_2479 ),
    .O(\baud1/period [0])
  );
  X_FF #(
    .LOC ( "SLICE_X26Y23" ),
    .INIT ( 1'b1 ))
  \baud1/period_1  (
    .I(\baud1/period<1>/DXMUX_2490 ),
    .CE(\baud1/period<1>/CEINV_2477 ),
    .CLK(\baud1/period<1>/CLKINV_2478 ),
    .SET(\baud1/period<1>/SRINV_2479 ),
    .RST(GND),
    .O(\baud1/period [1])
  );
  X_FF #(
    .LOC ( "SLICE_X30Y22" ),
    .INIT ( 1'b0 ))
  \baud1/period_2  (
    .I(\baud1/period<3>/DYMUX_2508 ),
    .CE(\baud1/period<3>/CEINV_2504 ),
    .CLK(\baud1/period<3>/CLKINV_2505 ),
    .SET(GND),
    .RST(\baud1/period<3>/SRINV_2506 ),
    .O(\baud1/period [2])
  );
  X_FF #(
    .LOC ( "SLICE_X30Y22" ),
    .INIT ( 1'b1 ))
  \baud1/period_3  (
    .I(\baud1/period<3>/DXMUX_2517 ),
    .CE(\baud1/period<3>/CEINV_2504 ),
    .CLK(\baud1/period<3>/CLKINV_2505 ),
    .SET(\baud1/period<3>/SRINV_2506 ),
    .RST(GND),
    .O(\baud1/period [3])
  );
  X_LUT4 #(
    .INIT ( 16'hA000 ),
    .LOC ( "SLICE_X28Y24" ))
  \dout<6>1  (
    .ADR0(N3),
    .ADR1(VCC),
    .ADR2(\baud1/period [6]),
    .ADR3(rden_IBUF_859),
    .O(dout_6_OBUF_2538)
  );
  X_LUT4 #(
    .INIT ( 16'h8241 ),
    .LOC ( "SLICE_X28Y24" ))
  \baud1/baud_cmp_eq00008120  (
    .ADR0(\baud1/period [7]),
    .ADR1(\baud1/timer [6]),
    .ADR2(\baud1/period [6]),
    .ADR3(\baud1/timer [7]),
    .O(\baud1/baud_cmp_eq00008120_2545 )
  );
  X_FF #(
    .LOC ( "SLICE_X31Y23" ),
    .INIT ( 1'b1 ))
  \baud1/period_4  (
    .I(\baud1/period<5>/DYMUX_2559 ),
    .CE(\baud1/period<5>/CEINV_2555 ),
    .CLK(\baud1/period<5>/CLKINV_2556 ),
    .SET(\baud1/period<5>/SRINV_2557 ),
    .RST(GND),
    .O(\baud1/period [4])
  );
  X_FF #(
    .LOC ( "SLICE_X31Y23" ),
    .INIT ( 1'b0 ))
  \baud1/period_5  (
    .I(\baud1/period<5>/DXMUX_2567 ),
    .CE(\baud1/period<5>/CEINV_2555 ),
    .CLK(\baud1/period<5>/CLKINV_2556 ),
    .SET(GND),
    .RST(\baud1/period<5>/SRINV_2557 ),
    .O(\baud1/period [5])
  );
  X_LUT4 #(
    .INIT ( 16'hFBFF ),
    .LOC ( "SLICE_X16Y25" ))
  \Mcount_bitcounter_xor<1>111  (
    .ADR0(bitcounter[2]),
    .ADR1(pstate_FSM_FFd2_907),
    .ADR2(pstate_FSM_FFd1_910),
    .ADR3(bitcounter[3]),
    .O(N2_pack_2)
  );
  X_LUT4 #(
    .INIT ( 16'h5055 ),
    .LOC ( "SLICE_X16Y25" ))
  \Mcount_bitcounter_xor<0>11  (
    .ADR0(bitcounter[0]),
    .ADR1(VCC),
    .ADR2(N2),
    .ADR3(bitcounter[1]),
    .O(Mcount_bitcounter)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y25" ),
    .INIT ( 1'b0 ))
  bitcounter_0 (
    .I(\bitcounter<0>/DXMUX_2605 ),
    .CE(\bitcounter<0>/CEINV_2587 ),
    .CLK(\bitcounter<0>/CLKINV_2588 ),
    .SET(GND),
    .RST(\bitcounter<0>/FFX/RSTAND_2611 ),
    .O(bitcounter[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y25" ))
  \bitcounter<0>/FFX/RSTAND  (
    .I(reset_IBUF_872),
    .O(\bitcounter<0>/FFX/RSTAND_2611 )
  );
  X_FF #(
    .LOC ( "SLICE_X29Y23" ),
    .INIT ( 1'b0 ))
  \baud1/period_6  (
    .I(\baud1/period<7>/DYMUX_2624 ),
    .CE(\baud1/period<7>/CEINV_2620 ),
    .CLK(\baud1/period<7>/CLKINV_2621 ),
    .SET(GND),
    .RST(\baud1/period<7>/SRINV_2622 ),
    .O(\baud1/period [6])
  );
  X_FF #(
    .LOC ( "SLICE_X29Y23" ),
    .INIT ( 1'b0 ))
  \baud1/period_7  (
    .I(\baud1/period<7>/DXMUX_2633 ),
    .CE(\baud1/period<7>/CEINV_2620 ),
    .CLK(\baud1/period<7>/CLKINV_2621 ),
    .SET(GND),
    .RST(\baud1/period<7>/SRINV_2622 ),
    .O(\baud1/period [7])
  );
  X_FF #(
    .LOC ( "SLICE_X20Y26" ),
    .INIT ( 1'b0 ))
  \baud1/baud  (
    .I(\baud1/baud/DYMUX_2650 ),
    .CE(\baud1/baud/CEINV_2646 ),
    .CLK(\baud1/baud/CLKINV_2647 ),
    .SET(GND),
    .RST(\baud1/baud/FFY/RSTAND_2656 ),
    .O(\baud1/baud_911 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y26" ))
  \baud1/baud/FFY/RSTAND  (
    .I(reset_IBUF_872),
    .O(\baud1/baud/FFY/RSTAND_2656 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X12Y30" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX_2665 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_2663 ),
    .SET(GND),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1004 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X12Y30" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX_2670 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_2663 ),
    .SET(GND),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_1008 )
  );
  X_LUT4 #(
    .INIT ( 16'h000F ),
    .LOC ( "SLICE_X15Y26" ))
  shift_out_not000111 (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(pstate_FSM_FFd2_1_981),
    .ADR3(empty),
    .O(ld_shift_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h00F7 ),
    .LOC ( "SLICE_X15Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/RAM_RD_EN_FWFT1  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_979 ),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_980 ),
    .ADR2(ld_shift),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_951 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en )
  );
  X_LUT4 #(
    .INIT ( 16'h0011 ),
    .LOC ( "SLICE_X31Y18" ))
  \dout<0>11  (
    .ADR0(addr_0_IBUF_873),
    .ADR1(addr_1_IBUF_875),
    .ADR2(VCC),
    .ADR3(addr_2_IBUF_853),
    .O(N3_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hA000 ),
    .LOC ( "SLICE_X31Y18" ))
  \dout<7>1  (
    .ADR0(rden_IBUF_859),
    .ADR1(VCC),
    .ADR2(N3),
    .ADR3(\baud1/period [7]),
    .O(dout_7_OBUF_2719)
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X13Y30" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb1  (
    .ADR0(VCC),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1005 ),
    .ADR2(VCC),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_1008 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb )
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ),
    .LOC ( "SLICE_X15Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<1>11  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\fifo1/Result<1>1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0FF0 ),
    .LOC ( "SLICE_X13Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<1>11  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\fifo1/Result [1])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_1  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX_2759 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_2747 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_2748 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_2749 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0084 ),
    .LOC ( "SLICE_X15Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .ADR1(wr_fifo),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_937 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_2772 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_0  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX_2775 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_2747 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_2748 ),
    .SET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_2749 ),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ),
    .LOC ( "SLICE_X14Y20" ))
  wr_fifo1 (
    .ADR0(addr_0_IBUF_873),
    .ADR1(wren_IBUF_855),
    .ADR2(addr_2_IBUF_853),
    .ADR3(addr_1_IBUF_875),
    .O(wr_fifo_pack_1)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y23" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_1  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_2805 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_2793 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_2794 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_2795 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1])
  );
  X_LUT4 #(
    .INIT ( 16'hF00F ),
    .LOC ( "SLICE_X13Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_2820 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y23" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_0  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_2823 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_2793 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_2794 ),
    .SET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_2795 ),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0])
  );
  X_LUT4 #(
    .INIT ( 16'hA521 ),
    .LOC ( "SLICE_X14Y20" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079_SW0  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .ADR1(wr_fifo),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_937 ),
    .O(\fifo1/N01 )
  );
  X_LUT4 #(
    .INIT ( 16'h55AA ),
    .LOC ( "SLICE_X12Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW1  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .O(\fifo1/N6 )
  );
  X_LUT4 #(
    .INIT ( 16'h8421 ),
    .LOC ( "SLICE_X12Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_2875 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X14Y24" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/DYMUX_2887 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CEINV_2883 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLKINV_2884 ),
    .SET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/FFY/SET ),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_1012 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/FFY/SETOR  (
    .I(reset_IBUF_872),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/FFY/SET )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_0  (
    .I(\to_shift<1>/DYMUX_2905 ),
    .CE(\to_shift<1>/CEINV_2901 ),
    .CLK(\to_shift<1>/CLKINV_2902 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\to_shift<1>/SRINV_2903 ),
    .O(to_shift[0])
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_1  (
    .I(\to_shift<1>/DXMUX_2912 ),
    .CE(\to_shift<1>/CEINV_2901 ),
    .CLK(\to_shift<1>/CLKINV_2902 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\to_shift<1>/SRINV_2903 ),
    .O(to_shift[1])
  );
  X_LUT4 #(
    .INIT ( 16'hCCFC ),
    .LOC ( "SLICE_X13Y29" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en1  (
    .ADR0(VCC),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_951 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en )
  );
  X_SFF #(
    .LOC ( "SLICE_X15Y27" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_2  (
    .I(\to_shift<3>/DYMUX_2941 ),
    .CE(\to_shift<3>/CEINV_2937 ),
    .CLK(\to_shift<3>/CLKINV_2938 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\to_shift<3>/SRINV_2939 ),
    .O(to_shift[2])
  );
  X_SFF #(
    .LOC ( "SLICE_X15Y27" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_3  (
    .I(\to_shift<3>/DXMUX_2948 ),
    .CE(\to_shift<3>/CEINV_2937 ),
    .CLK(\to_shift<3>/CLKINV_2938 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\to_shift<3>/SRINV_2939 ),
    .O(to_shift[3])
  );
  X_SFF #(
    .LOC ( "SLICE_X13Y26" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_4  (
    .I(\to_shift<5>/DYMUX_2965 ),
    .CE(\to_shift<5>/CEINV_2961 ),
    .CLK(\to_shift<5>/CLKINV_2962 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\to_shift<5>/SRINV_2963 ),
    .O(to_shift[4])
  );
  X_SFF #(
    .LOC ( "SLICE_X13Y26" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_5  (
    .I(\to_shift<5>/DXMUX_2972 ),
    .CE(\to_shift<5>/CEINV_2961 ),
    .CLK(\to_shift<5>/CLKINV_2962 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\to_shift<5>/SRINV_2963 ),
    .O(to_shift[5])
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y27" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_6  (
    .I(\to_shift<7>/DYMUX_2989 ),
    .CE(\to_shift<7>/CEINV_2985 ),
    .CLK(\to_shift<7>/CLKINV_2986 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\to_shift<7>/SRINV_2987 ),
    .O(to_shift[6])
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y27" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_7  (
    .I(\to_shift<7>/DXMUX_2996 ),
    .CE(\to_shift<7>/CEINV_2985 ),
    .CLK(\to_shift<7>/CLKINV_2986 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\to_shift<7>/SRINV_2987 ),
    .O(to_shift[7])
  );
  X_LUT4 #(
    .INIT ( 16'h8421 ),
    .LOC ( "SLICE_X27Y22" ))
  \baud1/baud_cmp_eq0000853  (
    .ADR0(\baud1/period [2]),
    .ADR1(\baud1/timer [3]),
    .ADR2(\baud1/timer [2]),
    .ADR3(\baud1/period [3]),
    .O(\baud1/baud_cmp_eq0000853_3016 )
  );
  X_LUT4 #(
    .INIT ( 16'h9333 ),
    .LOC ( "SLICE_X27Y22" ))
  \baud1/timer_mux0000<0>11_SW0  (
    .ADR0(\baud1/timer [1]),
    .ADR1(\baud1/timer [3]),
    .ADR2(\baud1/timer [2]),
    .ADR3(\baud1/timer [0]),
    .O(N34)
  );
  X_LUT4 #(
    .INIT ( 16'h5500 ),
    .LOC ( "SLICE_X14Y21" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_1013 ),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_937 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_3038 )
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X14Y21" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/ram_wr_en_i1  (
    .ADR0(VCC),
    .ADR1(wr_fifo),
    .ADR2(VCC),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_937 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y22" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_3061 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3057 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3058 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3059 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y22" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_3070 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3057 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3058 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3059 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y24" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_3190 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_3186 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_3187 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_3188 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2])
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X17Y23" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DYMUX_3216 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV_3213 ),
    .SET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV_3214 ),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_1015 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X17Y23" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DXMUX_3223 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV_3213 ),
    .SET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV_3214 ),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_928 )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y21" ),
    .INIT ( 1'b1 ))
  control_0 (
    .I(\control<0>/DYMUX_3236 ),
    .CE(VCC),
    .CLK(\control<0>/CLKINV_3233 ),
    .SET(\control<0>/FFY/SET ),
    .RST(GND),
    .O(control[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y21" ))
  \control<0>/FFY/SETOR  (
    .I(reset_IBUF_872),
    .O(\control<0>/FFY/SET )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y28" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_0  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX_3251 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_3248 ),
    .SET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_3249 ),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y28" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_2  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX_3258 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_3248 ),
    .SET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_3249 ),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X17Y22" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/DYMUX_3271 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLKINV_3268 ),
    .SET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/FFY/SET ),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_1017 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/FFY/SETOR  (
    .I(reset_IBUF_872),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/FFY/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h8421 ),
    .LOC ( "SLICE_X27Y24" ))
  \baud1/baud_cmp_eq0000893  (
    .ADR0(\baud1/timer [5]),
    .ADR1(\baud1/period [4]),
    .ADR2(\baud1/period [5]),
    .ADR3(\baud1/timer [4]),
    .O(\baud1/baud_cmp_eq0000893_3286 )
  );
  X_LUT4 #(
    .INIT ( 16'h00AA ),
    .LOC ( "SLICE_X15Y29" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb1  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_1012 ),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_1018 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb )
  );
  X_LUT4 #(
    .INIT ( 16'h9933 ),
    .LOC ( "SLICE_X26Y22" ))
  \baud1/timer_mux0000<0>11_SW4  (
    .ADR0(\baud1/timer [0]),
    .ADR1(\baud1/timer [2]),
    .ADR2(VCC),
    .ADR3(\baud1/timer [1]),
    .O(N42)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/DYMUX_3320 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLKINV_3317 ),
    .SET(GND),
    .RST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/FFY/RSTAND_3325 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_1013 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/FFY/RSTAND  (
    .I(reset_IBUF_872),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/FFY/RSTAND_3325 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X14Y29" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DYMUX_3334 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV_3332 ),
    .SET(GND),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_1011 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X14Y29" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DXMUX_3339 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV_3332 ),
    .SET(GND),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_1018 )
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ),
    .LOC ( "SLICE_X12Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_3352 )
  );
  X_LUT4 #(
    .INIT ( 16'h33CC ),
    .LOC ( "SLICE_X17Y29" ))
  \Mcount_bittimer_xor<1>11  (
    .ADR0(VCC),
    .ADR1(bittimer[1]),
    .ADR2(VCC),
    .ADR3(bittimer[0]),
    .O(Result[1])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y29" ),
    .INIT ( 1'b0 ))
  bittimer_1 (
    .I(\bittimer<0>/DYMUX_3379 ),
    .CE(\bittimer<0>/CEINV_3367 ),
    .CLK(\bittimer<0>/CLKINV_3368 ),
    .SET(GND),
    .RST(\bittimer<0>/SRINV_3369 ),
    .O(bittimer[1])
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ),
    .LOC ( "SLICE_X17Y29" ))
  bitcounter_not00012_SW0 (
    .ADR0(bittimer[1]),
    .ADR1(bittimer[0]),
    .ADR2(bittimer[3]),
    .ADR3(VCC),
    .O(N27)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y29" ),
    .INIT ( 1'b0 ))
  bittimer_0 (
    .I(\bittimer<0>/DXMUX_3396 ),
    .CE(\bittimer<0>/CEINV_3367 ),
    .CLK(\bittimer<0>/CLKINV_3368 ),
    .SET(GND),
    .RST(\bittimer<0>/SRINV_3369 ),
    .O(bittimer[0])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i  (
    .I(\full/DYMUX_3411 ),
    .CE(VCC),
    .CLK(\full/CLKINV_3408 ),
    .SET(\full/FFY/SET ),
    .RST(GND),
    .O(full)
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y22" ))
  \full/FFY/SETOR  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_928 ),
    .O(\full/FFY/SET )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y31" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg_1  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/DYMUX_3424 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/CLKINV_3421 ),
    .SET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/FFY/SET ),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y31" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/FFY/SETOR  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/FFY/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h870F ),
    .LOC ( "SLICE_X19Y27" ))
  \Mcount_bitcounter_xor<3>1_SW0  (
    .ADR0(bitcounter[1]),
    .ADR1(bitcounter[0]),
    .ADR2(bitcounter[3]),
    .ADR3(bitcounter[2]),
    .O(N29_pack_2)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y28" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i  (
    .I(\empty/DYMUX_3437 ),
    .CE(VCC),
    .CLK(\empty/CLKINV_3434 ),
    .SET(\empty/FFY/SET ),
    .RST(GND),
    .O(empty)
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y28" ))
  \empty/FFY/SETOR  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\empty/FFY/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h04F7 ),
    .LOC ( "SLICE_X19Y27" ))
  \Mcount_bitcounter_xor<3>1  (
    .ADR0(N30_0),
    .ADR1(pstate_FSM_FFd2_907),
    .ADR2(pstate_FSM_FFd1_910),
    .ADR3(N29),
    .O(Mcount_bitcounter3)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y27" ),
    .INIT ( 1'b0 ))
  bitcounter_3 (
    .I(\bitcounter<3>/DXMUX_3473 ),
    .CE(\bitcounter<3>/CEINV_3456 ),
    .CLK(\bitcounter<3>/CLKINV_3457 ),
    .SET(GND),
    .RST(\bitcounter<3>/FFX/RSTAND_3479 ),
    .O(bitcounter[3])
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \bitcounter<3>/FFX/RSTAND  (
    .I(reset_IBUF_872),
    .O(\bitcounter<3>/FFX/RSTAND_3479 )
  );
  X_LUT4 #(
    .INIT ( 16'h9733 ),
    .LOC ( "SLICE_X18Y27" ))
  \Mcount_bitcounter_xor<3>1_SW1  (
    .ADR0(bitcounter[2]),
    .ADR1(bitcounter[3]),
    .ADR2(bitcounter[0]),
    .ADR3(bitcounter[1]),
    .O(N30)
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X29Y20" ))
  control_1_not00017 (
    .ADR0(addr_1_IBUF_875),
    .ADR1(addr_0_IBUF_873),
    .ADR2(wren_IBUF_855),
    .ADR3(addr_2_IBUF_853),
    .O(control_1_not00017_3502)
  );
  X_BUF #(
    .LOC ( "PAD45" ))
  \dout<0>/OUTPUT/OFF/OMUX  (
    .I(\dout_0_OBUF/F5MUX_1407 ),
    .O(\dout<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD51" ))
  \dout<1>/OUTPUT/OFF/OMUX  (
    .I(\dout_1_OBUF/F5MUX_1382 ),
    .O(\dout<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD52" ))
  \dout<2>/OUTPUT/OFF/OMUX  (
    .I(dout_2_OBUF_2427),
    .O(\dout<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD49" ))
  \dout<3>/OUTPUT/OFF/OMUX  (
    .I(dout_3_OBUF_2419),
    .O(\dout<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD44" ))
  \dout<4>/OUTPUT/OFF/OMUX  (
    .I(dout_4_OBUF_2443),
    .O(\dout<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  \dout<5>/OUTPUT/OFF/OMUX  (
    .I(dout_5_OBUF_2451),
    .O(\dout<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD38" ))
  \dout<6>/OUTPUT/OFF/OMUX  (
    .I(dout_6_OBUF_2538),
    .O(\dout<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD42" ))
  \dout<7>/OUTPUT/OFF/OMUX  (
    .I(dout_7_OBUF_2719),
    .O(\dout<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD37" ))
  \txout/OUTPUT/OFF/OMUX  (
    .I(shift_out[0]),
    .O(\txout/O )
  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3>  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2>  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1>  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0>  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3>  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2>  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1>  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0>  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0>  (
    .I(din_0_IBUF_874),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1>  (
    .I(din_1_IBUF_876),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8>  (
    .I(din_2_IBUF_854),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9>  (
    .I(din_3_IBUF_856),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16>  (
    .I(din_4_IBUF_857),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17>  (
    .I(din_5_IBUF_858),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24>  (
    .I(din_6_IBUF_860),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25>  (
    .I(din_7_IBUF_861),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> )

  );
  X_ZERO   NlwBlock_uart_tx_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_uart_tx_VCC (
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

