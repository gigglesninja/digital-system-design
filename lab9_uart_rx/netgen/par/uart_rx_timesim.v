////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: uart_rx_timesim.v
// /___/   /\     Timestamp: Sun Oct 26 02:31:38 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf uart_rx.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim uart_rx.ncd uart_rx_timesim.v 
// Device	: 3s100ecp132-5 (PRODUCTION 1.27 2013-06-08)
// Input file	: uart_rx.ncd
// Output file	: C:\Users\James\Desktop\iDriveSync\IDrive-Sync\DSD LAB\lab9_uart_rx\netgen\par\uart_rx_timesim.v
// # of Modules	: 1
// Design Name	: uart_rx
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

module uart_rx (
  clk, rden, wren, reset, rxin, dout, addr, din
);
  input clk;
  input rden;
  input wren;
  input reset;
  input rxin;
  output [8 : 0] dout;
  input [2 : 0] addr;
  input [7 : 0] din;
  wire ld_shift_0;
  wire clk_BUFGP;
  wire reset_IBUF_963;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ;
  wire din_0_IBUF_978;
  wire \fifo1/N23_0 ;
  wire \fifo1/N9_0 ;
  wire in_two_983;
  wire \baud1/Madd_timer_addsub0000_cy[3] ;
  wire N30;
  wire \baud1/baud_cmp_eq0000_0 ;
  wire \baud1/baud_cmp_eq0000893_0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_995 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_996 ;
  wire rd_fifo;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_998 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ;
  wire rxin_IBUF_1000;
  wire N26_0;
  wire N28_0;
  wire bitcounter_not0001_0;
  wire N10;
  wire finish_0;
  wire loaded_mux0000_0;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056_0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1019 ;
  wire \fifo1/N5_0 ;
  wire bittime_0;
  wire \baud1/baud_1023 ;
  wire full;
  wire N20;
  wire loaded_1030;
  wire load_1032;
  wire \pstate_mux0000<2>4_1033 ;
  wire \pstate_mux0000<2>10_0 ;
  wire \pstate_mux0000<3>15_0 ;
  wire \pstate_mux0000<3>2_1036 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000062_0 ;
  wire empty;
  wire N14;
  wire N16;
  wire addr_2_IBUF_1045;
  wire wren_IBUF_1047;
  wire rden_IBUF_1051;
  wire addr_0_IBUF_1064;
  wire addr_1_IBUF_1065;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 ;
  wire \dout<0>30 ;
  wire \dout<1>30 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_1102 ;
  wire N41;
  wire N47;
  wire \baud1/timer_mux0000<0>11_SW5/O ;
  wire \fifo1/N17_0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000100_SW0_SW0_SW0/O ;
  wire \fifo1/N8_0 ;
  wire \pstate_mux0000<4>_SW0/O ;
  wire \pstate_mux0000<2>18_SW0/O ;
  wire \baud1/baud_cmp_eq0000853/O ;
  wire \baud1/baud_cmp_eq0000826_0 ;
  wire \baud1/baud_cmp_eq00008120_0 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000079/O ;
  wire \fifo1/N7_0 ;
  wire \fifo1/N21_0 ;
  wire \baud1/Madd_timer_addsub0000_cy<5>_0 ;
  wire \baud1/timer_mux0000<4>_SW0/O ;
  wire \bitcounter_not00011_SW0/O ;
  wire frame_ready_1129;
  wire \baud1/timer_mux0000<0>11_SW7/O ;
  wire \baud1/timer_mux0000<0>11_SW6/O ;
  wire \fifo1/N3 ;
  wire wr_baud_0;
  wire N22;
  wire N24;
  wire \dout<2>10_1140 ;
  wire \din<4>/INBUF ;
  wire \din<2>/INBUF ;
  wire \dout<7>/O ;
  wire \dout<3>/O ;
  wire \wren/INBUF ;
  wire \dout<5>/O ;
  wire \clk/INBUF ;
  wire \dout<0>/O ;
  wire \dout<8>/O ;
  wire \reset/INBUF ;
  wire \din<3>/INBUF ;
  wire \rden/INBUF ;
  wire \din<5>/INBUF ;
  wire \rxin/INBUF ;
  wire \dout<4>/O ;
  wire \dout<6>/O ;
  wire \din<6>/INBUF ;
  wire \din<7>/INBUF ;
  wire \dout<2>/O ;
  wire \dout<1>/O ;
  wire \addr<0>/INBUF ;
  wire \bitcounter<0>/DXMUX_1802 ;
  wire Mcount_bitcounter;
  wire bittime;
  wire \bitcounter<0>/CLKINV_1785 ;
  wire \bitcounter<0>/CEINV_1784 ;
  wire \addr<2>/INBUF ;
  wire \dout<1>30/F5MUX_2226 ;
  wire N78;
  wire \dout<1>30/BXINV_2219 ;
  wire N77;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DXMUX_2306 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FXMUX_2305 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/F5MUX_2304 ;
  wire \fifo1/N26 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/BXINV_2297 ;
  wire \fifo1/N25 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_2289 ;
  wire \dout_3_OBUF/F5MUX_2251 ;
  wire \dout<3>1_2249 ;
  wire \dout_3_OBUF/BXINV_2243 ;
  wire \dout<3>2_2241 ;
  wire \dout_5_OBUF/F5MUX_2333 ;
  wire \dout<5>1_2331 ;
  wire \dout_5_OBUF/BXINV_2325 ;
  wire \dout<5>2_2323 ;
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
  wire \baud1/timer<2>/DXMUX_2438 ;
  wire \baud1/timer_mux0000<0>11_SW5/O_pack_2 ;
  wire \baud1/timer<2>/CLKINV_2422 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_2471 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000100_SW0_SW0_SW0/O_pack_2 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_2456 ;
  wire \dout_7_OBUF/F5MUX_2176 ;
  wire \dout<7>1_2174 ;
  wire \dout_7_OBUF/BXINV_2168 ;
  wire \dout<7>2_2166 ;
  wire \dout_4_OBUF/F5MUX_2276 ;
  wire \dout<4>1_2274 ;
  wire \dout_4_OBUF/BXINV_2268 ;
  wire \dout<4>2_2266 ;
  wire \pstate<1>/DXMUX_2503 ;
  wire \pstate_mux0000<4>_SW0/O_pack_2 ;
  wire \pstate<1>/CLKINV_2486 ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \dout<0>30/F5MUX_2201 ;
  wire N80;
  wire \dout<0>30/BXINV_2194 ;
  wire N79;
  wire \N47/F5MUX_2408 ;
  wire \dout<2>41_SW0 ;
  wire \N47/BXINV_2401 ;
  wire \N47/G ;
  wire \dout_6_OBUF/F5MUX_2383 ;
  wire \dout<6>1_2381 ;
  wire \dout_6_OBUF/BXINV_2375 ;
  wire \dout<6>2_2373 ;
  wire \N41/F5MUX_2358 ;
  wire N46;
  wire \N41/BXINV_2351 ;
  wire N45;
  wire \din<0>/INBUF ;
  wire \addr<1>/INBUF ;
  wire \din<1>/INBUF ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_2944 ;
  wire \fifo1/Result<3>1 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_2931 ;
  wire \fifo1/Result<2>1 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_2922 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_2921 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_2920 ;
  wire \baud1/Madd_timer_addsub0000_cy[5] ;
  wire \baud1/Madd_timer_addsub0000_cy<3>_pack_1 ;
  wire \baud1/timer<1>/DXMUX_2872 ;
  wire \baud1/timer<1>/DYMUX_2858 ;
  wire \baud1/timer<1>/SRINV_2850 ;
  wire \baud1/timer<1>/CLKINV_2849 ;
  wire \frame_ready/DXMUX_2701 ;
  wire \frame_ready/FXMUX_2700 ;
  wire finish;
  wire \bitcounter_not00011_SW0/O_pack_1 ;
  wire \frame_ready/CLKINV_2683 ;
  wire \in_two/DYMUX_2904 ;
  wire Mshreg_in_two;
  wire \in_two/DIG_MUX_2893 ;
  wire \in_two/CLKINV_2891 ;
  wire \in_two/WSG ;
  wire \in_two/SRINV_2887 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_2620 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_2619 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux0000 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000079/O_pack_2 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_2605 ;
  wire \pstate<3>/DXMUX_2538 ;
  wire \pstate_mux0000<2>18_SW0/O_pack_1 ;
  wire \pstate<3>/CLKINV_2521 ;
  wire N26;
  wire \baud1/timer_mux0000<4>_SW0/O_pack_1 ;
  wire \baud1/baud_cmp_eq0000 ;
  wire \baud1/baud_cmp_eq0000853/O_pack_1 ;
  wire \baud1/timer<6>/DXMUX_2771 ;
  wire N30_pack_2;
  wire \baud1/timer<6>/CLKINV_2754 ;
  wire \baud1/timer<5>/DXMUX_2806 ;
  wire \baud1/timer_mux0000<0>11_SW6/O_pack_2 ;
  wire \baud1/timer<5>/CLKINV_2790 ;
  wire \fifo1/N8 ;
  wire \fifo1/N3_pack_1 ;
  wire \baud1/timer<7>/DXMUX_2736 ;
  wire \baud1/timer_mux0000<0>11_SW7/O_pack_2 ;
  wire \baud1/timer<7>/CLKINV_2720 ;
  wire \pstate_mux0000<3>15_2590 ;
  wire N16_pack_1;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_2986 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_2973 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2964 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2963 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2962 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/DXMUX_1719 ;
  wire \fifo1/Result<1>1 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/DYMUX_1704 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000062_1701 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/SRINV_1695 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/CLKINV_1694 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/CEINV_1693 ;
  wire \load/DXMUX_1614 ;
  wire \load/FXMUX_1613 ;
  wire ld_shift_1611;
  wire N20_pack_1;
  wire \load/CLKINV_1597 ;
  wire \pstate_mux0000<2>10_1642 ;
  wire \pstate_mux0000<2>4_pack_1 ;
  wire \full/DYMUX_1581 ;
  wire \full/CLKINV_1579 ;
  wire \pstate<2>/DXMUX_1673 ;
  wire \pstate_mux0000<3>2_pack_1 ;
  wire \pstate<2>/CLKINV_1655 ;
  wire \bittimer<0>/DXMUX_1568 ;
  wire \bittimer<0>/DYMUX_1559 ;
  wire \bittimer<0>/SRINV_1549 ;
  wire \bittimer<0>/CLKINV_1548 ;
  wire \bittimer<0>/CEINV_1547 ;
  wire \bitcounter<3>/DXMUX_1764 ;
  wire Mcount_bitcounter3;
  wire N14_pack_3;
  wire \bitcounter<3>/CLKINV_1747 ;
  wire \bitcounter<3>/CEINV_1746 ;
  wire \empty/DYMUX_1730 ;
  wire \empty/CLKINV_1728 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_3689 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/BXINV_3688 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/REVUSED_3687 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_3685 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_3684 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CEINV_3683 ;
  wire dout_1_OBUF_3674;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_3893 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_3886 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3884 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3883 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3882 ;
  wire \frame_error<7>/DXMUX_3740 ;
  wire \frame_error<7>/DYMUX_3731 ;
  wire \frame_error<7>/SRINV_3729 ;
  wire \frame_error<7>/CLKINV_3728 ;
  wire \frame_error<7>/CEINV_3727 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_3869 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_3862 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3860 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3859 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3858 ;
  wire \dout_fifo<5>/DXMUX_3714 ;
  wire \dout_fifo<5>/DYMUX_3707 ;
  wire \dout_fifo<5>/SRINV_3705 ;
  wire \dout_fifo<5>/CLKINV_3704 ;
  wire \dout_fifo<5>/CEINV_3703 ;
  wire \dout_fifo<1>/DXMUX_3579 ;
  wire \dout_fifo<1>/DYMUX_3572 ;
  wire \dout_fifo<1>/SRINV_3570 ;
  wire \dout_fifo<1>/CLKINV_3569 ;
  wire \dout_fifo<1>/CEINV_3568 ;
  wire \frame_error<3>/FFX/RST ;
  wire \frame_error<3>/FFY/RST ;
  wire \frame_error<3>/DXMUX_3605 ;
  wire \frame_error<3>/DYMUX_3596 ;
  wire \frame_error<3>/SRINV_3594 ;
  wire \frame_error<3>/CLKINV_3593 ;
  wire \frame_error<3>/CEINV_3592 ;
  wire \frame_error<5>/FFX/RST ;
  wire \frame_error<5>/FFY/RST ;
  wire \frame_error<5>/DXMUX_3657 ;
  wire \frame_error<5>/DYMUX_3648 ;
  wire \frame_error<5>/SRINV_3646 ;
  wire \frame_error<5>/CLKINV_3645 ;
  wire \frame_error<5>/CEINV_3644 ;
  wire \dout_fifo<8>/DYMUX_3819 ;
  wire \dout_fifo<8>/SRINV_3817 ;
  wire \dout_fifo<8>/CLKINV_3816 ;
  wire \dout_fifo<8>/CEINV_3815 ;
  wire \shift<3>/DXMUX_3844 ;
  wire \shift<3>/DYMUX_3836 ;
  wire \shift<3>/SRINV_3834 ;
  wire \shift<3>/CLKINV_3833 ;
  wire \shift<3>/CEINV_3832 ;
  wire \dout_fifo<3>/DXMUX_3631 ;
  wire \dout_fifo<3>/DYMUX_3624 ;
  wire \dout_fifo<3>/SRINV_3622 ;
  wire \dout_fifo<3>/CLKINV_3621 ;
  wire \dout_fifo<3>/CEINV_3620 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056_3558 ;
  wire \baud1/baud_cmp_eq0000826_3757 ;
  wire \dout_fifo<7>/DXMUX_3778 ;
  wire \dout_fifo<7>/DYMUX_3771 ;
  wire \dout_fifo<7>/SRINV_3769 ;
  wire \dout_fifo<7>/CLKINV_3768 ;
  wire \dout_fifo<7>/CEINV_3767 ;
  wire \shift<1>/DXMUX_3803 ;
  wire \shift<1>/DYMUX_3795 ;
  wire \shift<1>/SRINV_3793 ;
  wire \shift<1>/CLKINV_3792 ;
  wire \shift<1>/CEINV_3791 ;
  wire \shift<5>/DXMUX_1164 ;
  wire \shift<5>/DYMUX_1156 ;
  wire \shift<5>/SRINV_1154 ;
  wire \shift<5>/CLKINV_1153 ;
  wire \shift<5>/CEINV_1152 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_1189 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_1182 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_1180 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_1179 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_1178 ;
  wire \shift<7>/DXMUX_1238 ;
  wire \shift<7>/DYMUX_1230 ;
  wire \shift<7>/SRINV_1228 ;
  wire \shift<7>/CLKINV_1227 ;
  wire \shift<7>/CEINV_1226 ;
  wire \control<0>/DYMUX_1254 ;
  wire \control<0>/CLKINV_1251 ;
  wire \control<0>/CEINV_1250 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_1213 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_1206 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_1204 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_1203 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_1202 ;
  wire \shift<9>/DXMUX_1305 ;
  wire \shift<9>/DYMUX_1297 ;
  wire \shift<9>/SRINV_1295 ;
  wire \shift<9>/CLKINV_1294 ;
  wire \shift<9>/CEINV_1293 ;
  wire \bitcounter<0>/FFX/RSTAND_1808 ;
  wire \baud1/timer<4>/DXMUX_1357 ;
  wire \baud1/baud_cmp_eq0000893_1347 ;
  wire \baud1/timer<4>/CLKINV_1341 ;
  wire \baud1/timer<3>/DXMUX_1425 ;
  wire N28;
  wire \baud1/timer<3>/CLKINV_1407 ;
  wire \fifo1/N23 ;
  wire \fifo1/N9 ;
  wire \fifo1/N5 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_pack_1 ;
  wire \bitcounter<1>/DXMUX_1462 ;
  wire Mcount_bitcounter1;
  wire N10_pack_2;
  wire \bitcounter<1>/CLKINV_1444 ;
  wire \bitcounter<1>/CEINV_1443 ;
  wire \pstate<4>/DXMUX_1508 ;
  wire \pstate<4>/DYMUX_1492 ;
  wire bitcounter_not0001;
  wire \pstate<4>/SRINV_1481 ;
  wire \pstate<4>/CLKINV_1480 ;
  wire \bitcounter<3>/FFX/RSTAND_1770 ;
  wire \control<2>/DYMUX_1321 ;
  wire \control<2>/CLKINV_1318 ;
  wire \control<2>/CEINV_1317 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1/DXMUX_1392 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1/SRINV_1376 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1/CLKINV_1375 ;
  wire dout_0_OBUF_3482;
  wire wr_control;
  wire \baud1/baud/DYMUX_3360 ;
  wire \baud1/baud/CLKINV_3357 ;
  wire \baud1/baud/CEINV_3356 ;
  wire \baud1/period<5>/DXMUX_3252 ;
  wire \baud1/period<5>/DYMUX_3244 ;
  wire \baud1/period<5>/SRINV_3242 ;
  wire \baud1/period<5>/CLKINV_3241 ;
  wire \baud1/period<5>/CEINV_3240 ;
  wire \bittimer<3>/DXMUX_3123 ;
  wire \bittimer<3>/DYMUX_3108 ;
  wire \bittimer<3>/SRINV_3099 ;
  wire \bittimer<3>/CLKINV_3098 ;
  wire \bittimer<3>/CEINV_3097 ;
  wire control_2_not0001;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ;
  wire \fifo1/N7 ;
  wire \baud1/period<1>/DXMUX_3199 ;
  wire \baud1/period<1>/DYMUX_3190 ;
  wire \baud1/period<1>/SRINV_3188 ;
  wire \baud1/period<1>/CLKINV_3187 ;
  wire \baud1/period<1>/CEINV_3186 ;
  wire \baud1/period<3>/DXMUX_3226 ;
  wire \baud1/period<3>/DYMUX_3217 ;
  wire \baud1/period<3>/SRINV_3215 ;
  wire \baud1/period<3>/CLKINV_3214 ;
  wire \baud1/period<3>/CEINV_3213 ;
  wire \loaded/DXMUX_3343 ;
  wire \loaded/FXMUX_3342 ;
  wire loaded_mux0000_3340;
  wire N22_pack_1;
  wire \loaded/CLKINVNOT ;
  wire \loaded/CEINV_3325 ;
  wire \control<1>/DXMUX_3026 ;
  wire control_1_mux0000;
  wire \control<1>/DYMUX_3011 ;
  wire \control<1>/SRINV_3003 ;
  wire \control<1>/CLKINV_3002 ;
  wire \bitcounter<2>/DYMUX_3077 ;
  wire Mcount_bitcounter2;
  wire \bitcounter<2>/CLKINV_3067 ;
  wire \bitcounter<2>/CEINV_3066 ;
  wire \fifo1/N21 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ;
  wire rd_fifo_pack_1;
  wire \frame_error<8>/DYMUX_3051 ;
  wire frame_error_8_or0000;
  wire \frame_error<8>/CLKINV_3040 ;
  wire \frame_error<8>/CEINV_3039 ;
  wire \baud1/period<7>/DXMUX_3304 ;
  wire \baud1/period<7>/DYMUX_3295 ;
  wire \baud1/period<7>/SRINV_3293 ;
  wire \baud1/period<7>/CLKINV_3292 ;
  wire \baud1/period<7>/CEINV_3291 ;
  wire loaded_not0001;
  wire N24_pack_1;
  wire wr_baud;
  wire dout_8_OBUF_3451;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/DXMUX_3407 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/DYMUX_3392 ;
  wire \fifo1/N17 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/SRINV_3381 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/CLKINV_3380 ;
  wire \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/CEINV_3379 ;
  wire \frame_error<1>/FFX/RST ;
  wire \frame_error<1>/FFY/RST ;
  wire \frame_error<1>/DXMUX_3541 ;
  wire \frame_error<1>/DYMUX_3532 ;
  wire \frame_error<1>/SRINV_3530 ;
  wire \frame_error<1>/CLKINV_3529 ;
  wire \frame_error<1>/CEINV_3528 ;
  wire dout_2_OBUF_3518;
  wire \dout<2>10_pack_1 ;
  wire \baud1/baud_cmp_eq00008120_3494 ;
  wire \control<0>/FFY/RSTAND_1260 ;
  wire \control<2>/FFY/RSTAND_1327 ;
  wire \baud1/timer<3>/FFX/RSTAND_1430 ;
  wire \baud1/timer<4>/FFX/RSTAND_1362 ;
  wire \bitcounter<1>/FFX/RSTAND_1468 ;
  wire \load/FFX/RSTAND_1619 ;
  wire \pstate<2>/FFX/RSTAND_1678 ;
  wire \baud1/baud/FFY/RSTAND_3366 ;
  wire \loaded/FFX/RSTAND_3349 ;
  wire \pstate<1>/FFX/RSTAND_2508 ;
  wire \baud1/timer<2>/FFX/RSTAND_2443 ;
  wire \pstate<3>/FFX/RSTAND_2543 ;
  wire \baud1/timer<6>/FFX/RSTAND_2776 ;
  wire \baud1/timer<5>/FFX/RSTAND_2811 ;
  wire \baud1/timer<7>/FFX/RSTAND_2741 ;
  wire \frame_ready/FFX/RSTAND_2706 ;
  wire \bitcounter<2>/FFY/RSTAND_3083 ;
  wire \frame_error<8>/FFY/RSTAND_3057 ;
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
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<2> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24> ;
  wire \NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> ;
  wire GND;
  wire VCC;
  wire \NLW_Mshreg_in_two/SRL16E_Q15_UNCONNECTED ;
  wire [9 : 0] shift;
  wire [3 : 0] \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count ;
  wire [5 : 0] pstate;
  wire [3 : 0] \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 ;
  wire [3 : 0] \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count ;
  wire [3 : 0] \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 ;
  wire [2 : 0] control;
  wire [7 : 0] \baud1/timer ;
  wire [7 : 0] \baud1/period ;
  wire [3 : 0] bitcounter;
  wire [3 : 0] bittimer;
  wire [8 : 0] frame_error;
  wire [8 : 0] \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem ;
  wire [8 : 0] dout_fifo;
  wire [7 : 0] \baud1/timer_mux0000 ;
  wire [5 : 1] pstate_mux0000;
  wire [3 : 1] \fifo1/Result ;
  wire [3 : 1] Result;
  initial $sdf_annotate("netgen/par/uart_rx_timesim.sdf");
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
  X_OPAD #(
    .LOC ( "PAD38" ))
  \dout<7>/PAD  (
    .PAD(dout[7])
  );
  X_OBUF #(
    .LOC ( "PAD38" ))
  dout_7_OBUF (
    .I(\dout<7>/O ),
    .O(dout[7])
  );
  X_OPAD #(
    .LOC ( "PAD45" ))
  \dout<3>/PAD  (
    .PAD(dout[3])
  );
  X_OBUF #(
    .LOC ( "PAD45" ))
  dout_3_OBUF (
    .I(\dout<3>/O ),
    .O(dout[3])
  );
  X_IPAD #(
    .LOC ( "PAD39" ))
  \wren/PAD  (
    .PAD(wren)
  );
  X_BUF #(
    .LOC ( "PAD39" ))
  wren_IBUF (
    .I(wren),
    .O(\wren/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD40" ))
  \dout<5>/PAD  (
    .PAD(dout[5])
  );
  X_OBUF #(
    .LOC ( "PAD40" ))
  dout_5_OBUF (
    .I(\dout<5>/O ),
    .O(dout[5])
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
    .LOC ( "PAD47" ))
  \dout<0>/PAD  (
    .PAD(dout[0])
  );
  X_OBUF #(
    .LOC ( "PAD47" ))
  dout_0_OBUF (
    .I(\dout<0>/O ),
    .O(dout[0])
  );
  X_OPAD #(
    .LOC ( "PAD44" ))
  \dout<8>/PAD  (
    .PAD(dout[8])
  );
  X_OBUF #(
    .LOC ( "PAD44" ))
  dout_8_OBUF (
    .I(\dout<8>/O ),
    .O(dout[8])
  );
  X_IPAD #(
    .LOC ( "PAD51" ))
  \reset/PAD  (
    .PAD(reset)
  );
  X_BUF #(
    .LOC ( "PAD51" ))
  reset_IBUF (
    .I(reset),
    .O(\reset/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD33" ))
  \din<3>/PAD  (
    .PAD(din[3])
  );
  X_BUF #(
    .LOC ( "PAD33" ))
  din_3_IBUF (
    .I(din[3]),
    .O(\din<3>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD54" ))
  \rden/PAD  (
    .PAD(rden)
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  rden_IBUF (
    .I(rden),
    .O(\rden/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD30" ))
  \din<5>/PAD  (
    .PAD(din[5])
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  din_5_IBUF (
    .I(din[5]),
    .O(\din<5>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD25" ))
  \rxin/PAD  (
    .PAD(rxin)
  );
  X_BUF #(
    .LOC ( "PAD25" ))
  rxin_IBUF (
    .I(rxin),
    .O(\rxin/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD43" ))
  \dout<4>/PAD  (
    .PAD(dout[4])
  );
  X_OBUF #(
    .LOC ( "PAD43" ))
  dout_4_OBUF (
    .I(\dout<4>/O ),
    .O(dout[4])
  );
  X_OPAD #(
    .LOC ( "PAD42" ))
  \dout<6>/PAD  (
    .PAD(dout[6])
  );
  X_OBUF #(
    .LOC ( "PAD42" ))
  dout_6_OBUF (
    .I(\dout<6>/O ),
    .O(dout[6])
  );
  X_IPAD #(
    .LOC ( "PAD29" ))
  \din<6>/PAD  (
    .PAD(din[6])
  );
  X_BUF #(
    .LOC ( "PAD29" ))
  din_6_IBUF (
    .I(din[6]),
    .O(\din<6>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD28" ))
  \din<7>/PAD  (
    .PAD(din[7])
  );
  X_BUF #(
    .LOC ( "PAD28" ))
  din_7_IBUF (
    .I(din[7]),
    .O(\din<7>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD37" ))
  \dout<2>/PAD  (
    .PAD(dout[2])
  );
  X_OBUF #(
    .LOC ( "PAD37" ))
  dout_2_OBUF (
    .I(\dout<2>/O ),
    .O(dout[2])
  );
  X_OPAD #(
    .LOC ( "PAD49" ))
  \dout<1>/PAD  (
    .PAD(dout[1])
  );
  X_OBUF #(
    .LOC ( "PAD49" ))
  dout_1_OBUF (
    .I(\dout<1>/O ),
    .O(dout[1])
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  \rden/IFF/IMUX  (
    .I(\rden/INBUF ),
    .O(rden_IBUF_1051)
  );
  X_IPAD #(
    .LOC ( "PAD52" ))
  \addr<0>/PAD  (
    .PAD(addr[0])
  );
  X_BUF #(
    .LOC ( "PAD52" ))
  addr_0_IBUF (
    .I(addr[0]),
    .O(\addr<0>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y29" ))
  \bitcounter<0>/DXMUX  (
    .I(Mcount_bitcounter),
    .O(\bitcounter<0>/DXMUX_1802 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y29" ))
  \bitcounter<0>/YUSED  (
    .I(bittime),
    .O(bittime_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y29" ))
  \bitcounter<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\bitcounter<0>/CLKINV_1785 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y29" ))
  \bitcounter<0>/CEINV  (
    .I(bitcounter_not0001_0),
    .O(\bitcounter<0>/CEINV_1784 )
  );
  X_IPAD #(
    .LOC ( "PAD53" ))
  \addr<2>/PAD  (
    .PAD(addr[2])
  );
  X_BUF #(
    .LOC ( "PAD53" ))
  addr_2_IBUF (
    .I(addr[2]),
    .O(\addr<2>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y25" ))
  \dout<1>30/XUSED  (
    .I(\dout<1>30/F5MUX_2226 ),
    .O(\dout<1>30 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X25Y25" ))
  \dout<1>30/F5MUX  (
    .IA(N77),
    .IB(N78),
    .SEL(\dout<1>30/BXINV_2219 ),
    .O(\dout<1>30/F5MUX_2226 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y25" ))
  \dout<1>30/BXINV  (
    .I(addr_0_IBUF_1064),
    .O(\dout<1>30/BXINV_2219 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FXMUX_2305 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DXMUX_2306 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/F5MUX_2304 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FXMUX_2305 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X17Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/F5MUX  (
    .IA(\fifo1/N25 ),
    .IB(\fifo1/N26 ),
    .SEL(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/BXINV_2297 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/F5MUX_2304 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/BXINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_998 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/BXINV_2297 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_2289 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X29Y27" ))
  \dout_3_OBUF/F5MUX  (
    .IA(\dout<3>2_2241 ),
    .IB(\dout<3>1_2249 ),
    .SEL(\dout_3_OBUF/BXINV_2243 ),
    .O(\dout_3_OBUF/F5MUX_2251 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y27" ))
  \dout_3_OBUF/BXINV  (
    .I(addr_0_IBUF_1064),
    .O(\dout_3_OBUF/BXINV_2243 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X29Y24" ))
  \dout_5_OBUF/F5MUX  (
    .IA(\dout<5>2_2323 ),
    .IB(\dout<5>1_2331 ),
    .SEL(\dout_5_OBUF/BXINV_2325 ),
    .O(\dout_5_OBUF/F5MUX_2333 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y24" ))
  \dout_5_OBUF/BXINV  (
    .I(addr_0_IBUF_1064),
    .O(\dout_5_OBUF/BXINV_2325 )
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
    .ENA(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .ENB(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 ),
    .SSRA(1'b0),
    .SSRB(pstate[0]),
    .WEA(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
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
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<2> 
, 
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
, \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [8], 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [7], 
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
, \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [6], 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [5], 
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
, \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [4], 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [3], 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB7 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB6 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB5 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB4 
, 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB3 
, \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [2], 
\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [1], 
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
  X_BUF #(
    .LOC ( "SLICE_X27Y28" ))
  \baud1/timer<2>/DXMUX  (
    .I(\baud1/timer_mux0000 [5]),
    .O(\baud1/timer<2>/DXMUX_2438 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y28" ))
  \baud1/timer<2>/YUSED  (
    .I(\baud1/timer_mux0000<0>11_SW5/O_pack_2 ),
    .O(\baud1/timer_mux0000<0>11_SW5/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y28" ))
  \baud1/timer<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/timer<2>/CLKINV_2422 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_2471 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/YUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000100_SW0_SW0_SW0/O_pack_2 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000100_SW0_SW0_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_2456 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y26" ))
  \dout_7_OBUF/F5MUX  (
    .IA(\dout<7>2_2166 ),
    .IB(\dout<7>1_2174 ),
    .SEL(\dout_7_OBUF/BXINV_2168 ),
    .O(\dout_7_OBUF/F5MUX_2176 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y26" ))
  \dout_7_OBUF/BXINV  (
    .I(addr_0_IBUF_1064),
    .O(\dout_7_OBUF/BXINV_2168 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X26Y27" ))
  \dout_4_OBUF/F5MUX  (
    .IA(\dout<4>2_2266 ),
    .IB(\dout<4>1_2274 ),
    .SEL(\dout_4_OBUF/BXINV_2268 ),
    .O(\dout_4_OBUF/F5MUX_2276 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y27" ))
  \dout_4_OBUF/BXINV  (
    .I(addr_0_IBUF_1064),
    .O(\dout_4_OBUF/BXINV_2268 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \pstate<1>/DXMUX  (
    .I(pstate_mux0000[4]),
    .O(\pstate<1>/DXMUX_2503 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \pstate<1>/YUSED  (
    .I(\pstate_mux0000<4>_SW0/O_pack_2 ),
    .O(\pstate_mux0000<4>_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \pstate<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pstate<1>/CLKINV_2486 )
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
  X_BUF #(
    .LOC ( "SLICE_X27Y27" ))
  \dout<0>30/XUSED  (
    .I(\dout<0>30/F5MUX_2201 ),
    .O(\dout<0>30 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X27Y27" ))
  \dout<0>30/F5MUX  (
    .IA(N79),
    .IB(N80),
    .SEL(\dout<0>30/BXINV_2194 ),
    .O(\dout<0>30/F5MUX_2201 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y27" ))
  \dout<0>30/BXINV  (
    .I(addr_0_IBUF_1064),
    .O(\dout<0>30/BXINV_2194 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y26" ))
  \N47/XUSED  (
    .I(\N47/F5MUX_2408 ),
    .O(N47)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X29Y26" ))
  \N47/F5MUX  (
    .IA(\N47/G ),
    .IB(\dout<2>41_SW0 ),
    .SEL(\N47/BXINV_2401 ),
    .O(\N47/F5MUX_2408 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y26" ))
  \N47/BXINV  (
    .I(rden_IBUF_1051),
    .O(\N47/BXINV_2401 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y27" ))
  \dout_6_OBUF/F5MUX  (
    .IA(\dout<6>2_2373 ),
    .IB(\dout<6>1_2381 ),
    .SEL(\dout_6_OBUF/BXINV_2375 ),
    .O(\dout_6_OBUF/F5MUX_2383 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y27" ))
  \dout_6_OBUF/BXINV  (
    .I(addr_0_IBUF_1064),
    .O(\dout_6_OBUF/BXINV_2375 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y33" ))
  \N41/XUSED  (
    .I(\N41/F5MUX_2358 ),
    .O(N41)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X25Y33" ))
  \N41/F5MUX  (
    .IA(N45),
    .IB(N46),
    .SEL(\N41/BXINV_2351 ),
    .O(\N41/F5MUX_2358 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y33" ))
  \N41/BXINV  (
    .I(pstate[1]),
    .O(\N41/BXINV_2351 )
  );
  X_IPAD #(
    .LOC ( "IPAD36" ))
  \din<0>/PAD  (
    .PAD(din[0])
  );
  X_BUF #(
    .LOC ( "IPAD36" ))
  din_0_IBUF (
    .I(din[0]),
    .O(\din<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD48" ))
  \addr<1>/PAD  (
    .PAD(addr[1])
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  addr_1_IBUF (
    .I(addr[1]),
    .O(\addr<1>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD35" ))
  \din<1>/PAD  (
    .PAD(din[1])
  );
  X_BUF #(
    .LOC ( "PAD35" ))
  din_1_IBUF (
    .I(din[1]),
    .O(\din<1>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX  (
    .I(\fifo1/Result<3>1 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_2944 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX  (
    .I(\fifo1/Result<2>1 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_2931 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV  (
    .I(pstate[0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_2922 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_2921 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_2920 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y30" ))
  \baud1/Madd_timer_addsub0000_cy<5>/XUSED  (
    .I(\baud1/Madd_timer_addsub0000_cy[5] ),
    .O(\baud1/Madd_timer_addsub0000_cy<5>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y30" ))
  \baud1/Madd_timer_addsub0000_cy<5>/YUSED  (
    .I(\baud1/Madd_timer_addsub0000_cy<3>_pack_1 ),
    .O(\baud1/Madd_timer_addsub0000_cy[3] )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y33" ))
  \baud1/timer<1>/DXMUX  (
    .I(\baud1/timer_mux0000 [6]),
    .O(\baud1/timer<1>/DXMUX_2872 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y33" ))
  \baud1/timer<1>/DYMUX  (
    .I(\baud1/timer_mux0000 [7]),
    .O(\baud1/timer<1>/DYMUX_2858 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y33" ))
  \baud1/timer<1>/SRINV  (
    .I(reset_IBUF_963),
    .O(\baud1/timer<1>/SRINV_2850 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y33" ))
  \baud1/timer<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/timer<1>/CLKINV_2849 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y24" ))
  \frame_ready/DXMUX  (
    .I(\frame_ready/FXMUX_2700 ),
    .O(\frame_ready/DXMUX_2701 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y24" ))
  \frame_ready/XUSED  (
    .I(\frame_ready/FXMUX_2700 ),
    .O(finish_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y24" ))
  \frame_ready/FXMUX  (
    .I(finish),
    .O(\frame_ready/FXMUX_2700 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y24" ))
  \frame_ready/YUSED  (
    .I(\bitcounter_not00011_SW0/O_pack_1 ),
    .O(\bitcounter_not00011_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y24" ))
  \frame_ready/CLKINV  (
    .I(clk_BUFGP),
    .O(\frame_ready/CLKINV_2683 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y23" ))
  \in_two/DYMUX  (
    .I(Mshreg_in_two),
    .O(\in_two/DYMUX_2904 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y23" ))
  \in_two/DIG_MUX  (
    .I(rxin_IBUF_1000),
    .O(\in_two/DIG_MUX_2893 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y23" ))
  \in_two/SRINV  (
    .I(1'b1),
    .O(\in_two/SRINV_2887 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y23" ))
  \in_two/CLKINV  (
    .I(clk_BUFGP),
    .O(\in_two/CLKINV_2891 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_2619 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_2620 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux0000 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_2619 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/YUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000079/O_pack_2 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000079/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_2605 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y28" ))
  \pstate<3>/DXMUX  (
    .I(pstate_mux0000[2]),
    .O(\pstate<3>/DXMUX_2538 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y28" ))
  \pstate<3>/YUSED  (
    .I(\pstate_mux0000<2>18_SW0/O_pack_1 ),
    .O(\pstate_mux0000<2>18_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y28" ))
  \pstate<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pstate<3>/CLKINV_2521 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y31" ))
  \N26/XUSED  (
    .I(N26),
    .O(N26_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y31" ))
  \N26/YUSED  (
    .I(\baud1/timer_mux0000<4>_SW0/O_pack_1 ),
    .O(\baud1/timer_mux0000<4>_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y29" ))
  \baud1/baud_cmp_eq0000/XUSED  (
    .I(\baud1/baud_cmp_eq0000 ),
    .O(\baud1/baud_cmp_eq0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y29" ))
  \baud1/baud_cmp_eq0000/YUSED  (
    .I(\baud1/baud_cmp_eq0000853/O_pack_1 ),
    .O(\baud1/baud_cmp_eq0000853/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y33" ))
  \baud1/timer<6>/DXMUX  (
    .I(\baud1/timer_mux0000 [1]),
    .O(\baud1/timer<6>/DXMUX_2771 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y33" ))
  \baud1/timer<6>/YUSED  (
    .I(N30_pack_2),
    .O(N30)
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y33" ))
  \baud1/timer<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/timer<6>/CLKINV_2754 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y31" ))
  \baud1/timer<5>/DXMUX  (
    .I(\baud1/timer_mux0000 [2]),
    .O(\baud1/timer<5>/DXMUX_2806 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y31" ))
  \baud1/timer<5>/YUSED  (
    .I(\baud1/timer_mux0000<0>11_SW6/O_pack_2 ),
    .O(\baud1/timer_mux0000<0>11_SW6/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y31" ))
  \baud1/timer<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/timer<5>/CLKINV_2790 )
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
    .I(\fifo1/N3_pack_1 ),
    .O(\fifo1/N3 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y32" ))
  \baud1/timer<7>/DXMUX  (
    .I(\baud1/timer_mux0000 [0]),
    .O(\baud1/timer<7>/DXMUX_2736 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y32" ))
  \baud1/timer<7>/YUSED  (
    .I(\baud1/timer_mux0000<0>11_SW7/O_pack_2 ),
    .O(\baud1/timer_mux0000<0>11_SW7/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y32" ))
  \baud1/timer<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/timer<7>/CLKINV_2720 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \pstate_mux0000<3>15/XUSED  (
    .I(\pstate_mux0000<3>15_2590 ),
    .O(\pstate_mux0000<3>15_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \pstate_mux0000<3>15/YUSED  (
    .I(N16_pack_1),
    .O(N16)
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y28" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX  (
    .I(\fifo1/Result [3]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_2986 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y28" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX  (
    .I(\fifo1/Result [2]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_2973 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y28" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV  (
    .I(pstate[0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2964 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y28" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2963 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y28" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2962 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/DXMUX  (
    .I(\fifo1/Result<1>1 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/DXMUX_1719 )
  );
  X_INV #(
    .LOC ( "SLICE_X13Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/DYMUX_1704 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/YUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000062_1701 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000062_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/SRINV  (
    .I(pstate[0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/SRINV_1695 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/CLKINV_1694 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/CEINV_1693 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y27" ))
  \load/DXMUX  (
    .I(\load/FXMUX_1613 ),
    .O(\load/DXMUX_1614 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y27" ))
  \load/XUSED  (
    .I(\load/FXMUX_1613 ),
    .O(ld_shift_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y27" ))
  \load/FXMUX  (
    .I(ld_shift_1611),
    .O(\load/FXMUX_1613 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y27" ))
  \load/YUSED  (
    .I(N20_pack_1),
    .O(N20)
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y27" ))
  \load/CLKINV  (
    .I(clk_BUFGP),
    .O(\load/CLKINV_1597 )
  );
  X_BUF #(
    .LOC ( "PAD39" ))
  \wren/IFF/IMUX  (
    .I(\wren/INBUF ),
    .O(wren_IBUF_1047)
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y26" ))
  \pstate_mux0000<2>10/XUSED  (
    .I(\pstate_mux0000<2>10_1642 ),
    .O(\pstate_mux0000<2>10_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y26" ))
  \pstate_mux0000<2>10/YUSED  (
    .I(\pstate_mux0000<2>4_pack_1 ),
    .O(\pstate_mux0000<2>4_1033 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y24" ))
  \full/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_2619 ),
    .O(\full/DYMUX_1581 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y24" ))
  \full/CLKINV  (
    .I(clk_BUFGP),
    .O(\full/CLKINV_1579 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y28" ))
  \pstate<2>/DXMUX  (
    .I(pstate_mux0000[3]),
    .O(\pstate<2>/DXMUX_1673 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y28" ))
  \pstate<2>/YUSED  (
    .I(\pstate_mux0000<3>2_pack_1 ),
    .O(\pstate_mux0000<3>2_1036 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y28" ))
  \pstate<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pstate<2>/CLKINV_1655 )
  );
  X_INV #(
    .LOC ( "SLICE_X21Y26" ))
  \bittimer<0>/DXMUX  (
    .I(bittimer[0]),
    .O(\bittimer<0>/DXMUX_1568 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y26" ))
  \bittimer<0>/DYMUX  (
    .I(Result[1]),
    .O(\bittimer<0>/DYMUX_1559 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y26" ))
  \bittimer<0>/SRINV  (
    .I(reset_IBUF_963),
    .O(\bittimer<0>/SRINV_1549 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y26" ))
  \bittimer<0>/CLKINV  (
    .I(\baud1/baud_1023 ),
    .O(\bittimer<0>/CLKINV_1548 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y26" ))
  \bittimer<0>/CEINV  (
    .I(bittime_0),
    .O(\bittimer<0>/CEINV_1547 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y26" ))
  \bitcounter<3>/DXMUX  (
    .I(Mcount_bitcounter3),
    .O(\bitcounter<3>/DXMUX_1764 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y26" ))
  \bitcounter<3>/YUSED  (
    .I(N14_pack_3),
    .O(N14)
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y26" ))
  \bitcounter<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\bitcounter<3>/CLKINV_1747 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y26" ))
  \bitcounter<3>/CEINV  (
    .I(bitcounter_not0001_0),
    .O(\bitcounter<3>/CEINV_1746 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y22" ))
  \empty/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FXMUX_2305 ),
    .O(\empty/DYMUX_1730 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y22" ))
  \empty/CLKINV  (
    .I(clk_BUFGP),
    .O(\empty/CLKINV_1728 )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y25" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_3689 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CEINV_3683 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_3684 ),
    .SET(GND),
    .RST(GND),
    .SSET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/REVUSED_3687 ),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_3685 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_998 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/BXINV_3688 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_3689 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/BXINV  (
    .I(1'b0),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/BXINV_3688 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/REVUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_996 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/REVUSED_3687 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV  (
    .I(pstate[0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_3685 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_3684 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CEINV  (
    .I(rd_fifo),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CEINV_3683 )
  );
  X_LUT4 #(
    .INIT ( 16'hF000 ),
    .LOC ( "SLICE_X27Y16" ))
  \dout<1>39  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(addr_2_IBUF_1045),
    .ADR3(\dout<1>30 ),
    .O(dout_1_OBUF_3674)
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_0  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_3886 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3882 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3883 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3884 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_3893 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_3886 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV  (
    .I(pstate[0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3884 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3883 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3882 )
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_3893 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3882 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3883 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3884 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y22" ))
  \frame_error<7>/DXMUX  (
    .I(shift[8]),
    .O(\frame_error<7>/DXMUX_3740 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y22" ))
  \frame_error<7>/DYMUX  (
    .I(shift[7]),
    .O(\frame_error<7>/DYMUX_3731 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y22" ))
  \frame_error<7>/SRINV  (
    .I(reset_IBUF_963),
    .O(\frame_error<7>/SRINV_3729 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y22" ))
  \frame_error<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\frame_error<7>/CLKINV_3728 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y22" ))
  \frame_error<7>/CEINV  (
    .I(finish_0),
    .O(\frame_error<7>/CEINV_3727 )
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_3869 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3858 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3859 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3860 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_3862 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3858 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3859 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3860 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_3869 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_3862 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV  (
    .I(pstate[0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3860 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3859 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3858 )
  );
  X_SFF #(
    .LOC ( "SLICE_X17Y27" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_5  (
    .I(\dout_fifo<5>/DXMUX_3714 ),
    .CE(\dout_fifo<5>/CEINV_3703 ),
    .CLK(\dout_fifo<5>/CLKINV_3704 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_fifo<5>/SRINV_3705 ),
    .O(dout_fifo[5])
  );
  X_SFF #(
    .LOC ( "SLICE_X17Y27" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_4  (
    .I(\dout_fifo<5>/DYMUX_3707 ),
    .CE(\dout_fifo<5>/CEINV_3703 ),
    .CLK(\dout_fifo<5>/CLKINV_3704 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_fifo<5>/SRINV_3705 ),
    .O(dout_fifo[4])
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y27" ))
  \dout_fifo<5>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [5]),
    .O(\dout_fifo<5>/DXMUX_3714 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y27" ))
  \dout_fifo<5>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [4]),
    .O(\dout_fifo<5>/DYMUX_3707 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y27" ))
  \dout_fifo<5>/SRINV  (
    .I(pstate[0]),
    .O(\dout_fifo<5>/SRINV_3705 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y27" ))
  \dout_fifo<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\dout_fifo<5>/CLKINV_3704 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y27" ))
  \dout_fifo<5>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\dout_fifo<5>/CEINV_3703 )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_0  (
    .I(\dout_fifo<1>/DYMUX_3572 ),
    .CE(\dout_fifo<1>/CEINV_3568 ),
    .CLK(\dout_fifo<1>/CLKINV_3569 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_fifo<1>/SRINV_3570 ),
    .O(dout_fifo[0])
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_1  (
    .I(\dout_fifo<1>/DXMUX_3579 ),
    .CE(\dout_fifo<1>/CEINV_3568 ),
    .CLK(\dout_fifo<1>/CLKINV_3569 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_fifo<1>/SRINV_3570 ),
    .O(dout_fifo[1])
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y26" ))
  \dout_fifo<1>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [1]),
    .O(\dout_fifo<1>/DXMUX_3579 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y26" ))
  \dout_fifo<1>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [0]),
    .O(\dout_fifo<1>/DYMUX_3572 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y26" ))
  \dout_fifo<1>/SRINV  (
    .I(pstate[0]),
    .O(\dout_fifo<1>/SRINV_3570 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y26" ))
  \dout_fifo<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\dout_fifo<1>/CLKINV_3569 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y26" ))
  \dout_fifo<1>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\dout_fifo<1>/CEINV_3568 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y23" ))
  \frame_error<3>/FFX/RSTOR  (
    .I(\frame_error<3>/SRINV_3594 ),
    .O(\frame_error<3>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y23" ),
    .INIT ( 1'b0 ))
  frame_error_3 (
    .I(\frame_error<3>/DXMUX_3605 ),
    .CE(\frame_error<3>/CEINV_3592 ),
    .CLK(\frame_error<3>/CLKINV_3593 ),
    .SET(GND),
    .RST(\frame_error<3>/FFX/RST ),
    .O(frame_error[3])
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y23" ))
  \frame_error<3>/FFY/RSTOR  (
    .I(\frame_error<3>/SRINV_3594 ),
    .O(\frame_error<3>/FFY/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y23" ),
    .INIT ( 1'b0 ))
  frame_error_2 (
    .I(\frame_error<3>/DYMUX_3596 ),
    .CE(\frame_error<3>/CEINV_3592 ),
    .CLK(\frame_error<3>/CLKINV_3593 ),
    .SET(GND),
    .RST(\frame_error<3>/FFY/RST ),
    .O(frame_error[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y23" ))
  \frame_error<3>/DXMUX  (
    .I(shift[4]),
    .O(\frame_error<3>/DXMUX_3605 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y23" ))
  \frame_error<3>/DYMUX  (
    .I(shift[3]),
    .O(\frame_error<3>/DYMUX_3596 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y23" ))
  \frame_error<3>/SRINV  (
    .I(reset_IBUF_963),
    .O(\frame_error<3>/SRINV_3594 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y23" ))
  \frame_error<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\frame_error<3>/CLKINV_3593 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y23" ))
  \frame_error<3>/CEINV  (
    .I(finish_0),
    .O(\frame_error<3>/CEINV_3592 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y22" ))
  \frame_error<5>/FFX/RSTOR  (
    .I(\frame_error<5>/SRINV_3646 ),
    .O(\frame_error<5>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 1'b0 ))
  frame_error_5 (
    .I(\frame_error<5>/DXMUX_3657 ),
    .CE(\frame_error<5>/CEINV_3644 ),
    .CLK(\frame_error<5>/CLKINV_3645 ),
    .SET(GND),
    .RST(\frame_error<5>/FFX/RST ),
    .O(frame_error[5])
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y22" ))
  \frame_error<5>/FFY/RSTOR  (
    .I(\frame_error<5>/SRINV_3646 ),
    .O(\frame_error<5>/FFY/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 1'b0 ))
  frame_error_4 (
    .I(\frame_error<5>/DYMUX_3648 ),
    .CE(\frame_error<5>/CEINV_3644 ),
    .CLK(\frame_error<5>/CLKINV_3645 ),
    .SET(GND),
    .RST(\frame_error<5>/FFY/RST ),
    .O(frame_error[4])
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y22" ))
  \frame_error<5>/DXMUX  (
    .I(shift[6]),
    .O(\frame_error<5>/DXMUX_3657 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y22" ))
  \frame_error<5>/DYMUX  (
    .I(shift[5]),
    .O(\frame_error<5>/DYMUX_3648 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y22" ))
  \frame_error<5>/SRINV  (
    .I(reset_IBUF_963),
    .O(\frame_error<5>/SRINV_3646 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y22" ))
  \frame_error<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\frame_error<5>/CLKINV_3645 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y22" ))
  \frame_error<5>/CEINV  (
    .I(finish_0),
    .O(\frame_error<5>/CEINV_3644 )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y27" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_8  (
    .I(\dout_fifo<8>/DYMUX_3819 ),
    .CE(\dout_fifo<8>/CEINV_3815 ),
    .CLK(\dout_fifo<8>/CLKINV_3816 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_fifo<8>/SRINV_3817 ),
    .O(dout_fifo[8])
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y27" ))
  \dout_fifo<8>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [8]),
    .O(\dout_fifo<8>/DYMUX_3819 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y27" ))
  \dout_fifo<8>/SRINV  (
    .I(pstate[0]),
    .O(\dout_fifo<8>/SRINV_3817 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y27" ))
  \dout_fifo<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\dout_fifo<8>/CLKINV_3816 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y27" ))
  \dout_fifo<8>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\dout_fifo<8>/CEINV_3815 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y24" ),
    .INIT ( 1'b1 ))
  shift_3 (
    .I(\shift<3>/DXMUX_3844 ),
    .CE(\shift<3>/CEINV_3832 ),
    .CLK(\shift<3>/CLKINV_3833 ),
    .SET(\shift<3>/SRINV_3834 ),
    .RST(GND),
    .O(shift[3])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y24" ),
    .INIT ( 1'b1 ))
  shift_2 (
    .I(\shift<3>/DYMUX_3836 ),
    .CE(\shift<3>/CEINV_3832 ),
    .CLK(\shift<3>/CLKINV_3833 ),
    .SET(\shift<3>/SRINV_3834 ),
    .RST(GND),
    .O(shift[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y24" ))
  \shift<3>/DXMUX  (
    .I(shift[4]),
    .O(\shift<3>/DXMUX_3844 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y24" ))
  \shift<3>/DYMUX  (
    .I(shift[3]),
    .O(\shift<3>/DYMUX_3836 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y24" ))
  \shift<3>/SRINV  (
    .I(reset_IBUF_963),
    .O(\shift<3>/SRINV_3834 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y24" ))
  \shift<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shift<3>/CLKINV_3833 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y24" ))
  \shift<3>/CEINV  (
    .I(ld_shift_0),
    .O(\shift<3>/CEINV_3832 )
  );
  X_SFF #(
    .LOC ( "SLICE_X15Y27" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_3  (
    .I(\dout_fifo<3>/DXMUX_3631 ),
    .CE(\dout_fifo<3>/CEINV_3620 ),
    .CLK(\dout_fifo<3>/CLKINV_3621 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_fifo<3>/SRINV_3622 ),
    .O(dout_fifo[3])
  );
  X_SFF #(
    .LOC ( "SLICE_X15Y27" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_2  (
    .I(\dout_fifo<3>/DYMUX_3624 ),
    .CE(\dout_fifo<3>/CEINV_3620 ),
    .CLK(\dout_fifo<3>/CLKINV_3621 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_fifo<3>/SRINV_3622 ),
    .O(dout_fifo[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y27" ))
  \dout_fifo<3>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [3]),
    .O(\dout_fifo<3>/DXMUX_3631 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y27" ))
  \dout_fifo<3>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [2]),
    .O(\dout_fifo<3>/DYMUX_3624 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y27" ))
  \dout_fifo<3>/SRINV  (
    .I(pstate[0]),
    .O(\dout_fifo<3>/SRINV_3622 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y27" ))
  \dout_fifo<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\dout_fifo<3>/CLKINV_3621 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y27" ))
  \dout_fifo<3>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\dout_fifo<3>/CEINV_3620 )
  );
  X_LUT4 #(
    .INIT ( 16'h8241 ),
    .LOC ( "SLICE_X12Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056_3558 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056/XUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056_3558 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y28" ))
  \baud1/baud_cmp_eq0000826/XUSED  (
    .I(\baud1/baud_cmp_eq0000826_3757 ),
    .O(\baud1/baud_cmp_eq0000826_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y26" ))
  \dout_fifo<7>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [7]),
    .O(\dout_fifo<7>/DXMUX_3778 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y26" ))
  \dout_fifo<7>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [6]),
    .O(\dout_fifo<7>/DYMUX_3771 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y26" ))
  \dout_fifo<7>/SRINV  (
    .I(pstate[0]),
    .O(\dout_fifo<7>/SRINV_3769 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y26" ))
  \dout_fifo<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\dout_fifo<7>/CLKINV_3768 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y26" ))
  \dout_fifo<7>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\dout_fifo<7>/CEINV_3767 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y22" ))
  \shift<1>/DXMUX  (
    .I(shift[2]),
    .O(\shift<1>/DXMUX_3803 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y22" ))
  \shift<1>/DYMUX  (
    .I(shift[1]),
    .O(\shift<1>/DYMUX_3795 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y22" ))
  \shift<1>/SRINV  (
    .I(reset_IBUF_963),
    .O(\shift<1>/SRINV_3793 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y22" ))
  \shift<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shift<1>/CLKINV_3792 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y22" ))
  \shift<1>/CEINV  (
    .I(ld_shift_0),
    .O(\shift<1>/CEINV_3791 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y29" ))
  \shift<5>/DXMUX  (
    .I(shift[6]),
    .O(\shift<5>/DXMUX_1164 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y29" ))
  \shift<5>/DYMUX  (
    .I(shift[5]),
    .O(\shift<5>/DYMUX_1156 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y29" ))
  \shift<5>/SRINV  (
    .I(reset_IBUF_963),
    .O(\shift<5>/SRINV_1154 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y29" ))
  \shift<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shift<5>/CLKINV_1153 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y29" ))
  \shift<5>/CEINV  (
    .I(ld_shift_0),
    .O(\shift<5>/CEINV_1152 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_1189 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_1182 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV  (
    .I(pstate[0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_1180 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_1179 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_1178 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y23" ))
  \shift<7>/DXMUX  (
    .I(shift[8]),
    .O(\shift<7>/DXMUX_1238 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y23" ))
  \shift<7>/DYMUX  (
    .I(shift[7]),
    .O(\shift<7>/DYMUX_1230 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y23" ))
  \shift<7>/SRINV  (
    .I(reset_IBUF_963),
    .O(\shift<7>/SRINV_1228 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y23" ))
  \shift<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shift<7>/CLKINV_1227 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y23" ))
  \shift<7>/CEINV  (
    .I(ld_shift_0),
    .O(\shift<7>/CEINV_1226 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y24" ))
  \control<0>/DYMUX  (
    .I(din_0_IBUF_978),
    .O(\control<0>/DYMUX_1254 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y24" ))
  \control<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\control<0>/CLKINV_1251 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y24" ))
  \control<0>/CEINV  (
    .I(wr_control),
    .O(\control<0>/CEINV_1250 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_1213 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_1206 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV  (
    .I(pstate[0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_1204 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_1203 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_1202 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y22" ))
  \shift<9>/DXMUX  (
    .I(in_two_983),
    .O(\shift<9>/DXMUX_1305 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y22" ))
  \shift<9>/DYMUX  (
    .I(shift[9]),
    .O(\shift<9>/DYMUX_1297 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y22" ))
  \shift<9>/SRINV  (
    .I(reset_IBUF_963),
    .O(\shift<9>/SRINV_1295 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y22" ))
  \shift<9>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shift<9>/CLKINV_1294 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y22" ))
  \shift<9>/CEINV  (
    .I(ld_shift_0),
    .O(\shift<9>/CEINV_1293 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFC8 ),
    .LOC ( "SLICE_X19Y29" ))
  bittime1 (
    .ADR0(N16),
    .ADR1(pstate[2]),
    .ADR2(bitcounter[0]),
    .ADR3(pstate[3]),
    .O(bittime)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y29" ),
    .INIT ( 1'b0 ))
  bitcounter_0 (
    .I(\bitcounter<0>/DXMUX_1802 ),
    .CE(\bitcounter<0>/CEINV_1784 ),
    .CLK(\bitcounter<0>/CLKINV_1785 ),
    .SET(GND),
    .RST(\bitcounter<0>/FFX/RSTAND_1808 ),
    .O(bitcounter[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y29" ))
  \bitcounter<0>/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\bitcounter<0>/FFX/RSTAND_1808 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y30" ))
  \baud1/timer<4>/DXMUX  (
    .I(\baud1/timer_mux0000 [3]),
    .O(\baud1/timer<4>/DXMUX_1357 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y30" ))
  \baud1/timer<4>/YUSED  (
    .I(\baud1/baud_cmp_eq0000893_1347 ),
    .O(\baud1/baud_cmp_eq0000893_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y30" ))
  \baud1/timer<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/timer<4>/CLKINV_1341 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y32" ))
  \baud1/timer<3>/DXMUX  (
    .I(\baud1/timer_mux0000 [4]),
    .O(\baud1/timer<3>/DXMUX_1425 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y32" ))
  \baud1/timer<3>/YUSED  (
    .I(N28),
    .O(N28_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y32" ))
  \baud1/timer<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/timer<3>/CLKINV_1407 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y23" ))
  \fifo1/N23/XUSED  (
    .I(\fifo1/N23 ),
    .O(\fifo1/N23_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y23" ))
  \fifo1/N23/YUSED  (
    .I(\fifo1/N9 ),
    .O(\fifo1/N9_0 )
  );
  X_LUT4 #(
    .INIT ( 16'h5151 ),
    .LOC ( "SLICE_X19Y29" ))
  \Mcount_bitcounter_xor<0>11  (
    .ADR0(bitcounter[0]),
    .ADR1(pstate[2]),
    .ADR2(N16),
    .ADR3(VCC),
    .O(Mcount_bitcounter)
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y25" ))
  \fifo1/N5/XUSED  (
    .I(\fifo1/N5 ),
    .O(\fifo1/N5_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y25" ))
  \fifo1/N5/YUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_pack_1 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y25" ))
  \bitcounter<1>/DXMUX  (
    .I(Mcount_bitcounter1),
    .O(\bitcounter<1>/DXMUX_1462 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y25" ))
  \bitcounter<1>/YUSED  (
    .I(N10_pack_2),
    .O(N10)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y25" ))
  \bitcounter<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\bitcounter<1>/CLKINV_1444 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y25" ))
  \bitcounter<1>/CEINV  (
    .I(bitcounter_not0001_0),
    .O(\bitcounter<1>/CEINV_1443 )
  );
  X_BUF #(
    .LOC ( "PAD53" ))
  \addr<2>/IFF/IMUX  (
    .I(\addr<2>/INBUF ),
    .O(addr_2_IBUF_1045)
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y25" ))
  \pstate<4>/DXMUX  (
    .I(pstate_mux0000[1]),
    .O(\pstate<4>/DXMUX_1508 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y25" ))
  \pstate<4>/DYMUX  (
    .I(control[2]),
    .O(\pstate<4>/DYMUX_1492 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y25" ))
  \pstate<4>/YUSED  (
    .I(bitcounter_not0001),
    .O(bitcounter_not0001_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y25" ))
  \pstate<4>/SRINV  (
    .I(reset_IBUF_963),
    .O(\pstate<4>/SRINV_1481 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y25" ))
  \pstate<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pstate<4>/CLKINV_1480 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y26" ),
    .INIT ( 1'b0 ))
  bitcounter_3 (
    .I(\bitcounter<3>/DXMUX_1764 ),
    .CE(\bitcounter<3>/CEINV_1746 ),
    .CLK(\bitcounter<3>/CLKINV_1747 ),
    .SET(GND),
    .RST(\bitcounter<3>/FFX/RSTAND_1770 ),
    .O(bitcounter[3])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y26" ))
  \bitcounter<3>/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\bitcounter<3>/FFX/RSTAND_1770 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y25" ))
  \control<2>/DYMUX  (
    .I(control[0]),
    .O(\control<2>/DYMUX_1321 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y25" ))
  \control<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\control<2>/CLKINV_1318 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y25" ))
  \control<2>/CEINV  (
    .I(control_2_not0001),
    .O(\control<2>/CEINV_1317 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1/DXMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1/DXMUX_1392 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1/YUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1/SRINV  (
    .I(pstate[0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1/SRINV_1376 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1/CLKINV_1375 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y22" ),
    .INIT ( 1'b0 ))
  frame_error_6 (
    .I(\frame_error<7>/DYMUX_3731 ),
    .CE(\frame_error<7>/CEINV_3727 ),
    .CLK(\frame_error<7>/CLKINV_3728 ),
    .SET(GND),
    .RST(\frame_error<7>/SRINV_3729 ),
    .O(frame_error[6])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y22" ),
    .INIT ( 1'b1 ))
  shift_0 (
    .I(\shift<1>/DYMUX_3795 ),
    .CE(\shift<1>/CEINV_3791 ),
    .CLK(\shift<1>/CLKINV_3792 ),
    .SET(\shift<1>/SRINV_3793 ),
    .RST(GND),
    .O(shift[0])
  );
  X_INV #(
    .LOC ( "SLICE_X19Y31" ))
  \baud1/baud/DYMUX  (
    .I(\baud1/baud_1023 ),
    .O(\baud1/baud/DYMUX_3360 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y31" ))
  \baud1/baud/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/baud/CLKINV_3357 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y31" ))
  \baud1/baud/CEINV  (
    .I(\baud1/baud_cmp_eq0000_0 ),
    .O(\baud1/baud/CEINV_3356 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y30" ))
  \baud1/period<5>/DXMUX  (
    .I(\din<5>/INBUF ),
    .O(\baud1/period<5>/DXMUX_3252 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y30" ))
  \baud1/period<5>/DYMUX  (
    .I(\din<4>/INBUF ),
    .O(\baud1/period<5>/DYMUX_3244 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y30" ))
  \baud1/period<5>/SRINV  (
    .I(reset_IBUF_963),
    .O(\baud1/period<5>/SRINV_3242 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y30" ))
  \baud1/period<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/period<5>/CLKINV_3241 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y30" ))
  \baud1/period<5>/CEINV  (
    .I(wr_baud_0),
    .O(\baud1/period<5>/CEINV_3240 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y26" ))
  \bittimer<3>/DXMUX  (
    .I(Result[3]),
    .O(\bittimer<3>/DXMUX_3123 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y26" ))
  \bittimer<3>/DYMUX  (
    .I(Result[2]),
    .O(\bittimer<3>/DYMUX_3108 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y26" ))
  \bittimer<3>/SRINV  (
    .I(reset_IBUF_963),
    .O(\bittimer<3>/SRINV_3099 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y26" ))
  \bittimer<3>/CLKINV  (
    .I(\baud1/baud_1023 ),
    .O(\bittimer<3>/CLKINV_3098 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y26" ))
  \bittimer<3>/CEINV  (
    .I(bittime_0),
    .O(\bittimer<3>/CEINV_3097 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en/XUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en/YUSED  (
    .I(\fifo1/N7 ),
    .O(\fifo1/N7_0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X15Y26" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_7  (
    .I(\dout_fifo<7>/DXMUX_3778 ),
    .CE(\dout_fifo<7>/CEINV_3767 ),
    .CLK(\dout_fifo<7>/CLKINV_3768 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_fifo<7>/SRINV_3769 ),
    .O(dout_fifo[7])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ),
    .LOC ( "SLICE_X26Y28" ))
  \baud1/baud_cmp_eq0000826  (
    .ADR0(\baud1/period [0]),
    .ADR1(\baud1/timer [0]),
    .ADR2(\baud1/period [1]),
    .ADR3(\baud1/timer [1]),
    .O(\baud1/baud_cmp_eq0000826_3757 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y29" ))
  \baud1/period<1>/DXMUX  (
    .I(\din<1>/INBUF ),
    .O(\baud1/period<1>/DXMUX_3199 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y29" ))
  \baud1/period<1>/DYMUX  (
    .I(din_0_IBUF_978),
    .O(\baud1/period<1>/DYMUX_3190 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y29" ))
  \baud1/period<1>/SRINV  (
    .I(reset_IBUF_963),
    .O(\baud1/period<1>/SRINV_3188 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y29" ))
  \baud1/period<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/period<1>/CLKINV_3187 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y29" ))
  \baud1/period<1>/CEINV  (
    .I(wr_baud_0),
    .O(\baud1/period<1>/CEINV_3186 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y28" ))
  \baud1/period<3>/DXMUX  (
    .I(\din<3>/INBUF ),
    .O(\baud1/period<3>/DXMUX_3226 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y28" ))
  \baud1/period<3>/DYMUX  (
    .I(\din<2>/INBUF ),
    .O(\baud1/period<3>/DYMUX_3217 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y28" ))
  \baud1/period<3>/SRINV  (
    .I(reset_IBUF_963),
    .O(\baud1/period<3>/SRINV_3215 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y28" ))
  \baud1/period<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/period<3>/CLKINV_3214 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y28" ))
  \baud1/period<3>/CEINV  (
    .I(wr_baud_0),
    .O(\baud1/period<3>/CEINV_3213 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y29" ))
  \loaded/DXMUX  (
    .I(\loaded/FXMUX_3342 ),
    .O(\loaded/DXMUX_3343 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y29" ))
  \loaded/XUSED  (
    .I(\loaded/FXMUX_3342 ),
    .O(loaded_mux0000_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y29" ))
  \loaded/FXMUX  (
    .I(loaded_mux0000_3340),
    .O(\loaded/FXMUX_3342 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y29" ))
  \loaded/YUSED  (
    .I(N22_pack_1),
    .O(N22)
  );
  X_INV #(
    .LOC ( "SLICE_X16Y29" ))
  \loaded/CLKINV  (
    .I(clk_BUFGP),
    .O(\loaded/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y29" ))
  \loaded/CEINV  (
    .I(loaded_not0001),
    .O(\loaded/CEINV_3325 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y24" ))
  \control<1>/DXMUX  (
    .I(control_1_mux0000),
    .O(\control<1>/DXMUX_3026 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y24" ))
  \control<1>/DYMUX  (
    .I(pstate_mux0000[5]),
    .O(\control<1>/DYMUX_3011 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y24" ))
  \control<1>/SRINV  (
    .I(reset_IBUF_963),
    .O(\control<1>/SRINV_3003 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y24" ))
  \control<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\control<1>/CLKINV_3002 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y24" ))
  \bitcounter<2>/DYMUX  (
    .I(Mcount_bitcounter2),
    .O(\bitcounter<2>/DYMUX_3077 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y24" ))
  \bitcounter<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\bitcounter<2>/CLKINV_3067 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y24" ))
  \bitcounter<2>/CEINV  (
    .I(bitcounter_not0001_0),
    .O(\bitcounter<2>/CEINV_3066 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y24" ))
  \fifo1/N21/XUSED  (
    .I(\fifo1/N21 ),
    .O(\fifo1/N21_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en/XUSED  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en/YUSED  (
    .I(rd_fifo_pack_1),
    .O(rd_fifo)
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y23" ))
  \frame_error<8>/DYMUX  (
    .I(frame_error_8_or0000),
    .O(\frame_error<8>/DYMUX_3051 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y23" ))
  \frame_error<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\frame_error<8>/CLKINV_3040 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y23" ))
  \frame_error<8>/CEINV  (
    .I(finish_0),
    .O(\frame_error<8>/CEINV_3039 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y22" ),
    .INIT ( 1'b0 ))
  frame_error_7 (
    .I(\frame_error<7>/DXMUX_3740 ),
    .CE(\frame_error<7>/CEINV_3727 ),
    .CLK(\frame_error<7>/CLKINV_3728 ),
    .SET(GND),
    .RST(\frame_error<7>/SRINV_3729 ),
    .O(frame_error[7])
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y31" ))
  \baud1/period<7>/DXMUX  (
    .I(\din<7>/INBUF ),
    .O(\baud1/period<7>/DXMUX_3304 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y31" ))
  \baud1/period<7>/DYMUX  (
    .I(\din<6>/INBUF ),
    .O(\baud1/period<7>/DYMUX_3295 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y31" ))
  \baud1/period<7>/SRINV  (
    .I(reset_IBUF_963),
    .O(\baud1/period<7>/SRINV_3293 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y31" ))
  \baud1/period<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\baud1/period<7>/CLKINV_3292 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y31" ))
  \baud1/period<7>/CEINV  (
    .I(wr_baud_0),
    .O(\baud1/period<7>/CEINV_3291 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y22" ),
    .INIT ( 1'b1 ))
  shift_1 (
    .I(\shift<1>/DXMUX_3803 ),
    .CE(\shift<1>/CEINV_3791 ),
    .CLK(\shift<1>/CLKINV_3792 ),
    .SET(\shift<1>/SRINV_3793 ),
    .RST(GND),
    .O(shift[1])
  );
  X_SFF #(
    .LOC ( "SLICE_X15Y26" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_6  (
    .I(\dout_fifo<7>/DYMUX_3771 ),
    .CE(\dout_fifo<7>/CEINV_3767 ),
    .CLK(\dout_fifo<7>/CLKINV_3768 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_fifo<7>/SRINV_3769 ),
    .O(dout_fifo[6])
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y28" ))
  \loaded_not0001/YUSED  (
    .I(N24_pack_1),
    .O(N24)
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y23" ))
  \wr_baud/XUSED  (
    .I(wr_baud),
    .O(wr_baud_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y20" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/DXMUX  (
    .I(\fifo1/Result [1]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/DXMUX_3407 )
  );
  X_INV #(
    .LOC ( "SLICE_X12Y20" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/DYMUX  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/DYMUX_3392 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y20" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/YUSED  (
    .I(\fifo1/N17 ),
    .O(\fifo1/N17_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y20" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/SRINV  (
    .I(pstate[0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/SRINV_3381 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y20" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/CLKINV_3380 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y20" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/CEINV  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/CEINV_3379 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y23" ))
  \frame_error<1>/FFX/RSTOR  (
    .I(\frame_error<1>/SRINV_3530 ),
    .O(\frame_error<1>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y23" ),
    .INIT ( 1'b0 ))
  frame_error_1 (
    .I(\frame_error<1>/DXMUX_3541 ),
    .CE(\frame_error<1>/CEINV_3528 ),
    .CLK(\frame_error<1>/CLKINV_3529 ),
    .SET(GND),
    .RST(\frame_error<1>/FFX/RST ),
    .O(frame_error[1])
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y23" ))
  \frame_error<1>/FFY/RSTOR  (
    .I(\frame_error<1>/SRINV_3530 ),
    .O(\frame_error<1>/FFY/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y23" ),
    .INIT ( 1'b0 ))
  frame_error_0 (
    .I(\frame_error<1>/DYMUX_3532 ),
    .CE(\frame_error<1>/CEINV_3528 ),
    .CLK(\frame_error<1>/CLKINV_3529 ),
    .SET(GND),
    .RST(\frame_error<1>/FFY/RST ),
    .O(frame_error[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y23" ))
  \frame_error<1>/DXMUX  (
    .I(shift[2]),
    .O(\frame_error<1>/DXMUX_3541 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y23" ))
  \frame_error<1>/DYMUX  (
    .I(shift[1]),
    .O(\frame_error<1>/DYMUX_3532 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y23" ))
  \frame_error<1>/SRINV  (
    .I(reset_IBUF_963),
    .O(\frame_error<1>/SRINV_3530 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y23" ))
  \frame_error<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\frame_error<1>/CLKINV_3529 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y23" ))
  \frame_error<1>/CEINV  (
    .I(finish_0),
    .O(\frame_error<1>/CEINV_3528 )
  );
  X_LUT4 #(
    .INIT ( 16'h80C4 ),
    .LOC ( "SLICE_X24Y27" ))
  \dout<2>41  (
    .ADR0(addr_0_IBUF_1064),
    .ADR1(addr_2_IBUF_1045),
    .ADR2(\dout<2>10_1140 ),
    .ADR3(N47),
    .O(dout_2_OBUF_3518)
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y27" ))
  \dout_2_OBUF/YUSED  (
    .I(\dout<2>10_pack_1 ),
    .O(\dout<2>10_1140 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y31" ))
  \baud1/baud_cmp_eq00008120/XUSED  (
    .I(\baud1/baud_cmp_eq00008120_3494 ),
    .O(\baud1/baud_cmp_eq00008120_0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y26" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_3  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_1213 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_1202 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_1203 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_1204 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3])
  );
  X_FF #(
    .LOC ( "SLICE_X26Y24" ),
    .INIT ( 1'b0 ))
  control_0 (
    .I(\control<0>/DYMUX_1254 ),
    .CE(\control<0>/CEINV_1250 ),
    .CLK(\control<0>/CLKINV_1251 ),
    .SET(GND),
    .RST(\control<0>/FFY/RSTAND_1260 ),
    .O(control[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y24" ))
  \control<0>/FFY/RSTAND  (
    .I(reset_IBUF_963),
    .O(\control<0>/FFY/RSTAND_1260 )
  );
  X_LUT4 #(
    .INIT ( 16'h8241 ),
    .LOC ( "SLICE_X13Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux00005_SW0_SW0  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .O(\fifo1/N23 )
  );
  X_SFF #(
    .LOC ( "SLICE_X13Y25" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_1189 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_1178 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_1179 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_1180 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y29" ),
    .INIT ( 1'b1 ))
  shift_5 (
    .I(\shift<5>/DXMUX_1164 ),
    .CE(\shift<5>/CEINV_1152 ),
    .CLK(\shift<5>/CLKINV_1153 ),
    .SET(\shift<5>/SRINV_1154 ),
    .RST(GND),
    .O(shift[5])
  );
  X_SFF #(
    .LOC ( "SLICE_X13Y25" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_2  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_1182 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_1178 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_1179 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_1180 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y29" ),
    .INIT ( 1'b1 ))
  shift_4 (
    .I(\shift<5>/DYMUX_1156 ),
    .CE(\shift<5>/CEINV_1152 ),
    .CLK(\shift<5>/CLKINV_1153 ),
    .SET(\shift<5>/SRINV_1154 ),
    .RST(GND),
    .O(shift[4])
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y26" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_1206 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_1202 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_1203 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_1204 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2])
  );
  X_FF #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 1'b1 ))
  shift_7 (
    .I(\shift<7>/DXMUX_1238 ),
    .CE(\shift<7>/CEINV_1226 ),
    .CLK(\shift<7>/CLKINV_1227 ),
    .SET(\shift<7>/SRINV_1228 ),
    .RST(GND),
    .O(shift[7])
  );
  X_FF #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 1'b1 ))
  shift_6 (
    .I(\shift<7>/DYMUX_1230 ),
    .CE(\shift<7>/CEINV_1226 ),
    .CLK(\shift<7>/CLKINV_1227 ),
    .SET(\shift<7>/SRINV_1228 ),
    .RST(GND),
    .O(shift[6])
  );
  X_LUT4 #(
    .INIT ( 16'h0CFC ),
    .LOC ( "SLICE_X18Y26" ))
  \Mcount_bitcounter_xor<3>1  (
    .ADR0(VCC),
    .ADR1(bitcounter[3]),
    .ADR2(bitcounter[1]),
    .ADR3(N14),
    .O(Mcount_bitcounter3)
  );
  X_LUT4 #(
    .INIT ( 16'h3C3C ),
    .LOC ( "SLICE_X13Y23" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux00003168_SW1  (
    .ADR0(VCC),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .ADR3(VCC),
    .O(\fifo1/N9 )
  );
  X_LUT4 #(
    .INIT ( 16'h0012 ),
    .LOC ( "SLICE_X27Y30" ))
  \baud1/timer_mux0000<3>1  (
    .ADR0(\baud1/Madd_timer_addsub0000_cy[3] ),
    .ADR1(\baud1/baud_cmp_eq0000_0 ),
    .ADR2(\baud1/timer [4]),
    .ADR3(N30),
    .O(\baud1/timer_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h88AA ),
    .LOC ( "SLICE_X17Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/RAM_REGOUT_EN1  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_996 ),
    .ADR1(rd_fifo),
    .ADR2(VCC),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_998 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 1'b1 ))
  shift_9 (
    .I(\shift<9>/DXMUX_1305 ),
    .CE(\shift<9>/CEINV_1293 ),
    .CLK(\shift<9>/CLKINV_1294 ),
    .SET(\shift<9>/SRINV_1295 ),
    .RST(GND),
    .O(shift[9])
  );
  X_LUT4 #(
    .INIT ( 16'h2F0F ),
    .LOC ( "SLICE_X17Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In1  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_996 ),
    .ADR1(rd_fifo),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_995 ),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_998 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In )
  );
  X_LUT4 #(
    .INIT ( 16'hA0A0 ),
    .LOC ( "SLICE_X27Y32" ))
  \baud1/timer_mux0000<0>11_SW1  (
    .ADR0(rxin_IBUF_1000),
    .ADR1(VCC),
    .ADR2(pstate[1]),
    .ADR3(VCC),
    .O(N28)
  );
  X_FF #(
    .LOC ( "SLICE_X20Y25" ),
    .INIT ( 1'b0 ))
  control_2 (
    .I(\control<2>/DYMUX_1321 ),
    .CE(\control<2>/CEINV_1317 ),
    .CLK(\control<2>/CLKINV_1318 ),
    .SET(GND),
    .RST(\control<2>/FFY/RSTAND_1327 ),
    .O(control[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y25" ))
  \control<2>/FFY/RSTAND  (
    .I(reset_IBUF_963),
    .O(\control<2>/FFY/RSTAND_1327 )
  );
  X_SFF #(
    .LOC ( "SLICE_X17Y25" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1/DXMUX_1392 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1/CLKINV_1375 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1/SRINV_1376 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_996 )
  );
  X_FF #(
    .LOC ( "SLICE_X27Y32" ),
    .INIT ( 1'b0 ))
  \baud1/timer_3  (
    .I(\baud1/timer<3>/DXMUX_1425 ),
    .CE(VCC),
    .CLK(\baud1/timer<3>/CLKINV_1407 ),
    .SET(GND),
    .RST(\baud1/timer<3>/FFX/RSTAND_1430 ),
    .O(\baud1/timer [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y32" ))
  \baud1/timer<3>/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\baud1/timer<3>/FFX/RSTAND_1430 )
  );
  X_LUT4 #(
    .INIT ( 16'h0013 ),
    .LOC ( "SLICE_X27Y32" ))
  \baud1/timer_mux0000<4>  (
    .ADR0(rxin_IBUF_1000),
    .ADR1(\baud1/baud_cmp_eq0000_0 ),
    .ADR2(pstate[1]),
    .ADR3(N26_0),
    .O(\baud1/timer_mux0000 [4])
  );
  X_FF #(
    .LOC ( "SLICE_X27Y30" ),
    .INIT ( 1'b0 ))
  \baud1/timer_4  (
    .I(\baud1/timer<4>/DXMUX_1357 ),
    .CE(VCC),
    .CLK(\baud1/timer<4>/CLKINV_1341 ),
    .SET(GND),
    .RST(\baud1/timer<4>/FFX/RSTAND_1362 ),
    .O(\baud1/timer [4])
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y30" ))
  \baud1/timer<4>/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\baud1/timer<4>/FFX/RSTAND_1362 )
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ),
    .LOC ( "SLICE_X27Y30" ))
  \baud1/baud_cmp_eq0000893  (
    .ADR0(\baud1/timer [5]),
    .ADR1(\baud1/period [5]),
    .ADR2(\baud1/period [4]),
    .ADR3(\baud1/timer [4]),
    .O(\baud1/baud_cmp_eq0000893_1347 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 1'b1 ))
  shift_8 (
    .I(\shift<9>/DYMUX_1297 ),
    .CE(\shift<9>/CEINV_1293 ),
    .CLK(\shift<9>/CLKINV_1294 ),
    .SET(\shift<9>/SRINV_1295 ),
    .RST(GND),
    .O(shift[8])
  );
  X_LUT4 #(
    .INIT ( 16'h33CC ),
    .LOC ( "SLICE_X21Y26" ))
  \Mcount_bittimer_xor<1>11  (
    .ADR0(VCC),
    .ADR1(bittimer[1]),
    .ADR2(VCC),
    .ADR3(bittimer[0]),
    .O(Result[1])
  );
  X_LUT4 #(
    .INIT ( 16'h00F0 ),
    .LOC ( "SLICE_X18Y25" ))
  \pstate_mux0000<1>1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(finish_0),
    .ADR3(control[2]),
    .O(pstate_mux0000[1])
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X12Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/ram_wr_en_i1  (
    .ADR0(VCC),
    .ADR1(pstate[4]),
    .ADR2(VCC),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1019 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0804 ),
    .LOC ( "SLICE_X12Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000073_SW0  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056_0 ),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\fifo1/N5 )
  );
  X_LUT4 #(
    .INIT ( 16'h525A ),
    .LOC ( "SLICE_X19Y25" ))
  \Mcount_bitcounter_xor<1>1  (
    .ADR0(bitcounter[1]),
    .ADR1(bitcounter[3]),
    .ADR2(bitcounter[0]),
    .ADR3(N10),
    .O(Mcount_bitcounter1)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y25" ),
    .INIT ( 1'b0 ))
  pstate_4 (
    .I(\pstate<4>/DXMUX_1508 ),
    .CE(VCC),
    .CLK(\pstate<4>/CLKINV_1480 ),
    .SET(GND),
    .RST(\pstate<4>/SRINV_1481 ),
    .O(pstate[4])
  );
  X_LUT4 #(
    .INIT ( 16'hF5F5 ),
    .LOC ( "SLICE_X18Y25" ))
  bitcounter_not00012 (
    .ADR0(loaded_mux0000_0),
    .ADR1(VCC),
    .ADR2(finish_0),
    .ADR3(VCC),
    .O(bitcounter_not0001)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y25" ),
    .INIT ( 1'b0 ))
  pstate_5 (
    .I(\pstate<4>/DYMUX_1492 ),
    .CE(VCC),
    .CLK(\pstate<4>/CLKINV_1480 ),
    .SET(GND),
    .RST(\pstate<4>/SRINV_1481 ),
    .O(pstate[5])
  );
  X_FF #(
    .LOC ( "SLICE_X21Y26" ),
    .INIT ( 1'b0 ))
  bittimer_1 (
    .I(\bittimer<0>/DYMUX_1559 ),
    .CE(\bittimer<0>/CEINV_1547 ),
    .CLK(\bittimer<0>/CLKINV_1548 ),
    .SET(GND),
    .RST(\bittimer<0>/SRINV_1549 ),
    .O(bittimer[1])
  );
  X_FF #(
    .LOC ( "SLICE_X21Y26" ),
    .INIT ( 1'b0 ))
  bittimer_0 (
    .I(\bittimer<0>/DXMUX_1568 ),
    .CE(\bittimer<0>/CEINV_1547 ),
    .CLK(\bittimer<0>/CLKINV_1548 ),
    .SET(GND),
    .RST(\bittimer<0>/SRINV_1549 ),
    .O(bittimer[0])
  );
  X_LUT4 #(
    .INIT ( 16'h00F0 ),
    .LOC ( "SLICE_X19Y25" ))
  \Mcount_bitcounter_xor<1>1_SW0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(pstate[2]),
    .ADR3(bitcounter[2]),
    .O(N10_pack_2)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y25" ),
    .INIT ( 1'b0 ))
  bitcounter_1 (
    .I(\bitcounter<1>/DXMUX_1462 ),
    .CE(\bitcounter<1>/CEINV_1443 ),
    .CLK(\bitcounter<1>/CLKINV_1444 ),
    .SET(GND),
    .RST(\bitcounter<1>/FFX/RSTAND_1468 ),
    .O(bitcounter[1])
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y25" ))
  \bitcounter<1>/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\bitcounter<1>/FFX/RSTAND_1468 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y24" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i  (
    .I(\full/DYMUX_1581 ),
    .CE(VCC),
    .CLK(\full/CLKINV_1579 ),
    .SET(GND),
    .RST(GND),
    .O(full)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X17Y26" ))
  \pstate_mux0000<2>4  (
    .ADR0(bittimer[1]),
    .ADR1(bittimer[3]),
    .ADR2(bittimer[2]),
    .ADR3(bittimer[0]),
    .O(\pstate_mux0000<2>4_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h8421 ),
    .LOC ( "SLICE_X13Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000062  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000062_1701 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y27" ),
    .INIT ( 1'b0 ))
  load (
    .I(\load/DXMUX_1614 ),
    .CE(VCC),
    .CLK(\load/CLKINV_1597 ),
    .SET(GND),
    .RST(\load/FFX/RSTAND_1619 ),
    .O(load_1032)
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y27" ))
  \load/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\load/FFX/RSTAND_1619 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC00 ),
    .LOC ( "SLICE_X17Y26" ))
  \pstate_mux0000<2>10  (
    .ADR0(VCC),
    .ADR1(\baud1/baud_1023 ),
    .ADR2(\pstate_mux0000<2>4_1033 ),
    .ADR3(pstate[3]),
    .O(\pstate_mux0000<2>10_1642 )
  );
  X_LUT4 #(
    .INIT ( 16'h3323 ),
    .LOC ( "SLICE_X18Y28" ))
  \pstate_mux0000<3>30  (
    .ADR0(\pstate_mux0000<3>15_0 ),
    .ADR1(control[2]),
    .ADR2(loaded_mux0000_0),
    .ADR3(\pstate_mux0000<3>2_1036 ),
    .O(pstate_mux0000[3])
  );
  X_FF #(
    .LOC ( "SLICE_X18Y22" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i  (
    .I(\empty/DYMUX_1730 ),
    .CE(VCC),
    .CLK(\empty/CLKINV_1728 ),
    .SET(GND),
    .RST(GND),
    .O(empty)
  );
  X_LUT4 #(
    .INIT ( 16'h3030 ),
    .LOC ( "SLICE_X18Y28" ))
  \pstate_mux0000<3>2  (
    .ADR0(VCC),
    .ADR1(rxin_IBUF_1000),
    .ADR2(pstate[1]),
    .ADR3(VCC),
    .O(\pstate_mux0000<3>2_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h9787 ),
    .LOC ( "SLICE_X18Y26" ))
  \Mcount_bitcounter_xor<3>1_SW0  (
    .ADR0(bitcounter[2]),
    .ADR1(bitcounter[0]),
    .ADR2(bitcounter[3]),
    .ADR3(pstate[2]),
    .O(N14_pack_3)
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ),
    .LOC ( "SLICE_X16Y27" ))
  ld_shift (
    .ADR0(pstate[3]),
    .ADR1(bittimer[2]),
    .ADR2(N20),
    .ADR3(loaded_1030),
    .O(ld_shift_1611)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y28" ),
    .INIT ( 1'b0 ))
  pstate_2 (
    .I(\pstate<2>/DXMUX_1673 ),
    .CE(VCC),
    .CLK(\pstate<2>/CLKINV_1655 ),
    .SET(GND),
    .RST(\pstate<2>/FFX/RSTAND_1678 ),
    .O(pstate[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y28" ))
  \pstate<2>/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\pstate<2>/FFX/RSTAND_1678 )
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ),
    .LOC ( "SLICE_X13Y26" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<1>11  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\fifo1/Result<1>1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X13Y26" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_1  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/DXMUX_1719 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/CEINV_1693 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/CLKINV_1694 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/SRINV_1695 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1])
  );
  X_LUT4 #(
    .INIT ( 16'hFFF3 ),
    .LOC ( "SLICE_X16Y27" ))
  ld_shift_SW0 (
    .ADR0(VCC),
    .ADR1(bittimer[3]),
    .ADR2(bittimer[0]),
    .ADR3(bittimer[1]),
    .O(N20_pack_1)
  );
  X_SFF #(
    .LOC ( "SLICE_X13Y26" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_0  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/DYMUX_1704 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/CEINV_1693 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/CLKINV_1694 ),
    .SET(GND),
    .RST(GND),
    .SSET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>/SRINV_1695 ),
    .SRST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_1  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/DXMUX_3407 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/CEINV_3379 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/CLKINV_3380 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/SRINV_3381 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1])
  );
  X_FF #(
    .LOC ( "SLICE_X19Y31" ),
    .INIT ( 1'b0 ))
  \baud1/baud  (
    .I(\baud1/baud/DYMUX_3360 ),
    .CE(\baud1/baud/CEINV_3356 ),
    .CLK(\baud1/baud/CLKINV_3357 ),
    .SET(GND),
    .RST(\baud1/baud/FFY/RSTAND_3366 ),
    .O(\baud1/baud_1023 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y31" ))
  \baud1/baud/FFY/RSTAND  (
    .I(reset_IBUF_963),
    .O(\baud1/baud/FFY/RSTAND_3366 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFD ),
    .LOC ( "SLICE_X16Y29" ))
  loaded_mux0000 (
    .ADR0(pstate[3]),
    .ADR1(N22),
    .ADR2(\baud1/baud_1023 ),
    .ADR3(bittimer[2]),
    .O(loaded_mux0000_3340)
  );
  X_LUT4 #(
    .INIT ( 16'h8421 ),
    .LOC ( "SLICE_X28Y31" ))
  \baud1/baud_cmp_eq00008120  (
    .ADR0(\baud1/timer [6]),
    .ADR1(\baud1/period [7]),
    .ADR2(\baud1/period [6]),
    .ADR3(\baud1/timer [7]),
    .O(\baud1/baud_cmp_eq00008120_3494 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X28Y22" ))
  wr_control1 (
    .ADR0(addr_1_IBUF_1065),
    .ADR1(addr_0_IBUF_1064),
    .ADR2(wren_IBUF_1047),
    .ADR3(addr_2_IBUF_1045),
    .O(wr_control)
  );
  X_LUT4 #(
    .INIT ( 16'h55AA ),
    .LOC ( "SLICE_X12Y20" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<1>11  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .O(\fifo1/Result [1])
  );
  X_LUT4 #(
    .INIT ( 16'hCC33 ),
    .LOC ( "SLICE_X12Y20" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000029_SW0  (
    .ADR0(VCC),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR2(VCC),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .O(\fifo1/N17 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFC ),
    .LOC ( "SLICE_X16Y29" ))
  loaded_mux0000_SW0 (
    .ADR0(VCC),
    .ADR1(bittimer[0]),
    .ADR2(bittimer[1]),
    .ADR3(bittimer[3]),
    .O(N22_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ),
    .LOC ( "SLICE_X28Y23" ))
  wr_baud1 (
    .ADR0(addr_1_IBUF_1065),
    .ADR1(addr_0_IBUF_1064),
    .ADR2(wren_IBUF_1047),
    .ADR3(addr_2_IBUF_1045),
    .O(wr_baud)
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_0  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/DYMUX_3392 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/CEINV_3379 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/CLKINV_3380 ),
    .SET(GND),
    .RST(GND),
    .SSET(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>/SRINV_3381 ),
    .SRST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0])
  );
  X_LUT4 #(
    .INIT ( 16'hC0C0 ),
    .LOC ( "SLICE_X28Y22" ))
  \dout<0>39  (
    .ADR0(VCC),
    .ADR1(addr_2_IBUF_1045),
    .ADR2(\dout<0>30 ),
    .ADR3(VCC),
    .O(dout_0_OBUF_3482)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X16Y28" ))
  loaded_mux0000_SW1 (
    .ADR0(bittimer[1]),
    .ADR1(bittimer[0]),
    .ADR2(bittimer[2]),
    .ADR3(bittimer[3]),
    .O(N24_pack_1)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y29" ),
    .INIT ( 1'b0 ))
  loaded (
    .I(\loaded/DXMUX_3343 ),
    .CE(\loaded/CEINV_3325 ),
    .CLK(\loaded/CLKINVNOT ),
    .SET(GND),
    .RST(\loaded/FFX/RSTAND_3349 ),
    .O(loaded_1030)
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y29" ))
  \loaded/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\loaded/FFX/RSTAND_3349 )
  );
  X_LUT4 #(
    .INIT ( 16'hCECC ),
    .LOC ( "SLICE_X16Y28" ))
  loaded_not00011 (
    .ADR0(pstate[3]),
    .ADR1(load_1032),
    .ADR2(\baud1/baud_1023 ),
    .ADR3(N24),
    .O(loaded_not0001)
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ),
    .LOC ( "SLICE_X28Y23" ))
  \dout<8>1  (
    .ADR0(addr_1_IBUF_1065),
    .ADR1(addr_2_IBUF_1045),
    .ADR2(addr_0_IBUF_1064),
    .ADR3(dout_fifo[8]),
    .O(dout_8_OBUF_3451)
  );
  X_BUF #(
    .LOC ( "PAD25" ))
  \rxin/IFF/IMUX  (
    .I(\rxin/INBUF ),
    .O(rxin_IBUF_1000)
  );
  X_BUF #(
    .LOC ( "IPAD36" ))
  \din<0>/IFF/IMUX  (
    .I(\din<0>/INBUF ),
    .O(din_0_IBUF_978)
  );
  X_BUF #(
    .LOC ( "PAD51" ))
  \reset/IFF/IMUX  (
    .I(\reset/INBUF ),
    .O(reset_IBUF_963)
  );
  X_BUF #(
    .LOC ( "PAD52" ))
  \addr<0>/IFF/IMUX  (
    .I(\addr<0>/INBUF ),
    .O(addr_0_IBUF_1064)
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  \addr<1>/IFF/IMUX  (
    .I(\addr<1>/INBUF ),
    .O(addr_1_IBUF_1065)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y24" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DXMUX_2306 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_2289 ),
    .SET(GND),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_1102 )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X29Y24" ))
  \dout<5>2  (
    .ADR0(\baud1/period [5]),
    .ADR1(rden_IBUF_1051),
    .ADR2(addr_2_IBUF_1045),
    .ADR3(addr_1_IBUF_1065),
    .O(\dout<5>2_2323 )
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ),
    .LOC ( "SLICE_X25Y25" ))
  \dout<1>30_F  (
    .ADR0(addr_1_IBUF_1065),
    .ADR1(rden_IBUF_1051),
    .ADR2(addr_2_IBUF_1045),
    .ADR3(\baud1/period [1]),
    .O(N77)
  );
  X_LUT4 #(
    .INIT ( 16'hBABA ),
    .LOC ( "SLICE_X17Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_mux0000_F  (
    .ADR0(pstate[0]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_996 ),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_1102 ),
    .ADR3(VCC),
    .O(\fifo1/N25 )
  );
  X_LUT4 #(
    .INIT ( 16'h4040 ),
    .LOC ( "SLICE_X26Y27" ))
  \dout<4>1  (
    .ADR0(addr_1_IBUF_1065),
    .ADR1(addr_2_IBUF_1045),
    .ADR2(dout_fifo[4]),
    .ADR3(VCC),
    .O(\dout<4>1_2274 )
  );
  X_LUT4 #(
    .INIT ( 16'hFBFA ),
    .LOC ( "SLICE_X17Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_mux0000_G  (
    .ADR0(pstate[0]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_996 ),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_1102 ),
    .ADR3(rd_fifo),
    .O(\fifo1/N26 )
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ),
    .LOC ( "SLICE_X29Y27" ))
  \dout<3>2  (
    .ADR0(\baud1/period [3]),
    .ADR1(addr_1_IBUF_1065),
    .ADR2(rden_IBUF_1051),
    .ADR3(addr_2_IBUF_1045),
    .O(\dout<3>2_2241 )
  );
  X_LUT4 #(
    .INIT ( 16'h4400 ),
    .LOC ( "SLICE_X29Y27" ))
  \dout<3>1  (
    .ADR0(addr_1_IBUF_1065),
    .ADR1(dout_fifo[3]),
    .ADR2(VCC),
    .ADR3(addr_2_IBUF_1045),
    .O(\dout<3>1_2249 )
  );
  X_LUT4 #(
    .INIT ( 16'hE222 ),
    .LOC ( "SLICE_X27Y27" ))
  \dout<0>30_G  (
    .ADR0(dout_fifo[0]),
    .ADR1(addr_1_IBUF_1065),
    .ADR2(rden_IBUF_1051),
    .ADR3(control[0]),
    .O(N80)
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X26Y27" ))
  \dout<4>2  (
    .ADR0(\baud1/period [4]),
    .ADR1(rden_IBUF_1051),
    .ADR2(addr_2_IBUF_1045),
    .ADR3(addr_1_IBUF_1065),
    .O(\dout<4>2_2266 )
  );
  X_LUT4 #(
    .INIT ( 16'h5000 ),
    .LOC ( "SLICE_X29Y24" ))
  \dout<5>1  (
    .ADR0(addr_1_IBUF_1065),
    .ADR1(VCC),
    .ADR2(addr_2_IBUF_1045),
    .ADR3(dout_fifo[5]),
    .O(\dout<5>1_2331 )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X28Y26" ))
  \dout<7>2  (
    .ADR0(rden_IBUF_1051),
    .ADR1(\baud1/period [7]),
    .ADR2(addr_2_IBUF_1045),
    .ADR3(addr_1_IBUF_1065),
    .O(\dout<7>2_2166 )
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ),
    .LOC ( "SLICE_X27Y27" ))
  \dout<0>30_F  (
    .ADR0(addr_1_IBUF_1065),
    .ADR1(addr_2_IBUF_1045),
    .ADR2(rden_IBUF_1051),
    .ADR3(\baud1/period [0]),
    .O(N79)
  );
  X_LUT4 #(
    .INIT ( 16'h88F0 ),
    .LOC ( "SLICE_X25Y25" ))
  \dout<1>30_G  (
    .ADR0(control[1]),
    .ADR1(rden_IBUF_1051),
    .ADR2(dout_fifo[1]),
    .ADR3(addr_1_IBUF_1065),
    .O(N78)
  );
  X_LUT4 #(
    .INIT ( 16'h00A0 ),
    .LOC ( "SLICE_X28Y26" ))
  \dout<7>1  (
    .ADR0(dout_fifo[7]),
    .ADR1(VCC),
    .ADR2(addr_2_IBUF_1045),
    .ADR3(addr_1_IBUF_1065),
    .O(\dout<7>1_2174 )
  );
  X_LUT4 #(
    .INIT ( 16'h0777 ),
    .LOC ( "SLICE_X23Y25" ))
  \pstate_mux0000<4>_SW0  (
    .ADR0(pstate[1]),
    .ADR1(rxin_IBUF_1000),
    .ADR2(pstate[0]),
    .ADR3(control[0]),
    .O(\pstate_mux0000<4>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h0A00 ),
    .LOC ( "SLICE_X28Y27" ))
  \dout<6>1  (
    .ADR0(addr_2_IBUF_1045),
    .ADR1(VCC),
    .ADR2(addr_1_IBUF_1065),
    .ADR3(dout_fifo[6]),
    .O(\dout<6>1_2381 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y22" ),
    .INIT ( 1'b1 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_2471 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_2456 ),
    .SET(GND),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_995 )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X28Y27" ))
  \dout<6>2  (
    .ADR0(addr_2_IBUF_1045),
    .ADR1(rden_IBUF_1051),
    .ADR2(\baud1/period [6]),
    .ADR3(addr_1_IBUF_1065),
    .O(\dout<6>2_2373 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCF4 ),
    .LOC ( "SLICE_X13Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000100_SW0_SW0_SW0  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_995 ),
    .ADR2(pstate[0]),
    .ADR3(\fifo1/N8_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000100_SW0_SW0_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFB ),
    .LOC ( "SLICE_X25Y33" ))
  \baud1/timer_mux0000<0>11_SW8_G  (
    .ADR0(rxin_IBUF_1000),
    .ADR1(\baud1/timer [6]),
    .ADR2(pstate[0]),
    .ADR3(\baud1/timer [7]),
    .O(N46)
  );
  X_LUT4 #(
    .INIT ( 16'h0007 ),
    .LOC ( "SLICE_X27Y28" ))
  \baud1/timer_mux0000<5>1  (
    .ADR0(rxin_IBUF_1000),
    .ADR1(pstate[1]),
    .ADR2(\baud1/baud_cmp_eq0000_0 ),
    .ADR3(\baud1/timer_mux0000<0>11_SW5/O ),
    .O(\baud1/timer_mux0000 [5])
  );
  X_LUT4 #(
    .INIT ( 16'h3033 ),
    .LOC ( "SLICE_X23Y25" ))
  \pstate_mux0000<4>  (
    .ADR0(VCC),
    .ADR1(control[2]),
    .ADR2(pstate[4]),
    .ADR3(\pstate_mux0000<4>_SW0/O ),
    .O(pstate_mux0000[4])
  );
  X_FF #(
    .LOC ( "SLICE_X23Y25" ),
    .INIT ( 1'b0 ))
  pstate_1 (
    .I(\pstate<1>/DXMUX_2503 ),
    .CE(VCC),
    .CLK(\pstate<1>/CLKINV_2486 ),
    .SET(GND),
    .RST(\pstate<1>/FFX/RSTAND_2508 ),
    .O(pstate[1])
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \pstate<1>/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\pstate<1>/FFX/RSTAND_2508 )
  );
  X_LUT4 #(
    .INIT ( 16'hEFFF ),
    .LOC ( "SLICE_X29Y26" ))
  \dout<2>41_SW01  (
    .ADR0(addr_1_IBUF_1065),
    .ADR1(addr_0_IBUF_1064),
    .ADR2(\baud1/period [2]),
    .ADR3(addr_2_IBUF_1045),
    .O(\dout<2>41_SW0 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCF3 ),
    .LOC ( "SLICE_X25Y33" ))
  \baud1/timer_mux0000<0>11_SW8_F  (
    .ADR0(VCC),
    .ADR1(\baud1/timer [6]),
    .ADR2(pstate[0]),
    .ADR3(\baud1/timer [7]),
    .O(N45)
  );
  X_FF #(
    .LOC ( "SLICE_X27Y28" ),
    .INIT ( 1'b0 ))
  \baud1/timer_2  (
    .I(\baud1/timer<2>/DXMUX_2438 ),
    .CE(VCC),
    .CLK(\baud1/timer<2>/CLKINV_2422 ),
    .SET(GND),
    .RST(\baud1/timer<2>/FFX/RSTAND_2443 ),
    .O(\baud1/timer [2])
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y28" ))
  \baud1/timer<2>/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\baud1/timer<2>/FFX/RSTAND_2443 )
  );
  X_LUT4 #(
    .INIT ( 16'hECDF ),
    .LOC ( "SLICE_X27Y28" ))
  \baud1/timer_mux0000<0>11_SW5  (
    .ADR0(\baud1/timer [1]),
    .ADR1(pstate[0]),
    .ADR2(\baud1/timer [0]),
    .ADR3(\baud1/timer [2]),
    .O(\baud1/timer_mux0000<0>11_SW5/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F0 ),
    .LOC ( "SLICE_X13Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000102  (
    .ADR0(\fifo1/N17_0 ),
    .ADR1(\fifo1/N5_0 ),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000100_SW0_SW0_SW0/O ),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X26Y30" ))
  \baud1/Madd_timer_addsub0000_cy<3>11  (
    .ADR0(\baud1/timer [2]),
    .ADR1(\baud1/timer [0]),
    .ADR2(\baud1/timer [3]),
    .ADR3(\baud1/timer [1]),
    .O(\baud1/Madd_timer_addsub0000_cy<3>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ),
    .LOC ( "SLICE_X26Y29" ))
  \baud1/baud_cmp_eq0000853  (
    .ADR0(\baud1/timer [2]),
    .ADR1(\baud1/period [2]),
    .ADR2(\baud1/timer [3]),
    .ADR3(\baud1/period [3]),
    .O(\baud1/baud_cmp_eq0000853/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h8800 ),
    .LOC ( "SLICE_X26Y30" ))
  \baud1/Madd_timer_addsub0000_cy<5>11  (
    .ADR0(\baud1/timer [4]),
    .ADR1(\baud1/timer [5]),
    .ADR2(VCC),
    .ADR3(\baud1/Madd_timer_addsub0000_cy[3] ),
    .O(\baud1/Madd_timer_addsub0000_cy[5] )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X14Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000079  (
    .ADR0(pstate[4]),
    .ADR1(\fifo1/N21_0 ),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000062_0 ),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000079/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h3737 ),
    .LOC ( "SLICE_X19Y28" ))
  \pstate_mux0000<2>18_SW0  (
    .ADR0(bitcounter[0]),
    .ADR1(pstate[2]),
    .ADR2(N16),
    .ADR3(VCC),
    .O(\pstate_mux0000<2>18_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h00AE ),
    .LOC ( "SLICE_X14Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux0000105  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000079/O ),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1019 ),
    .ADR2(\fifo1/N7_0 ),
    .ADR3(pstate[0]),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_2620 ),
    .CE(VCC),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_2605 ),
    .SET(GND),
    .RST(GND),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1019 )
  );
  X_LUT4 #(
    .INIT ( 16'h5400 ),
    .LOC ( "SLICE_X19Y26" ))
  \pstate_mux0000<3>15  (
    .ADR0(\baud1/baud_1023 ),
    .ADR1(N16),
    .ADR2(bitcounter[0]),
    .ADR3(pstate[2]),
    .O(\pstate_mux0000<3>15_2590 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X26Y29" ))
  \baud1/baud_cmp_eq00008136  (
    .ADR0(\baud1/baud_cmp_eq00008120_0 ),
    .ADR1(\baud1/baud_cmp_eq0000826_0 ),
    .ADR2(\baud1/baud_cmp_eq0000853/O ),
    .ADR3(\baud1/baud_cmp_eq0000893_0 ),
    .O(\baud1/baud_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h2322 ),
    .LOC ( "SLICE_X19Y28" ))
  \pstate_mux0000<2>31  (
    .ADR0(\pstate_mux0000<2>10_0 ),
    .ADR1(control[2]),
    .ADR2(\pstate_mux0000<2>18_SW0/O ),
    .ADR3(\baud1/baud_1023 ),
    .O(pstate_mux0000[2])
  );
  X_LUT4 #(
    .INIT ( 16'hEBAF ),
    .LOC ( "SLICE_X26Y31" ))
  \baud1/timer_mux0000<0>11_SW0  (
    .ADR0(pstate[0]),
    .ADR1(\baud1/timer_mux0000<4>_SW0/O ),
    .ADR2(\baud1/timer [3]),
    .ADR3(\baud1/timer [2]),
    .O(N26)
  );
  X_LUT4 #(
    .INIT ( 16'hFF3F ),
    .LOC ( "SLICE_X19Y26" ))
  \Mcount_bitcounter_xor<0>1111  (
    .ADR0(VCC),
    .ADR1(bitcounter[1]),
    .ADR2(bitcounter[3]),
    .ADR3(bitcounter[2]),
    .O(N16_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hAFAF ),
    .LOC ( "SLICE_X19Y24" ))
  bitcounter_not00011_SW0 (
    .ADR0(bitcounter[0]),
    .ADR1(VCC),
    .ADR2(pstate[2]),
    .ADR3(VCC),
    .O(\bitcounter_not00011_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hCC00 ),
    .LOC ( "SLICE_X26Y31" ))
  \baud1/timer_mux0000<4>_SW0  (
    .ADR0(VCC),
    .ADR1(\baud1/timer [0]),
    .ADR2(VCC),
    .ADR3(\baud1/timer [1]),
    .O(\baud1/timer_mux0000<4>_SW0/O_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y28" ),
    .INIT ( 1'b0 ))
  pstate_3 (
    .I(\pstate<3>/DXMUX_2538 ),
    .CE(VCC),
    .CLK(\pstate<3>/CLKINV_2521 ),
    .SET(GND),
    .RST(\pstate<3>/FFX/RSTAND_2543 ),
    .O(pstate[3])
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y28" ))
  \pstate<3>/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\pstate<3>/FFX/RSTAND_2543 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X27Y33" ))
  \baud1/timer_mux0000<7>1  (
    .ADR0(\baud1/timer [0]),
    .ADR1(\baud1/baud_cmp_eq0000_0 ),
    .ADR2(N28_0),
    .ADR3(pstate[0]),
    .O(\baud1/timer_mux0000 [7])
  );
  X_FF #(
    .LOC ( "SLICE_X26Y33" ),
    .INIT ( 1'b0 ))
  \baud1/timer_6  (
    .I(\baud1/timer<6>/DXMUX_2771 ),
    .CE(VCC),
    .CLK(\baud1/timer<6>/CLKINV_2754 ),
    .SET(GND),
    .RST(\baud1/timer<6>/FFX/RSTAND_2776 ),
    .O(\baud1/timer [6])
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y33" ))
  \baud1/timer<6>/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\baud1/timer<6>/FFX/RSTAND_2776 )
  );
  X_LUT4 #(
    .INIT ( 16'h0013 ),
    .LOC ( "SLICE_X27Y31" ))
  \baud1/timer_mux0000<2>1  (
    .ADR0(rxin_IBUF_1000),
    .ADR1(\baud1/baud_cmp_eq0000_0 ),
    .ADR2(pstate[1]),
    .ADR3(\baud1/timer_mux0000<0>11_SW6/O ),
    .O(\baud1/timer_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hFFBE ),
    .LOC ( "SLICE_X12Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux00003168  (
    .ADR0(\fifo1/N9_0 ),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .ADR3(\fifo1/N3 ),
    .O(\fifo1/N8 )
  );
  X_LUT4 #(
    .INIT ( 16'h6FF6 ),
    .LOC ( "SLICE_X12Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux00003168_SW0  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .O(\fifo1/N3_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X27Y31" ),
    .INIT ( 1'b0 ))
  \baud1/timer_5  (
    .I(\baud1/timer<5>/DXMUX_2806 ),
    .CE(VCC),
    .CLK(\baud1/timer<5>/CLKINV_2790 ),
    .SET(GND),
    .RST(\baud1/timer<5>/FFX/RSTAND_2811 ),
    .O(\baud1/timer [5])
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y31" ))
  \baud1/timer<5>/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\baud1/timer<5>/FFX/RSTAND_2811 )
  );
  X_LUT4 #(
    .INIT ( 16'h0035 ),
    .LOC ( "SLICE_X26Y32" ))
  \baud1/timer_mux0000<0>1  (
    .ADR0(\baud1/timer_mux0000<0>11_SW7/O ),
    .ADR1(N41),
    .ADR2(\baud1/Madd_timer_addsub0000_cy<5>_0 ),
    .ADR3(\baud1/baud_cmp_eq0000_0 ),
    .O(\baud1/timer_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hEEAA ),
    .LOC ( "SLICE_X26Y33" ))
  \baud1/timer_mux0000<0>11_SW2  (
    .ADR0(pstate[0]),
    .ADR1(pstate[1]),
    .ADR2(VCC),
    .ADR3(rxin_IBUF_1000),
    .O(N30_pack_2)
  );
  X_LUT4 #(
    .INIT ( 16'hFF93 ),
    .LOC ( "SLICE_X27Y31" ))
  \baud1/timer_mux0000<0>11_SW6  (
    .ADR0(\baud1/Madd_timer_addsub0000_cy[3] ),
    .ADR1(\baud1/timer [5]),
    .ADR2(\baud1/timer [4]),
    .ADR3(pstate[0]),
    .O(\baud1/timer_mux0000<0>11_SW6/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ),
    .LOC ( "SLICE_X19Y24" ))
  bitcounter_not00011 (
    .ADR0(bitcounter[1]),
    .ADR1(bitcounter[3]),
    .ADR2(\bitcounter_not00011_SW0/O ),
    .ADR3(bitcounter[2]),
    .O(finish)
  );
  X_FF #(
    .LOC ( "SLICE_X26Y32" ),
    .INIT ( 1'b0 ))
  \baud1/timer_7  (
    .I(\baud1/timer<7>/DXMUX_2736 ),
    .CE(VCC),
    .CLK(\baud1/timer<7>/CLKINV_2720 ),
    .SET(GND),
    .RST(\baud1/timer<7>/FFX/RSTAND_2741 ),
    .O(\baud1/timer [7])
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y32" ))
  \baud1/timer<7>/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\baud1/timer<7>/FFX/RSTAND_2741 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y24" ),
    .INIT ( 1'b0 ))
  frame_ready (
    .I(\frame_ready/DXMUX_2701 ),
    .CE(VCC),
    .CLK(\frame_ready/CLKINV_2683 ),
    .SET(GND),
    .RST(\frame_ready/FFX/RSTAND_2706 ),
    .O(frame_ready_1129)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y24" ))
  \frame_ready/FFX/RSTAND  (
    .I(reset_IBUF_963),
    .O(\frame_ready/FFX/RSTAND_2706 )
  );
  X_LUT4 #(
    .INIT ( 16'h0006 ),
    .LOC ( "SLICE_X26Y33" ))
  \baud1/timer_mux0000<1>1  (
    .ADR0(\baud1/timer [6]),
    .ADR1(\baud1/Madd_timer_addsub0000_cy<5>_0 ),
    .ADR2(N30),
    .ADR3(\baud1/baud_cmp_eq0000_0 ),
    .O(\baud1/timer_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hEAFF ),
    .LOC ( "SLICE_X26Y32" ))
  \baud1/timer_mux0000<0>11_SW7  (
    .ADR0(pstate[0]),
    .ADR1(pstate[1]),
    .ADR2(rxin_IBUF_1000),
    .ADR3(\baud1/timer [7]),
    .O(\baud1/timer_mux0000<0>11_SW7/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h0110 ),
    .LOC ( "SLICE_X27Y33" ))
  \baud1/timer_mux0000<6>1  (
    .ADR0(N30),
    .ADR1(\baud1/baud_cmp_eq0000_0 ),
    .ADR2(\baud1/timer [0]),
    .ADR3(\baud1/timer [1]),
    .O(\baud1/timer_mux0000 [6])
  );
  X_LUT4 #(
    .INIT ( 16'h0D0C ),
    .LOC ( "SLICE_X20Y24" ))
  \pstate_mux0000<5>1  (
    .ADR0(control[0]),
    .ADR1(pstate[5]),
    .ADR2(control[2]),
    .ADR3(pstate[0]),
    .O(pstate_mux0000[5])
  );
  X_FF #(
    .LOC ( "SLICE_X18Y23" ),
    .INIT ( 1'b0 ))
  in_two (
    .I(\in_two/DYMUX_2904 ),
    .CE(VCC),
    .CLK(\in_two/CLKINV_2891 ),
    .SET(GND),
    .RST(GND),
    .O(in_two_983)
  );
  X_LUT4 #(
    .INIT ( 16'h6CCC ),
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<3>11  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .O(\fifo1/Result<3>1 )
  );
  X_LUT4 #(
    .INIT ( 16'h66AA ),
    .LOC ( "SLICE_X12Y28" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<2>11  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR2(VCC),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\fifo1/Result [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y28" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_2  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_2973 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2962 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2963 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2964 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X13Y27" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_2  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_2931 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_2920 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_2921 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_2922 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X13Y27" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_3  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_2944 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_2920 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_2921 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_2922 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3])
  );
  X_LUT4 #(
    .INIT ( 16'h7F80 ),
    .LOC ( "SLICE_X12Y28" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<3>11  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .O(\fifo1/Result [3])
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X18Y23" ))
  \Mshreg_in_two/SRL16E  (
    .A0(GND),
    .A1(GND),
    .A2(GND),
    .A3(GND),
    .D(\in_two/DIG_MUX_2893 ),
    .CE(\in_two/WSG ),
    .CLK(\in_two/CLKINV_2891 ),
    .Q(Mshreg_in_two),
    .Q15(\NLW_Mshreg_in_two/SRL16E_Q15_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y28" ),
    .INIT ( 1'b0 ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_3  (
    .I(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_2986 ),
    .CE(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2962 ),
    .CLK(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2963 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2964 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3])
  );
  X_LUT4 #(
    .INIT ( 16'h7878 ),
    .LOC ( "SLICE_X13Y27" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<2>11  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .ADR3(VCC),
    .O(\fifo1/Result<2>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X27Y33" ),
    .INIT ( 1'b0 ))
  \baud1/timer_0  (
    .I(\baud1/timer<1>/DYMUX_2858 ),
    .CE(VCC),
    .CLK(\baud1/timer<1>/CLKINV_2849 ),
    .SET(GND),
    .RST(\baud1/timer<1>/SRINV_2850 ),
    .O(\baud1/timer [0])
  );
  X_FF #(
    .LOC ( "SLICE_X27Y33" ),
    .INIT ( 1'b0 ))
  \baud1/timer_1  (
    .I(\baud1/timer<1>/DXMUX_2872 ),
    .CE(VCC),
    .CLK(\baud1/timer<1>/CLKINV_2849 ),
    .SET(GND),
    .RST(\baud1/timer<1>/SRINV_2850 ),
    .O(\baud1/timer [1])
  );
  X_LUT4 #(
    .INIT ( 16'hAFAA ),
    .LOC ( "SLICE_X15Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en1  (
    .ADR0(pstate[0]),
    .ADR1(VCC),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_995 ),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y24" ),
    .INIT ( 1'b0 ))
  control_1 (
    .I(\control<1>/DXMUX_3026 ),
    .CE(VCC),
    .CLK(\control<1>/CLKINV_3002 ),
    .SET(GND),
    .RST(\control<1>/SRINV_3003 ),
    .O(control[1])
  );
  X_FF #(
    .LOC ( "SLICE_X20Y24" ),
    .INIT ( 1'b1 ))
  pstate_0 (
    .I(\control<1>/DYMUX_3011 ),
    .CE(VCC),
    .CLK(\control<1>/CLKINV_3002 ),
    .SET(\control<1>/SRINV_3003 ),
    .RST(GND),
    .O(pstate[0])
  );
  X_FF #(
    .LOC ( "SLICE_X18Y24" ),
    .INIT ( 1'b0 ))
  bitcounter_2 (
    .I(\bitcounter<2>/DYMUX_3077 ),
    .CE(\bitcounter<2>/CEINV_3066 ),
    .CLK(\bitcounter<2>/CLKINV_3067 ),
    .SET(GND),
    .RST(\bitcounter<2>/FFY/RSTAND_3083 ),
    .O(bitcounter[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y24" ))
  \bitcounter<2>/FFY/RSTAND  (
    .I(reset_IBUF_963),
    .O(\bitcounter<2>/FFY/RSTAND_3083 )
  );
  X_LUT4 #(
    .INIT ( 16'h3CCC ),
    .LOC ( "SLICE_X20Y26" ))
  \Mcount_bittimer_xor<2>11  (
    .ADR0(VCC),
    .ADR1(bittimer[2]),
    .ADR2(bittimer[1]),
    .ADR3(bittimer[0]),
    .O(Result[2])
  );
  X_LUT4 #(
    .INIT ( 16'h66AA ),
    .LOC ( "SLICE_X18Y24" ))
  \Mcount_bitcounter_xor<2>11  (
    .ADR0(bitcounter[2]),
    .ADR1(bitcounter[0]),
    .ADR2(VCC),
    .ADR3(bitcounter[1]),
    .O(Mcount_bitcounter2)
  );
  X_FF #(
    .LOC ( "SLICE_X20Y26" ),
    .INIT ( 1'b0 ))
  bittimer_3 (
    .I(\bittimer<3>/DXMUX_3123 ),
    .CE(\bittimer<3>/CEINV_3097 ),
    .CLK(\bittimer<3>/CLKINV_3098 ),
    .SET(GND),
    .RST(\bittimer<3>/SRINV_3099 ),
    .O(bittimer[3])
  );
  X_LUT4 #(
    .INIT ( 16'h88FF ),
    .LOC ( "SLICE_X21Y24" ))
  control_2_not00011 (
    .ADR0(frame_ready_1129),
    .ADR1(full),
    .ADR2(VCC),
    .ADR3(control[0]),
    .O(control_2_not0001)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y23" ),
    .INIT ( 1'b0 ))
  frame_error_8 (
    .I(\frame_error<8>/DYMUX_3051 ),
    .CE(\frame_error<8>/CEINV_3039 ),
    .CLK(\frame_error<8>/CLKINV_3040 ),
    .SET(GND),
    .RST(\frame_error<8>/FFY/RSTAND_3057 ),
    .O(frame_error[8])
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y23" ))
  \frame_error<8>/FFY/RSTAND  (
    .I(reset_IBUF_963),
    .O(\frame_error<8>/FFY/RSTAND_3057 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF55 ),
    .LOC ( "SLICE_X17Y23" ))
  frame_error_8_or00001 (
    .ADR0(shift[9]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(shift[0]),
    .O(frame_error_8_or0000)
  );
  X_FF #(
    .LOC ( "SLICE_X20Y26" ),
    .INIT ( 1'b0 ))
  bittimer_2 (
    .I(\bittimer<3>/DYMUX_3108 ),
    .CE(\bittimer<3>/CEINV_3097 ),
    .CLK(\bittimer<3>/CLKINV_3098 ),
    .SET(GND),
    .RST(\bittimer<3>/SRINV_3099 ),
    .O(bittimer[2])
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ),
    .LOC ( "SLICE_X20Y26" ))
  \Mcount_bittimer_xor<3>11  (
    .ADR0(bittimer[3]),
    .ADR1(bittimer[2]),
    .ADR2(bittimer[1]),
    .ADR3(bittimer[0]),
    .O(Result[3])
  );
  X_LUT4 #(
    .INIT ( 16'h3000 ),
    .LOC ( "SLICE_X15Y22" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux00005_SW0  (
    .ADR0(VCC),
    .ADR1(\fifo1/N3 ),
    .ADR2(\fifo1/N23_0 ),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\fifo1/N7 )
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ),
    .LOC ( "SLICE_X20Y24" ))
  control_1_mux00001 (
    .ADR0(control[0]),
    .ADR1(empty),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(control_1_mux0000)
  );
  X_LUT4 #(
    .INIT ( 16'h8F80 ),
    .LOC ( "SLICE_X24Y27" ))
  \dout<2>10  (
    .ADR0(rden_IBUF_1051),
    .ADR1(control[2]),
    .ADR2(addr_1_IBUF_1065),
    .ADR3(dout_fifo[2]),
    .O(\dout<2>10_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y30" ),
    .INIT ( 1'b0 ))
  \baud1/period_5  (
    .I(\baud1/period<5>/DXMUX_3252 ),
    .CE(\baud1/period<5>/CEINV_3240 ),
    .CLK(\baud1/period<5>/CLKINV_3241 ),
    .SET(GND),
    .RST(\baud1/period<5>/SRINV_3242 ),
    .O(\baud1/period [5])
  );
  X_FF #(
    .LOC ( "SLICE_X28Y29" ),
    .INIT ( 1'b1 ))
  \baud1/period_1  (
    .I(\baud1/period<1>/DXMUX_3199 ),
    .CE(\baud1/period<1>/CEINV_3186 ),
    .CLK(\baud1/period<1>/CLKINV_3187 ),
    .SET(\baud1/period<1>/SRINV_3188 ),
    .RST(GND),
    .O(\baud1/period [1])
  );
  X_FF #(
    .LOC ( "SLICE_X28Y30" ),
    .INIT ( 1'b1 ))
  \baud1/period_4  (
    .I(\baud1/period<5>/DYMUX_3244 ),
    .CE(\baud1/period<5>/CEINV_3240 ),
    .CLK(\baud1/period<5>/CLKINV_3241 ),
    .SET(\baud1/period<5>/SRINV_3242 ),
    .RST(GND),
    .O(\baud1/period [4])
  );
  X_FF #(
    .LOC ( "SLICE_X28Y29" ),
    .INIT ( 1'b0 ))
  \baud1/period_0  (
    .I(\baud1/period<1>/DYMUX_3190 ),
    .CE(\baud1/period<1>/CEINV_3186 ),
    .CLK(\baud1/period<1>/CLKINV_3187 ),
    .SET(GND),
    .RST(\baud1/period<1>/SRINV_3188 ),
    .O(\baud1/period [0])
  );
  X_FF #(
    .LOC ( "SLICE_X29Y28" ),
    .INIT ( 1'b1 ))
  \baud1/period_3  (
    .I(\baud1/period<3>/DXMUX_3226 ),
    .CE(\baud1/period<3>/CEINV_3213 ),
    .CLK(\baud1/period<3>/CLKINV_3214 ),
    .SET(\baud1/period<3>/SRINV_3215 ),
    .RST(GND),
    .O(\baud1/period [3])
  );
  X_FF #(
    .LOC ( "SLICE_X29Y31" ),
    .INIT ( 1'b0 ))
  \baud1/period_6  (
    .I(\baud1/period<7>/DYMUX_3295 ),
    .CE(\baud1/period<7>/CEINV_3291 ),
    .CLK(\baud1/period<7>/CLKINV_3292 ),
    .SET(GND),
    .RST(\baud1/period<7>/SRINV_3293 ),
    .O(\baud1/period [6])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ),
    .LOC ( "SLICE_X15Y25" ))
  rd_fifo1 (
    .ADR0(rden_IBUF_1051),
    .ADR1(addr_1_IBUF_1065),
    .ADR2(addr_0_IBUF_1064),
    .ADR3(addr_2_IBUF_1045),
    .O(rd_fifo_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h8241 ),
    .LOC ( "SLICE_X13Y24" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000079_SW0  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .ADR3(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .O(\fifo1/N21 )
  );
  X_FF #(
    .LOC ( "SLICE_X29Y28" ),
    .INIT ( 1'b0 ))
  \baud1/period_2  (
    .I(\baud1/period<3>/DYMUX_3217 ),
    .CE(\baud1/period<3>/CEINV_3213 ),
    .CLK(\baud1/period<3>/CLKINV_3214 ),
    .SET(GND),
    .RST(\baud1/period<3>/SRINV_3215 ),
    .O(\baud1/period [2])
  );
  X_LUT4 #(
    .INIT ( 16'h0F07 ),
    .LOC ( "SLICE_X15Y25" ))
  \fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/RAM_RD_EN_FWFT1  (
    .ADR0(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_998 ),
    .ADR1(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_996 ),
    .ADR2(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_995 ),
    .ADR3(rd_fifo),
    .O(\fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en )
  );
  X_FF #(
    .LOC ( "SLICE_X29Y31" ),
    .INIT ( 1'b0 ))
  \baud1/period_7  (
    .I(\baud1/period<7>/DXMUX_3304 ),
    .CE(\baud1/period<7>/CEINV_3291 ),
    .CLK(\baud1/period<7>/CLKINV_3292 ),
    .SET(GND),
    .RST(\baud1/period<7>/SRINV_3293 ),
    .O(\baud1/period [7])
  );
  X_BUF #(
    .LOC ( "PAD38" ))
  \dout<7>/OUTPUT/OFF/OMUX  (
    .I(\dout_7_OBUF/F5MUX_2176 ),
    .O(\dout<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD45" ))
  \dout<3>/OUTPUT/OFF/OMUX  (
    .I(\dout_3_OBUF/F5MUX_2251 ),
    .O(\dout<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD40" ))
  \dout<5>/OUTPUT/OFF/OMUX  (
    .I(\dout_5_OBUF/F5MUX_2333 ),
    .O(\dout<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD47" ))
  \dout<0>/OUTPUT/OFF/OMUX  (
    .I(dout_0_OBUF_3482),
    .O(\dout<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD44" ))
  \dout<8>/OUTPUT/OFF/OMUX  (
    .I(dout_8_OBUF_3451),
    .O(\dout<8>/O )
  );
  X_BUF #(
    .LOC ( "PAD43" ))
  \dout<4>/OUTPUT/OFF/OMUX  (
    .I(\dout_4_OBUF/F5MUX_2276 ),
    .O(\dout<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD42" ))
  \dout<6>/OUTPUT/OFF/OMUX  (
    .I(\dout_6_OBUF/F5MUX_2383 ),
    .O(\dout<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD37" ))
  \dout<2>/OUTPUT/OFF/OMUX  (
    .I(dout_2_OBUF_3518),
    .O(\dout<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD49" ))
  \dout<1>/OUTPUT/OFF/OMUX  (
    .I(dout_1_OBUF_3674),
    .O(\dout<1>/O )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFF ),
    .LOC ( "SLICE_X29Y26" ))
  \N47/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\N47/G )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y23" ))
  \Mshreg_in_two/SRL16E.CE/WSGAND  (
    .I(\in_two/SRINV_2887 ),
    .O(\in_two/WSG )
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
    .I(frame_error[0]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1>  (
    .I(frame_error[1]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<2>  (
    .I(frame_error[2]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<2> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8>  (
    .I(frame_error[3]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9>  (
    .I(frame_error[4]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16>  (
    .I(frame_error[5]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17>  (
    .I(frame_error[6]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24>  (
    .I(frame_error[7]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24> )

  );
  X_BUF 
  \NlwBufferBlock_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25>  (
    .I(frame_error[8]),
    .O
(\NlwBufferSignal_fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> )

  );
  X_ZERO   NlwBlock_uart_rx_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_uart_rx_VCC (
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

