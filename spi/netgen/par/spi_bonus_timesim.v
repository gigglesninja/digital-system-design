////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: spi_bonus_timesim.v
// /___/   /\     Timestamp: Fri Nov 28 14:23:43 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf spi_bonus.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim spi_bonus.ncd spi_bonus_timesim.v 
// Device	: 3s100ecp132-4 (PRODUCTION 1.27 2013-06-08)
// Input file	: spi_bonus.ncd
// Output file	: C:\Users\James\Desktop\iDriveSync\IDrive-Sync\spi\netgen\par\spi_bonus_timesim.v
// # of Modules	: 1
// Design Name	: spi_bonus
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

module spi_bonus (
  clk, rden, wren, reset, mosi, sclk, miso, dout, addr, din
);
  input clk;
  input rden;
  input wren;
  input reset;
  output mosi;
  output sclk;
  input miso;
  output [7 : 0] dout;
  input [1 : 0] addr;
  input [7 : 0] din;
  wire din_2_IBUF_1108;
  wire wren_IBUF_1109;
  wire din_3_IBUF_1110;
  wire din_4_IBUF_1111;
  wire din_5_IBUF_1112;
  wire rden_IBUF_1113;
  wire din_6_IBUF_1114;
  wire din_7_IBUF_1115;
  wire spi_1120;
  wire reset_IBUF_1128;
  wire addr_0_IBUF_1129;
  wire din_0_IBUF_1130;
  wire addr_1_IBUF_1131;
  wire din_1_IBUF_1132;
  wire clk_BUFGP;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ;
  wire \spiclk_and00004/O ;
  wire spiclk_and00007_0;
  wire N13_0;
  wire spiclk_cmp_le0000_0;
  wire spiclk_cmp_eq0000_0;
  wire enspi;
  wire spiclk_and0000;
  wire N19_0;
  wire spiclk_not0002_0;
  wire \spiclk_cmp_le00001_SW0/O ;
  wire N111_0;
  wire N11;
  wire tx_empty;
  wire pstate_FSM_FFd1_1207;
  wire pstate_FSM_FFd2_1208;
  wire N21_0;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_1210 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O ;
  wire \rxfifo/N8_0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1218 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_1219 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O ;
  wire \txfifo/N8_0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1228 ;
  wire \spiclk_cmp_eq0000_SW0/O ;
  wire \spiclk_and000048_SW1/O ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O ;
  wire \rxfifo/N6_0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O ;
  wire \txfifo/N6_0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1237 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_0 ;
  wire \rxfifo/N01_0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1243 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_0 ;
  wire \txfifo/N01_0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1264 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1265 ;
  wire rd_rx;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1267 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1268 ;
  wire \pstate_FSM_FFd2-In34_1269 ;
  wire sin_0;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_1271 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_1274 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ;
  wire counter_not0001_0;
  wire shiftout_not0001_0;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1298 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1299 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1300 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1301 ;
  wire \pstate_FSM_FFd2-In10_1302 ;
  wire \pstate_FSM_FFd2-In3_0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_1304 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_1305 ;
  wire wr_rx;
  wire wr_tx;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_1310 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_1311 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_1312 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_1313 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_1320 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_1321 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_1322 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_1323 ;
  wire rx_empty;
  wire tx_full;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_1326 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_1327 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_1328 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_1330 ;
  wire \din<4>/INBUF ;
  wire \rden/INBUF ;
  wire \wren/INBUF ;
  wire \din<5>/INBUF ;
  wire \din<2>/INBUF ;
  wire \din<3>/INBUF ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB3 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB2 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB1 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB31 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB30 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB29 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB28 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB27 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB26 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB23 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB22 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB21 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB20 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB19 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB18 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB15 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB14 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB13 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB12 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB11 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB10 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB7 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB6 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB5 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB4 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB3 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB2 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA3 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA2 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA1 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA31 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA30 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA29 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA28 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA27 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA26 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA25 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA24 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA23 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA22 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA21 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA20 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA19 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA18 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA17 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA16 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA15 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA14 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA13 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA12 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA11 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA10 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA9 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA8 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA7 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA6 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA5 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA4 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA3 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA2 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA1 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB3 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB2 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB1 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB0 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB31 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB30 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB29 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB28 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB27 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB26 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB25 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB24 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB23 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB22 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB21 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB20 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB19 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB18 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB17 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB16 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB15 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB14 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB13 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB12 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB11 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB10 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB9 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB8 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB7 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB6 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB5 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB4 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB3 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB2 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB1 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB0 ;
  wire \dout_1_OBUF/F5MUX_1870 ;
  wire Mmux_dout2;
  wire \dout_1_OBUF/BXINV_1863 ;
  wire Mmux_dout21_1861;
  wire \sclk/O ;
  wire \reset/INBUF ;
  wire \addr<0>/INBUF ;
  wire \miso/INBUF ;
  wire \din<1>/INBUF ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB3 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB2 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB1 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB31 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB30 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB29 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB28 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB27 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB26 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB23 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB22 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB21 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB20 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB19 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB18 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB15 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB14 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB13 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB12 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB11 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB10 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB7 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB6 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB5 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB4 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB3 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB2 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA3 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA2 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA1 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA31 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA30 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA29 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA28 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA27 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA26 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA25 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA24 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA23 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA22 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA21 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA20 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA19 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA18 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA17 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA16 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA15 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA14 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA13 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA12 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA11 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA10 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA9 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA8 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA7 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA6 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA5 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA4 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA3 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA2 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA1 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB3 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB2 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB1 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB0 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB31 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB30 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB29 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB28 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB27 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB26 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB25 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB24 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB23 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB22 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB21 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB20 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB19 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB18 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB17 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB16 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB15 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB14 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB13 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB12 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB11 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB10 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB9 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB8 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB7 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB6 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB5 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB4 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB3 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB2 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB1 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB0 ;
  wire \dout<1>/O ;
  wire \dout<0>/O ;
  wire \dout<5>/O ;
  wire \mosi/O ;
  wire \dout<4>/O ;
  wire \dout<3>/O ;
  wire \dout<6>/O ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \addr<1>/INBUF ;
  wire \dout<2>/O ;
  wire \din<0>/INBUF ;
  wire \dout<7>/O ;
  wire \din<7>/INBUF ;
  wire \din<6>/INBUF ;
  wire \clk/INBUF ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_2248 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O_pack_2 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_2232 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_2118 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_2117 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O_pack_1 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_2102 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_2282 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O_pack_2 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_2266 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_2326 ;
  wire \rxfifo/Result<3>1 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_2311 ;
  wire \rxfifo/Result<2>1 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_2302 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_2301 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_2300 ;
  wire \spiclk<3>/FFX/RST ;
  wire \spiclk<3>/DXMUX_2023 ;
  wire N11_pack_2;
  wire \spiclk<3>/CLKINV_2007 ;
  wire \spiclk<3>/CEINV_2006 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_2083 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O_pack_1 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_2067 ;
  wire \dout_0_OBUF/F5MUX_1895 ;
  wire Mmux_dout1;
  wire \dout_0_OBUF/BXINV_1888 ;
  wire Mmux_dout11_1886;
  wire spiclk_and00007_1918;
  wire \spiclk_and00004/O_pack_1 ;
  wire N21;
  wire enspi_pack_1;
  wire spiclk_cmp_eq0000_2145;
  wire \spiclk_cmp_eq0000_SW0/O_pack_1 ;
  wire N13;
  wire \Madd_spiclk_addsub0000_cy<3>_pack_1 ;
  wire spiclk_cmp_le0000;
  wire \spiclk_cmp_le00001_SW0/O_pack_1 ;
  wire spi_not0001;
  wire \spiclk_and000048_SW1/O_pack_1 ;
  wire \txfifo/N8 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O_pack_1 ;
  wire spiclk_not0002;
  wire spiclk_and0000_pack_1;
  wire \rxfifo/N8 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O_pack_1 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_2372 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_2357 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2348 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2347 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2346 ;
  wire N111;
  wire \spiclk<2>/DYMUX_2812 ;
  wire \spiclk<2>/CLKINV_2803 ;
  wire \spiclk<2>/CEINV_2802 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_2507 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX_2492 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_2484 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_2483 ;
  wire \spiclk<1>/DXMUX_2699 ;
  wire \spiclk<1>/DYMUX_2684 ;
  wire \spiclk<1>/SRINV_2675 ;
  wire \spiclk<1>/CLKINV_2674 ;
  wire \spiclk<1>/CEINV_2673 ;
  wire sin;
  wire \pstate_FSM_FFd1/DYMUX_2576 ;
  wire \pstate_FSM_FFd1-In ;
  wire \pstate_FSM_FFd1/CLKINV_2565 ;
  wire \counter<1>/DXMUX_2867 ;
  wire Mcount_counter1;
  wire \counter<1>/DYMUX_2851 ;
  wire Mcount_counter;
  wire \counter<1>/SRINV_2841 ;
  wire \counter<1>/CLKINV_2840 ;
  wire \counter<1>/CEINV_2839 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_2418 ;
  wire \txfifo/Result<3>1 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_2403 ;
  wire \txfifo/Result<2>1 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_2394 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_2393 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_2392 ;
  wire \shiftout<1>/DXMUX_2783 ;
  wire \shiftout<1>/DYMUX_2767 ;
  wire \shiftout<1>/SRINV_2759 ;
  wire \shiftout<1>/CLKINV_2758 ;
  wire \shiftout<1>/CEINV_2757 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_2464 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_2449 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2440 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2439 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2438 ;
  wire counter_not0001;
  wire \spi/DYMUX_2730 ;
  wire spi_mux0000;
  wire \spi/CLKINV_2721 ;
  wire \spi/CEINV_2720 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_2549 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX_2534 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_2526 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_2525 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX_2647 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_2646 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or0000 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_2638 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX_2612 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_2611 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or0000 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_2603 ;
  wire \shiftout<3>/DXMUX_2913 ;
  wire \shiftout<3>/DYMUX_2897 ;
  wire \shiftout<3>/SRINV_2888 ;
  wire \shiftout<3>/CLKINV_2887 ;
  wire \shiftout<3>/CEINV_2886 ;
  wire \shiftout<7>/DXMUX_3123 ;
  wire \shiftout<7>/DYMUX_3107 ;
  wire \shiftout<7>/SRINV_3098 ;
  wire \shiftout<7>/CLKINV_3097 ;
  wire \shiftout<7>/CEINV_3096 ;
  wire \pstate_FSM_FFd2/DXMUX_3191 ;
  wire \pstate_FSM_FFd2-In ;
  wire \pstate_FSM_FFd2-In10_pack_2 ;
  wire \pstate_FSM_FFd2/CLKINV_3175 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ;
  wire \pstate_FSM_FFd2-In34_pack_1 ;
  wire \counter<3>/DXMUX_3005 ;
  wire Mcount_counter3;
  wire \counter<3>/DYMUX_2990 ;
  wire Mcount_counter2;
  wire \counter<3>/SRINV_2982 ;
  wire \counter<3>/CLKINV_2981 ;
  wire \counter<3>/CEINV_2980 ;
  wire \shiftout<5>/DXMUX_3051 ;
  wire \shiftout<5>/DYMUX_3035 ;
  wire \shiftout<5>/SRINV_3026 ;
  wire \shiftout<5>/CLKINV_3025 ;
  wire \shiftout<5>/CEINV_3024 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX_3140 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV_3139 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV_3137 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV_3136 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX_3226 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX_3221 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_3219 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX_3331 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_3328 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX_3315 ;
  wire \rxfifo/Result<1>1 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_3305 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_3304 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_3303 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX_3427 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_3424 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX_3411 ;
  wire \txfifo/Result<1>1 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_3401 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_3400 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_3399 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX_3210 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX_3205 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_3203 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX_3156 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV_3155 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV_3153 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV_3152 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_3379 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_3376 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_3361 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_3351 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_3350 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_3349 ;
  wire N19;
  wire \spiclk<6>/DYMUX_3077 ;
  wire \spiclk<6>/CLKINV_3068 ;
  wire \spiclk<6>/CEINV_3067 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb ;
  wire \spiclk<5>/DXMUX_2959 ;
  wire \spiclk<5>/DYMUX_2944 ;
  wire \spiclk<5>/SRINV_2936 ;
  wire \spiclk<5>/CLKINV_2935 ;
  wire \spiclk<5>/CEINV_2934 ;
  wire \txout<1>/DXMUX_3628 ;
  wire \txout<1>/DYMUX_3621 ;
  wire \txout<1>/SRINV_3619 ;
  wire \txout<1>/CLKINV_3618 ;
  wire \txout<1>/CEINV_3617 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/DYMUX_3563 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/BYINV_3562 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/SRINV_3561 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLKINV_3560 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CEINV_3559 ;
  wire \txout<7>/DXMUX_3796 ;
  wire \txout<7>/DYMUX_3789 ;
  wire \txout<7>/SRINV_3787 ;
  wire \txout<7>/CLKINV_3786 ;
  wire \txout<7>/CEINV_3785 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/FFX/RST ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_3874 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_3865 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3863 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3862 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3861 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_3926 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_3917 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3915 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3914 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3913 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_3551 ;
  wire \txfifo/N6 ;
  wire \dout_rx<5>/DXMUX_3724 ;
  wire \dout_rx<5>/DYMUX_3717 ;
  wire \dout_rx<5>/SRINV_3715 ;
  wire \dout_rx<5>/CLKINV_3714 ;
  wire \dout_rx<5>/CEINV_3713 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_3527 ;
  wire \rxfifo/N6 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/DYMUX_3579 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/BYINV_3578 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/SRINV_3577 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLKINV_3576 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CEINV_3575 ;
  wire \txout<3>/DXMUX_3700 ;
  wire \txout<3>/DYMUX_3693 ;
  wire \txout<3>/SRINV_3691 ;
  wire \txout<3>/CLKINV_3690 ;
  wire \txout<3>/CEINV_3689 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/FFX/RST ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_3846 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_3837 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3835 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3834 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3833 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_3815 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_3896 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_3954 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_3945 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3943 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3942 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3941 ;
  wire \dout_rx<3>/DXMUX_3676 ;
  wire \dout_rx<3>/DYMUX_3669 ;
  wire \dout_rx<3>/SRINV_3667 ;
  wire \dout_rx<3>/CLKINV_3666 ;
  wire \dout_rx<3>/CEINV_3665 ;
  wire \rxfifo/N01 ;
  wire wr_rx_pack_1;
  wire \txout<5>/DXMUX_3748 ;
  wire \txout<5>/DYMUX_3741 ;
  wire \txout<5>/SRINV_3739 ;
  wire \txout<5>/CLKINV_3738 ;
  wire \txout<5>/CEINV_3737 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_3475 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_3472 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_3457 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_3447 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_3446 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_3445 ;
  wire \dout_rx<1>/DXMUX_3604 ;
  wire \dout_rx<1>/DYMUX_3597 ;
  wire \dout_rx<1>/SRINV_3595 ;
  wire \dout_rx<1>/CLKINV_3594 ;
  wire \dout_rx<1>/CEINV_3593 ;
  wire \dout_rx<7>/DXMUX_3772 ;
  wire \dout_rx<7>/DYMUX_3765 ;
  wire \dout_rx<7>/SRINV_3763 ;
  wire \dout_rx<7>/CLKINV_3762 ;
  wire \dout_rx<7>/CEINV_3761 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/DYMUX_4199 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLKINV_4196 ;
  wire \shiftin<7>/DXMUX_4316 ;
  wire \shiftin<7>/DYMUX_4307 ;
  wire \shiftin<7>/SRINV_4305 ;
  wire \shiftin<7>/CLKINV_4304 ;
  wire \shiftin<7>/CEINV_4303 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_4066 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_4057 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_4055 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_4054 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_4053 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_4038 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_4029 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_4027 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_4026 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_4025 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX_4186 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV_4185 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX_4179 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV_4178 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_4177 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_4176 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DXMUX_4090 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DYMUX_4083 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/BYINV_4082 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV_4081 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV_4080 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/DYMUX_4234 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLKINV_4231 ;
  wire \shiftin<3>/DXMUX_4260 ;
  wire \shiftin<3>/DYMUX_4251 ;
  wire \shiftin<3>/SRINV_4249 ;
  wire \shiftin<3>/CLKINV_4248 ;
  wire \shiftin<3>/CEINV_4247 ;
  wire dout_3_OBUF_4369;
  wire dout_2_OBUF_4361;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_3982 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_3973 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_3971 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_3970 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_3969 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_4010 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_4001 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_3999 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_3998 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_3997 ;
  wire dout_5_OBUF_4393;
  wire dout_4_OBUF_4385;
  wire \shiftin<1>/DXMUX_4138 ;
  wire \shiftin<1>/DYMUX_4129 ;
  wire \shiftin<1>/SRINV_4127 ;
  wire \shiftin<1>/CLKINV_4126 ;
  wire \shiftin<1>/CEINV_4125 ;
  wire \control<1>/DXMUX_4163 ;
  wire \control<1>/DYMUX_4155 ;
  wire \control<1>/SRINV_4153 ;
  wire \control<1>/CLKINV_4152 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/DYMUX_4427 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLKINV_4424 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX_4221 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV_4220 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX_4214 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV_4213 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_4212 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_4211 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DXMUX_4112 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DYMUX_4105 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/BYINV_4104 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV_4103 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV_4102 ;
  wire \shiftin<5>/DXMUX_4288 ;
  wire \shiftin<5>/DYMUX_4279 ;
  wire \shiftin<5>/SRINV_4277 ;
  wire \shiftin<5>/CLKINV_4276 ;
  wire \shiftin<5>/CEINV_4275 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/DYMUX_4441 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLKINV_4438 ;
  wire dout_7_OBUF_4469;
  wire dout_6_OBUF_4461;
  wire \txfifo/N01 ;
  wire wr_tx_pack_1;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DXMUX_4500 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DYMUX_4495 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV_4493 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ;
  wire rd_rx_pack_1;
  wire \pstate_FSM_FFd2-In3_4537 ;
  wire shiftout_not0001;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_4513 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DXMUX_4484 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DYMUX_4479 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV_4477 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_4525 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/DYMUX_4609 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/BYINV_4608 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/CLKINV_4606 ;
  wire \tx_full/DYMUX_4583 ;
  wire \tx_full/CLKINV_4580 ;
  wire \tx_empty/DYMUX_4635 ;
  wire \tx_empty/CLKINV_4632 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/DYMUX_4596 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/BYINV_4595 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/CLKINV_4593 ;
  wire \rx_empty/DYMUX_4622 ;
  wire \rx_empty/CLKINV_4619 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FFX/SET ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FFX/SET ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SET ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SET ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SET ;
  wire \pstate_FSM_FFd1/FFY/RSTAND_2581 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SET ;
  wire \spi/FFY/RSTAND_2736 ;
  wire \spiclk<2>/FFY/RSTAND_2818 ;
  wire \spiclk<6>/FFY/RSTAND_3083 ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SET ;
  wire \pstate_FSM_FFd2/FFX/RSTAND_3196 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SET ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/FFY/SET ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/FFY/SET ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/FFY/RSTAND_4432 ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/FFY/RSTAND_4446 ;
  wire \tx_empty/FFY/SET ;
  wire \tx_full/FFY/SET ;
  wire \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/FFY/SET ;
  wire \rx_empty/FFY/SET ;
  wire \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/FFY/SET ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24> ;
  wire \NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24> ;
  wire \NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> ;
  wire VCC;
  wire GND;
  wire [7 : 0] shiftout;
  wire [3 : 0] \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 ;
  wire [3 : 0] \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 ;
  wire [7 : 0] shiftin;
  wire [7 : 0] \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem ;
  wire [3 : 0] \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 ;
  wire [3 : 0] \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 ;
  wire [7 : 0] \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem ;
  wire [7 : 0] dout_rx;
  wire [1 : 0] control;
  wire [6 : 0] spiclk;
  wire [3 : 3] Madd_spiclk_addsub0000_cy;
  wire [3 : 0] \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count ;
  wire [3 : 0] \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count ;
  wire [1 : 1] \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg ;
  wire [3 : 0] \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count ;
  wire [1 : 1] \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg ;
  wire [3 : 0] \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count ;
  wire [3 : 0] counter;
  wire [7 : 0] txout;
  wire [6 : 0] spiclk_mux0000;
  wire [3 : 1] \rxfifo/Result ;
  wire [7 : 0] shiftout_mux0000;
  wire [3 : 1] \txfifo/Result ;
  initial $sdf_annotate("netgen/par/spi_bonus_timesim.sdf");
  X_IPAD #(
    .LOC ( "PAD49" ))
  \din<4>/PAD  (
    .PAD(din[4])
  );
  X_BUF #(
    .LOC ( "PAD49" ))
  din_4_IBUF (
    .I(din[4]),
    .O(\din<4>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD36" ))
  \rden/PAD  (
    .PAD(rden)
  );
  X_BUF #(
    .LOC ( "IPAD36" ))
  rden_IBUF (
    .I(rden),
    .O(\rden/INBUF )
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
    .LOC ( "PAD48" ))
  \din<5>/PAD  (
    .PAD(din[5])
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  din_5_IBUF (
    .I(din[5]),
    .O(\din<5>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD52" ))
  \din<2>/PAD  (
    .PAD(din[2])
  );
  X_BUF #(
    .LOC ( "PAD52" ))
  din_2_IBUF (
    .I(din[2]),
    .O(\din<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD51" ))
  \din<3>/PAD  (
    .PAD(din[3])
  );
  X_BUF #(
    .LOC ( "PAD51" ))
  din_3_IBUF (
    .I(din[3]),
    .O(\din<3>/INBUF )
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
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram  (
    .CLKA(clk_BUFGP),
    .CLKB(clk_BUFGP),
    .ENA(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .ENB(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 ),
    .SSRA(1'b0),
    .SSRB(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .WEA(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .WEB(1'b0),
    .ADDRA({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3> 
, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> 
, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> 
, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> 
}),
    .ADDRB({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> 
, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> 
, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> 
, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> 
}),
    .DIA({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> 
, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17> 
, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> 
, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> 
, 
\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> 
}),
    .DIPA({1'b0, 1'b0, 1'b0, 1'b0}),
    .DIB({
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB31 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB30 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB29 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB28 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB27 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB26 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB25 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB24 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB23 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB22 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB21 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB20 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB19 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB18 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB17 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB16 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB15 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB14 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB13 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB12 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB11 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB10 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB9 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB8 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB7 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB6 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB5 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB4 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB3 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB2 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB1 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB0 
}),
    .DIPB({
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB3 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB2 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB1 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB0 
}),
    .DOA({
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA31 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA30 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA29 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA28 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA27 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA26 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA25 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA24 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA23 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA22 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA21 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA20 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA19 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA18 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA17 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA16 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA15 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA14 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA13 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA12 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA11 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA10 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA9 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA8 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA7 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA6 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA5 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA4 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA3 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA2 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA1 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA0 
}),
    .DOPA({
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA3 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA2 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA1 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA0 
}),
    .DOB({
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB31 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB30 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB29 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB28 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB27 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB26 
, \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [7], 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [6], 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB23 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB22 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB21 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB20 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB19 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB18 
, \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [5], 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [4], 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB15 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB14 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB13 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB12 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB11 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB10 
, \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [3], 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [2], 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB7 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB6 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB5 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB4 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB3 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB2 
, \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [1], 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [0]}),
    .DOPB({
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB3 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB2 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB1 
, 
\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB0 
})
  );
  X_MUX2 #(
    .LOC ( "SLICE_X29Y28" ))
  \dout_1_OBUF/F5MUX  (
    .IA(Mmux_dout21_1861),
    .IB(Mmux_dout2),
    .SEL(\dout_1_OBUF/BXINV_1863 ),
    .O(\dout_1_OBUF/F5MUX_1870 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y28" ))
  \dout_1_OBUF/BXINV  (
    .I(rden_IBUF_1113),
    .O(\dout_1_OBUF/BXINV_1863 )
  );
  X_OPAD #(
    .LOC ( "PAD64" ))
  \sclk/PAD  (
    .PAD(sclk)
  );
  X_OBUF #(
    .LOC ( "PAD64" ))
  sclk_OBUF (
    .I(\sclk/O ),
    .O(sclk)
  );
  X_IPAD #(
    .LOC ( "PAD40" ))
  \reset/PAD  (
    .PAD(reset)
  );
  X_BUF #(
    .LOC ( "PAD40" ))
  reset_IBUF (
    .I(reset),
    .O(\reset/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD42" ))
  \addr<0>/PAD  (
    .PAD(addr[0])
  );
  X_BUF #(
    .LOC ( "PAD42" ))
  addr_0_IBUF (
    .I(addr[0]),
    .O(\addr<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD39" ))
  \miso/PAD  (
    .PAD(miso)
  );
  X_BUF #(
    .LOC ( "PAD39" ))
  miso_IBUF (
    .I(miso),
    .O(\miso/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD53" ))
  \din<1>/PAD  (
    .PAD(din[1])
  );
  X_BUF #(
    .LOC ( "PAD53" ))
  din_1_IBUF (
    .I(din[1]),
    .O(\din<1>/INBUF )
  );
  X_LUT4 #(
    .INIT ( 16'h0CA0 ),
    .LOC ( "SLICE_X29Y28" ))
  Mmux_dout21 (
    .ADR0(control[1]),
    .ADR1(dout_rx[1]),
    .ADR2(addr_1_IBUF_1131),
    .ADR3(addr_0_IBUF_1129),
    .O(Mmux_dout2)
  );
  X_BUF #(
    .LOC ( "PAD53" ))
  \din<1>/IFF/IMUX  (
    .I(\din<1>/INBUF ),
    .O(din_1_IBUF_1132)
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
    .LOC ( "RAMB16_X0Y1" ),
    .SETUP_ALL ( 227 ),
    .SETUP_READ_FIRST ( 227 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram  (
    .CLKA(clk_BUFGP),
    .CLKB(clk_BUFGP),
    .ENA(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .ENB(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 ),
    .SSRA(1'b0),
    .SSRB(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .WEA(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .WEB(1'b0),
    .ADDRA({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3> 
, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> 
, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> 
, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> 
}),
    .ADDRB({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> 
, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> 
, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> 
, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> 
}),
    .DIA({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> 
, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17> 
, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> 
, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> 
, 
\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> 
}),
    .DIPA({1'b0, 1'b0, 1'b0, 1'b0}),
    .DIB({
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB31 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB30 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB29 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB28 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB27 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB26 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB25 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB24 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB23 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB22 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB21 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB20 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB19 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB18 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB17 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB16 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB15 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB14 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB13 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB12 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB11 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB10 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB9 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB8 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB7 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB6 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB5 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB4 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB3 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB2 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB1 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB0 
}),
    .DIPB({
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB3 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB2 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB1 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB0 
}),
    .DOA({
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA31 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA30 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA29 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA28 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA27 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA26 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA25 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA24 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA23 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA22 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA21 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA20 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA19 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA18 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA17 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA16 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA15 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA14 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA13 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA12 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA11 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA10 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA9 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA8 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA7 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA6 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA5 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA4 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA3 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA2 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA1 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA0 
}),
    .DOPA({
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA3 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA2 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA1 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA0 
}),
    .DOB({
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB31 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB30 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB29 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB28 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB27 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB26 
, \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [7], 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [6], 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB23 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB22 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB21 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB20 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB19 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB18 
, \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [5], 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [4], 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB15 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB14 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB13 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB12 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB11 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB10 
, \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [3], 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [2], 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB7 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB6 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB5 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB4 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB3 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB2 
, \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [1], 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [0]}),
    .DOPB({
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB3 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB2 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB1 
, 
\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB0 
})
  );
  X_OPAD #(
    .LOC ( "PAD35" ))
  \dout<1>/PAD  (
    .PAD(dout[1])
  );
  X_OBUF #(
    .LOC ( "PAD35" ))
  dout_1_OBUF (
    .I(\dout<1>/O ),
    .O(dout[1])
  );
  X_OPAD #(
    .LOC ( "PAD37" ))
  \dout<0>/PAD  (
    .PAD(dout[0])
  );
  X_OBUF #(
    .LOC ( "PAD37" ))
  dout_0_OBUF (
    .I(\dout<0>/O ),
    .O(dout[0])
  );
  X_LUT4 #(
    .INIT ( 16'h0C00 ),
    .LOC ( "SLICE_X29Y28" ))
  Mmux_dout22 (
    .ADR0(VCC),
    .ADR1(dout_rx[1]),
    .ADR2(addr_1_IBUF_1131),
    .ADR3(addr_0_IBUF_1129),
    .O(Mmux_dout21_1861)
  );
  X_OPAD #(
    .LOC ( "PAD30" ))
  \dout<5>/PAD  (
    .PAD(dout[5])
  );
  X_OBUF #(
    .LOC ( "PAD30" ))
  dout_5_OBUF (
    .I(\dout<5>/O ),
    .O(dout[5])
  );
  X_OPAD #(
    .LOC ( "PAD44" ))
  \mosi/PAD  (
    .PAD(mosi)
  );
  X_OBUF #(
    .LOC ( "PAD44" ))
  mosi_OBUF (
    .I(\mosi/O ),
    .O(mosi)
  );
  X_OPAD #(
    .LOC ( "PAD31" ))
  \dout<4>/PAD  (
    .PAD(dout[4])
  );
  X_OBUF #(
    .LOC ( "PAD31" ))
  dout_4_OBUF (
    .I(\dout<4>/O ),
    .O(dout[4])
  );
  X_OPAD #(
    .LOC ( "PAD33" ))
  \dout<3>/PAD  (
    .PAD(dout[3])
  );
  X_OBUF #(
    .LOC ( "PAD33" ))
  dout_3_OBUF (
    .I(\dout<3>/O ),
    .O(dout[3])
  );
  X_OPAD #(
    .LOC ( "PAD29" ))
  \dout<6>/PAD  (
    .PAD(dout[6])
  );
  X_OBUF #(
    .LOC ( "PAD29" ))
  dout_6_OBUF (
    .I(\dout<6>/O ),
    .O(dout[6])
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
    .LOC ( "PAD38" ))
  \addr<1>/IFF/IMUX  (
    .I(\addr<1>/INBUF ),
    .O(addr_1_IBUF_1131)
  );
  X_IPAD #(
    .LOC ( "PAD38" ))
  \addr<1>/PAD  (
    .PAD(addr[1])
  );
  X_BUF #(
    .LOC ( "PAD38" ))
  addr_1_IBUF (
    .I(addr[1]),
    .O(\addr<1>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD34" ))
  \dout<2>/PAD  (
    .PAD(dout[2])
  );
  X_OBUF #(
    .LOC ( "PAD34" ))
  dout_2_OBUF (
    .I(\dout<2>/O ),
    .O(dout[2])
  );
  X_IPAD #(
    .LOC ( "PAD54" ))
  \din<0>/PAD  (
    .PAD(din[0])
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  din_0_IBUF (
    .I(din[0]),
    .O(\din<0>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD28" ))
  \dout<7>/PAD  (
    .PAD(dout[7])
  );
  X_OBUF #(
    .LOC ( "PAD28" ))
  dout_7_OBUF (
    .I(\dout<7>/O ),
    .O(dout[7])
  );
  X_IPAD #(
    .LOC ( "PAD45" ))
  \din<7>/PAD  (
    .PAD(din[7])
  );
  X_BUF #(
    .LOC ( "PAD45" ))
  din_7_IBUF (
    .I(din[7]),
    .O(\din<7>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD47" ))
  \din<6>/PAD  (
    .PAD(din[6])
  );
  X_BUF #(
    .LOC ( "PAD47" ))
  din_6_IBUF (
    .I(din[6]),
    .O(\din<6>/INBUF )
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
  X_BUF #(
    .LOC ( "SLICE_X15Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_2248 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/YUSED  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O_pack_2 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_2232 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y11" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_2117 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_2118 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y11" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_2117 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y11" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/YUSED  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O_pack_1 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y11" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_2102 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y12" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_2282 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y12" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/YUSED  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O_pack_2 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y12" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_2266 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX  (
    .I(\rxfifo/Result<3>1 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_2326 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX  (
    .I(\rxfifo/Result<2>1 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_2311 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_2302 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_2301 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_2300 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y16" ))
  \spiclk<3>/FFX/RSTOR  (
    .I(reset_IBUF_1128),
    .O(\spiclk<3>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y16" ),
    .INIT ( 1'b0 ))
  spiclk_3 (
    .I(\spiclk<3>/DXMUX_2023 ),
    .CE(\spiclk<3>/CEINV_2006 ),
    .CLK(\spiclk<3>/CLKINV_2007 ),
    .SET(GND),
    .RST(\spiclk<3>/FFX/RST ),
    .O(spiclk[3])
  );
  X_LUT4 #(
    .INIT ( 16'hA600 ),
    .LOC ( "SLICE_X2Y16" ))
  \spiclk_mux0000<3>  (
    .ADR0(spiclk[3]),
    .ADR1(spiclk[2]),
    .ADR2(N111_0),
    .ADR3(N11),
    .O(spiclk_mux0000[3])
  );
  X_LUT4 #(
    .INIT ( 16'h0F01 ),
    .LOC ( "SLICE_X2Y16" ))
  \spiclk_mux0000<5>11  (
    .ADR0(pstate_FSM_FFd1_1207),
    .ADR1(tx_empty),
    .ADR2(spiclk_cmp_eq0000_0),
    .ADR3(pstate_FSM_FFd2_1208),
    .O(N11_pack_2)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y16" ))
  \spiclk<3>/DXMUX  (
    .I(spiclk_mux0000[3]),
    .O(\spiclk<3>/DXMUX_2023 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y16" ))
  \spiclk<3>/YUSED  (
    .I(N11_pack_2),
    .O(N11)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y16" ))
  \spiclk<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\spiclk<3>/CLKINV_2007 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y16" ))
  \spiclk<3>/CEINV  (
    .I(spiclk_not0002_0),
    .O(\spiclk<3>/CEINV_2006 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_2083 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/YUSED  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O_pack_1 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_2067 )
  );
  X_LUT4 #(
    .INIT ( 16'h9000 ),
    .LOC ( "SLICE_X12Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR2(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_0 ),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_0 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0AC0 ),
    .LOC ( "SLICE_X29Y29" ))
  Mmux_dout11 (
    .ADR0(dout_rx[0]),
    .ADR1(control[0]),
    .ADR2(addr_1_IBUF_1131),
    .ADR3(addr_0_IBUF_1129),
    .O(Mmux_dout1)
  );
  X_LUT4 #(
    .INIT ( 16'h0A00 ),
    .LOC ( "SLICE_X29Y29" ))
  Mmux_dout12 (
    .ADR0(dout_rx[0]),
    .ADR1(VCC),
    .ADR2(addr_1_IBUF_1131),
    .ADR3(addr_0_IBUF_1129),
    .O(Mmux_dout11_1886)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X29Y29" ))
  \dout_0_OBUF/F5MUX  (
    .IA(Mmux_dout11_1886),
    .IB(Mmux_dout1),
    .SEL(\dout_0_OBUF/BXINV_1888 ),
    .O(\dout_0_OBUF/F5MUX_1895 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y29" ))
  \dout_0_OBUF/BXINV  (
    .I(rden_IBUF_1113),
    .O(\dout_0_OBUF/BXINV_1888 )
  );
  X_LUT4 #(
    .INIT ( 16'hFE00 ),
    .LOC ( "SLICE_X3Y15" ))
  spiclk_and00007 (
    .ADR0(spiclk[1]),
    .ADR1(spiclk[0]),
    .ADR2(spiclk[2]),
    .ADR3(\spiclk_and00004/O ),
    .O(spiclk_and00007_1918)
  );
  X_LUT4 #(
    .INIT ( 16'hF000 ),
    .LOC ( "SLICE_X3Y15" ))
  spiclk_and00004 (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(spiclk[3]),
    .ADR3(spiclk[4]),
    .O(\spiclk_and00004/O_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y15" ))
  \spiclk_and00007/XUSED  (
    .I(spiclk_and00007_1918),
    .O(spiclk_and00007_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y15" ))
  \spiclk_and00007/YUSED  (
    .I(\spiclk_and00004/O_pack_1 ),
    .O(\spiclk_and00004/O )
  );
  X_LUT4 #(
    .INIT ( 16'hFF03 ),
    .LOC ( "SLICE_X12Y14" ))
  enspi1 (
    .ADR0(VCC),
    .ADR1(pstate_FSM_FFd1_1207),
    .ADR2(tx_empty),
    .ADR3(pstate_FSM_FFd2_1208),
    .O(enspi_pack_1)
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y14" ))
  \N21/XUSED  (
    .I(N21),
    .O(N21_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y14" ))
  \N21/YUSED  (
    .I(enspi_pack_1),
    .O(enspi)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y18" ))
  \spiclk_cmp_eq0000/XUSED  (
    .I(spiclk_cmp_eq0000_2145),
    .O(spiclk_cmp_eq0000_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y18" ))
  \spiclk_cmp_eq0000/YUSED  (
    .I(\spiclk_cmp_eq0000_SW0/O_pack_1 ),
    .O(\spiclk_cmp_eq0000_SW0/O )
  );
  X_LUT4 #(
    .INIT ( 16'hCC00 ),
    .LOC ( "SLICE_X2Y12" ))
  \spiclk_mux0000<0>_SW0  (
    .ADR0(VCC),
    .ADR1(spiclk[4]),
    .ADR2(VCC),
    .ADR3(Madd_spiclk_addsub0000_cy[3]),
    .O(N13)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X2Y12" ))
  \Madd_spiclk_addsub0000_cy<3>11  (
    .ADR0(spiclk[1]),
    .ADR1(spiclk[2]),
    .ADR2(spiclk[3]),
    .ADR3(spiclk[0]),
    .O(\Madd_spiclk_addsub0000_cy<3>_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y12" ))
  \N13/XUSED  (
    .I(N13),
    .O(N13_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y12" ))
  \N13/YUSED  (
    .I(\Madd_spiclk_addsub0000_cy<3>_pack_1 ),
    .O(Madd_spiclk_addsub0000_cy[3])
  );
  X_LUT4 #(
    .INIT ( 16'h0111 ),
    .LOC ( "SLICE_X3Y18" ))
  spiclk_cmp_le00001 (
    .ADR0(spiclk[6]),
    .ADR1(spiclk[5]),
    .ADR2(\spiclk_cmp_le00001_SW0/O ),
    .ADR3(spiclk[4]),
    .O(spiclk_cmp_le0000)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y18" ))
  \spiclk_cmp_le0000/XUSED  (
    .I(spiclk_cmp_le0000),
    .O(spiclk_cmp_le0000_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y18" ))
  \spiclk_cmp_le0000/YUSED  (
    .I(\spiclk_cmp_le00001_SW0/O_pack_1 ),
    .O(\spiclk_cmp_le00001_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y15" ))
  \spi_not0001/YUSED  (
    .I(\spiclk_and000048_SW1/O_pack_1 ),
    .O(\spiclk_and000048_SW1/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y7" ))
  \txfifo/N8/XUSED  (
    .I(\txfifo/N8 ),
    .O(\txfifo/N8_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y7" ))
  \txfifo/N8/YUSED  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O_pack_1 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O )
  );
  X_LUT4 #(
    .INIT ( 16'h1302 ),
    .LOC ( "SLICE_X2Y14" ))
  spiclk_and000048 (
    .ADR0(spiclk[5]),
    .ADR1(spiclk[6]),
    .ADR2(N19_0),
    .ADR3(spiclk_and00007_0),
    .O(spiclk_and0000_pack_1)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y14" ))
  \spiclk_not0002/XUSED  (
    .I(spiclk_not0002),
    .O(spiclk_not0002_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y14" ))
  \spiclk_not0002/YUSED  (
    .I(spiclk_and0000_pack_1),
    .O(spiclk_and0000)
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y31" ))
  \rxfifo/N8/XUSED  (
    .I(\rxfifo/N8 ),
    .O(\rxfifo/N8_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y31" ))
  \rxfifo/N8/YUSED  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O_pack_1 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O )
  );
  X_LUT4 #(
    .INIT ( 16'h02FF ),
    .LOC ( "SLICE_X12Y14" ))
  spiclk_and000048_SW0 (
    .ADR0(spiclk[5]),
    .ADR1(spiclk[6]),
    .ADR2(N19_0),
    .ADR3(enspi),
    .O(N21)
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX  (
    .I(\rxfifo/Result [3]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_2372 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX  (
    .I(\rxfifo/Result [2]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_2357 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2348 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2347 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2346 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y16" ))
  \spiclk<2>/XUSED  (
    .I(N111),
    .O(N111_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y16" ))
  \spiclk<2>/DYMUX  (
    .I(spiclk_mux0000[4]),
    .O(\spiclk<2>/DYMUX_2812 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y16" ))
  \spiclk<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\spiclk<2>/CLKINV_2803 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y16" ))
  \spiclk<2>/CEINV  (
    .I(spiclk_not0002_0),
    .O(\spiclk<2>/CEINV_2802 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_2507 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX_2492 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_2484 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_2483 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y17" ))
  \spiclk<1>/DXMUX  (
    .I(spiclk_mux0000[5]),
    .O(\spiclk<1>/DXMUX_2699 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y17" ))
  \spiclk<1>/DYMUX  (
    .I(spiclk_mux0000[6]),
    .O(\spiclk<1>/DYMUX_2684 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y17" ))
  \spiclk<1>/SRINV  (
    .I(reset_IBUF_1128),
    .O(\spiclk<1>/SRINV_2675 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y17" ))
  \spiclk<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\spiclk<1>/CLKINV_2674 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y17" ))
  \spiclk<1>/CEINV  (
    .I(spiclk_not0002_0),
    .O(\spiclk<1>/CEINV_2673 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y12" ))
  \pstate_FSM_FFd1/XUSED  (
    .I(sin),
    .O(sin_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y12" ))
  \pstate_FSM_FFd1/DYMUX  (
    .I(\pstate_FSM_FFd1-In ),
    .O(\pstate_FSM_FFd1/DYMUX_2576 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y12" ))
  \pstate_FSM_FFd1/CLKINV  (
    .I(clk_BUFGP),
    .O(\pstate_FSM_FFd1/CLKINV_2565 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y17" ))
  \counter<1>/DXMUX  (
    .I(Mcount_counter1),
    .O(\counter<1>/DXMUX_2867 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y17" ))
  \counter<1>/DYMUX  (
    .I(Mcount_counter),
    .O(\counter<1>/DYMUX_2851 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y17" ))
  \counter<1>/SRINV  (
    .I(reset_IBUF_1128),
    .O(\counter<1>/SRINV_2841 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y17" ))
  \counter<1>/CLKINV  (
    .I(spi_1120),
    .O(\counter<1>/CLKINV_2840 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y17" ))
  \counter<1>/CEINV  (
    .I(counter_not0001_0),
    .O(\counter<1>/CEINV_2839 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y4" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX  (
    .I(\txfifo/Result<3>1 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_2418 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y4" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX  (
    .I(\txfifo/Result<2>1 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_2403 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y4" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_2394 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y4" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_2393 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y4" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_2392 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y16" ))
  \shiftout<1>/DXMUX  (
    .I(shiftout_mux0000[1]),
    .O(\shiftout<1>/DXMUX_2783 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y16" ))
  \shiftout<1>/DYMUX  (
    .I(shiftout_mux0000[0]),
    .O(\shiftout<1>/DYMUX_2767 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y16" ))
  \shiftout<1>/SRINV  (
    .I(reset_IBUF_1128),
    .O(\shiftout<1>/SRINV_2759 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y16" ))
  \shiftout<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shiftout<1>/CLKINV_2758 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y16" ))
  \shiftout<1>/CEINV  (
    .I(shiftout_not0001_0),
    .O(\shiftout<1>/CEINV_2757 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y2" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX  (
    .I(\txfifo/Result [3]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_2464 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y2" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX  (
    .I(\txfifo/Result [2]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_2449 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y2" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2440 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y2" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2439 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y2" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2438 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y17" ))
  \spi/XUSED  (
    .I(counter_not0001),
    .O(counter_not0001_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y17" ))
  \spi/DYMUX  (
    .I(spi_mux0000),
    .O(\spi/DYMUX_2730 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y17" ))
  \spi/CLKINV  (
    .I(clk_BUFGP),
    .O(\spi/CLKINV_2721 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y17" ))
  \spi/CEINV  (
    .I(spi_not0001),
    .O(\spi/CEINV_2720 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y14" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_2549 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y14" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX_2534 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y14" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_2526 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y14" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_2525 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y15" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/XUSED  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y15" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_2646 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX_2647 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y15" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or0000 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_2646 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y15" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_2638 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/XUSED  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_2611 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX_2612 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or0000 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_2611 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_2603 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y16" ))
  \shiftout<3>/DXMUX  (
    .I(shiftout_mux0000[3]),
    .O(\shiftout<3>/DXMUX_2913 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y16" ))
  \shiftout<3>/DYMUX  (
    .I(shiftout_mux0000[2]),
    .O(\shiftout<3>/DYMUX_2897 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y16" ))
  \shiftout<3>/SRINV  (
    .I(reset_IBUF_1128),
    .O(\shiftout<3>/SRINV_2888 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y16" ))
  \shiftout<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shiftout<3>/CLKINV_2887 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y16" ))
  \shiftout<3>/CEINV  (
    .I(shiftout_not0001_0),
    .O(\shiftout<3>/CEINV_2886 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y15" ))
  \shiftout<7>/DXMUX  (
    .I(shiftout_mux0000[7]),
    .O(\shiftout<7>/DXMUX_3123 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y15" ))
  \shiftout<7>/DYMUX  (
    .I(shiftout_mux0000[6]),
    .O(\shiftout<7>/DYMUX_3107 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y15" ))
  \shiftout<7>/SRINV  (
    .I(reset_IBUF_1128),
    .O(\shiftout<7>/SRINV_3098 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y15" ))
  \shiftout<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shiftout<7>/CLKINV_3097 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y15" ))
  \shiftout<7>/CEINV  (
    .I(shiftout_not0001_0),
    .O(\shiftout<7>/CEINV_3096 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y13" ))
  \pstate_FSM_FFd2/DXMUX  (
    .I(\pstate_FSM_FFd2-In ),
    .O(\pstate_FSM_FFd2/DXMUX_3191 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y13" ))
  \pstate_FSM_FFd2/YUSED  (
    .I(\pstate_FSM_FFd2-In10_pack_2 ),
    .O(\pstate_FSM_FFd2-In10_1302 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y13" ))
  \pstate_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\pstate_FSM_FFd2/CLKINV_3175 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en/XUSED  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en/YUSED  (
    .I(\pstate_FSM_FFd2-In34_pack_1 ),
    .O(\pstate_FSM_FFd2-In34_1269 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y16" ))
  \counter<3>/DXMUX  (
    .I(Mcount_counter3),
    .O(\counter<3>/DXMUX_3005 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y16" ))
  \counter<3>/DYMUX  (
    .I(Mcount_counter2),
    .O(\counter<3>/DYMUX_2990 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y16" ))
  \counter<3>/SRINV  (
    .I(reset_IBUF_1128),
    .O(\counter<3>/SRINV_2982 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y16" ))
  \counter<3>/CLKINV  (
    .I(spi_1120),
    .O(\counter<3>/CLKINV_2981 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y16" ))
  \counter<3>/CEINV  (
    .I(counter_not0001_0),
    .O(\counter<3>/CEINV_2980 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y15" ))
  \shiftout<5>/DXMUX  (
    .I(shiftout_mux0000[5]),
    .O(\shiftout<5>/DXMUX_3051 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y15" ))
  \shiftout<5>/DYMUX  (
    .I(shiftout_mux0000[4]),
    .O(\shiftout<5>/DYMUX_3035 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y15" ))
  \shiftout<5>/SRINV  (
    .I(reset_IBUF_1128),
    .O(\shiftout<5>/SRINV_3026 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y15" ))
  \shiftout<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shiftout<5>/CLKINV_3025 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y15" ))
  \shiftout<5>/CEINV  (
    .I(shiftout_not0001_0),
    .O(\shiftout<5>/CEINV_3024 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y42" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV_3139 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX_3140 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y42" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV  (
    .I(1'b0),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV_3139 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y42" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV_3137 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y42" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1298 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV_3136 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1300 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX_3226 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1301 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX_3221 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_3219 )
  );
  X_INV #(
    .LOC ( "SLICE_X14Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX_3331 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/XUSED  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_3328 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX  (
    .I(\rxfifo/Result<1>1 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX_3315 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_3305 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_3304 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_3303 )
  );
  X_INV #(
    .LOC ( "SLICE_X28Y8" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX_3427 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y8" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/XUSED  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_3424 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y8" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX  (
    .I(\txfifo/Result<1>1 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX_3411 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y8" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_3401 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y8" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_3400 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y8" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_3399 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y43" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1298 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX_3210 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y43" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1299 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX_3205 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y43" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_3203 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y11" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV_3155 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX_3156 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y11" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV  (
    .I(1'b0),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV_3155 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y11" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV_3153 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y11" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1300 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV_3152 )
  );
  X_INV #(
    .LOC ( "SLICE_X14Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_3379 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/XUSED  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_3376 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX  (
    .I(\rxfifo/Result [1]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_3361 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_3351 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_3350 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_3349 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y17" ))
  \N19/XUSED  (
    .I(N19),
    .O(N19_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y14" ))
  \spiclk<6>/DYMUX  (
    .I(spiclk_mux0000[0]),
    .O(\spiclk<6>/DYMUX_3077 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y14" ))
  \spiclk<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\spiclk<6>/CLKINV_3068 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y14" ))
  \spiclk<6>/CEINV  (
    .I(spiclk_not0002_0),
    .O(\spiclk<6>/CEINV_3067 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y15" ))
  \spiclk<5>/DXMUX  (
    .I(spiclk_mux0000[1]),
    .O(\spiclk<5>/DXMUX_2959 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y15" ))
  \spiclk<5>/DYMUX  (
    .I(spiclk_mux0000[2]),
    .O(\spiclk<5>/DYMUX_2944 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y15" ))
  \spiclk<5>/SRINV  (
    .I(reset_IBUF_1128),
    .O(\spiclk<5>/SRINV_2936 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y15" ))
  \spiclk<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\spiclk<5>/CLKINV_2935 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y15" ))
  \spiclk<5>/CEINV  (
    .I(spiclk_not0002_0),
    .O(\spiclk<5>/CEINV_2934 )
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y14" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_0  (
    .I(\txout<1>/DYMUX_3621 ),
    .CE(\txout<1>/CEINV_3617 ),
    .CLK(\txout<1>/CLKINV_3618 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\txout<1>/SRINV_3619 ),
    .O(txout[0])
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y14" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_1  (
    .I(\txout<1>/DXMUX_3628 ),
    .CE(\txout<1>/CEINV_3617 ),
    .CLK(\txout<1>/CLKINV_3618 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\txout<1>/SRINV_3619 ),
    .O(txout[1])
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y14" ))
  \txout<1>/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [1]),
    .O(\txout<1>/DXMUX_3628 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y14" ))
  \txout<1>/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [0]),
    .O(\txout<1>/DYMUX_3621 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y14" ))
  \txout<1>/SRINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\txout<1>/SRINV_3619 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y14" ))
  \txout<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\txout<1>/CLKINV_3618 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y14" ))
  \txout<1>/CEINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\txout<1>/CEINV_3617 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X14Y34" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/DYMUX_3563 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CEINV_3559 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLKINV_3560 ),
    .SET(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/SRINV_3561 ),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_1311 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y34" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/BYINV_3562 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/DYMUX_3563 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y34" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/BYINV  (
    .I(1'b0),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/BYINV_3562 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y34" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/SRINV  (
    .I(reset_IBUF_1128),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/SRINV_3561 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y34" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLKINV_3560 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y34" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CEINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_1310 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CEINV_3559 )
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y14" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_6  (
    .I(\txout<7>/DYMUX_3789 ),
    .CE(\txout<7>/CEINV_3785 ),
    .CLK(\txout<7>/CLKINV_3786 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\txout<7>/SRINV_3787 ),
    .O(txout[6])
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y14" ))
  \txout<7>/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [7]),
    .O(\txout<7>/DXMUX_3796 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y14" ))
  \txout<7>/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [6]),
    .O(\txout<7>/DYMUX_3789 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y14" ))
  \txout<7>/SRINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\txout<7>/SRINV_3787 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y14" ))
  \txout<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\txout<7>/CLKINV_3786 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y14" ))
  \txout<7>/CEINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\txout<7>/CEINV_3785 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/FFX/RSTOR  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3863 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y32" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_3874 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3861 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3862 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/FFX/RST ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_3874 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_3865 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3863 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3862 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3861 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y32" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_0  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_3865 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3861 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3862 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3863 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y6" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_3926 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y6" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_3917 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y6" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3915 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y6" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3914 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y6" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3913 )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y6" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_3917 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3913 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3914 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3915 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ),
    .LOC ( "SLICE_X28Y4" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW1  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\txfifo/N6 )
  );
  X_LUT4 #(
    .INIT ( 16'h8241 ),
    .LOC ( "SLICE_X28Y4" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .ADR2(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_3551 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y4" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67/XUSED  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_3551 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y4" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67/YUSED  (
    .I(\txfifo/N6 ),
    .O(\txfifo/N6_0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X24Y30" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_5  (
    .I(\dout_rx<5>/DXMUX_3724 ),
    .CE(\dout_rx<5>/CEINV_3713 ),
    .CLK(\dout_rx<5>/CLKINV_3714 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_rx<5>/SRINV_3715 ),
    .O(dout_rx[5])
  );
  X_SFF #(
    .LOC ( "SLICE_X24Y30" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_4  (
    .I(\dout_rx<5>/DYMUX_3717 ),
    .CE(\dout_rx<5>/CEINV_3713 ),
    .CLK(\dout_rx<5>/CLKINV_3714 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_rx<5>/SRINV_3715 ),
    .O(dout_rx[4])
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y30" ))
  \dout_rx<5>/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [5]),
    .O(\dout_rx<5>/DXMUX_3724 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y30" ))
  \dout_rx<5>/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [4]),
    .O(\dout_rx<5>/DYMUX_3717 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y30" ))
  \dout_rx<5>/SRINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\dout_rx<5>/SRINV_3715 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y30" ))
  \dout_rx<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\dout_rx<5>/CLKINV_3714 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y30" ))
  \dout_rx<5>/CEINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\dout_rx<5>/CEINV_3713 )
  );
  X_LUT4 #(
    .INIT ( 16'h0FF0 ),
    .LOC ( "SLICE_X13Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .O(\rxfifo/N6 )
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ),
    .LOC ( "SLICE_X13Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .ADR2(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_3527 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67/XUSED  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_3527 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67/YUSED  (
    .I(\rxfifo/N6 ),
    .O(\rxfifo/N6_0 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X26Y13" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/DYMUX_3579 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CEINV_3575 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLKINV_3576 ),
    .SET(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/SRINV_3577 ),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_1313 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y13" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/BYINV_3578 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/DYMUX_3579 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y13" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/BYINV  (
    .I(1'b0),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/BYINV_3578 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y13" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/SRINV  (
    .I(reset_IBUF_1128),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/SRINV_3577 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y13" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLKINV_3576 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y13" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CEINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_1312 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CEINV_3575 )
  );
  X_SFF #(
    .LOC ( "SLICE_X29Y14" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_3  (
    .I(\txout<3>/DXMUX_3700 ),
    .CE(\txout<3>/CEINV_3689 ),
    .CLK(\txout<3>/CLKINV_3690 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\txout<3>/SRINV_3691 ),
    .O(txout[3])
  );
  X_SFF #(
    .LOC ( "SLICE_X29Y14" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_2  (
    .I(\txout<3>/DYMUX_3693 ),
    .CE(\txout<3>/CEINV_3689 ),
    .CLK(\txout<3>/CLKINV_3690 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\txout<3>/SRINV_3691 ),
    .O(txout[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y14" ))
  \txout<3>/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [3]),
    .O(\txout<3>/DXMUX_3700 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y14" ))
  \txout<3>/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [2]),
    .O(\txout<3>/DYMUX_3693 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y14" ))
  \txout<3>/SRINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\txout<3>/SRINV_3691 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y14" ))
  \txout<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\txout<3>/CLKINV_3690 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y14" ))
  \txout<3>/CEINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\txout<3>/CEINV_3689 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/FFX/RSTOR  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3835 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y30" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_3846 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3833 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3834 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/FFX/RST ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_3846 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_3837 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3835 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3834 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3833 )
  );
  X_LUT4 #(
    .INIT ( 16'h0044 ),
    .LOC ( "SLICE_X15Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/ram_wr_en_i1  (
    .ADR0(pstate_FSM_FFd2_1208),
    .ADR1(pstate_FSM_FFd1_1207),
    .ADR2(VCC),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1218 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en/XUSED  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en/YUSED  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_3815 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_0 )
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X15Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5  (
    .ADR0(VCC),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1218 ),
    .ADR2(VCC),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_1320 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_3815 )
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y14" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_7  (
    .I(\txout<7>/DXMUX_3796 ),
    .CE(\txout<7>/CEINV_3785 ),
    .CLK(\txout<7>/CLKINV_3786 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\txout<7>/SRINV_3787 ),
    .O(txout[7])
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ),
    .LOC ( "SLICE_X28Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/ram_wr_en_i1  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1228 ),
    .ADR1(wren_IBUF_1109),
    .ADR2(addr_0_IBUF_1129),
    .ADR3(addr_1_IBUF_1131),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en )
  );
  X_LUT4 #(
    .INIT ( 16'h00AA ),
    .LOC ( "SLICE_X28Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1228 ),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_1321 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_3896 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en/XUSED  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en/YUSED  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_3896 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y6" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_3954 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y6" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_3945 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y6" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3943 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y6" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3942 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y6" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3941 )
  );
  X_SFF #(
    .LOC ( "SLICE_X25Y32" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_2  (
    .I(\dout_rx<3>/DYMUX_3669 ),
    .CE(\dout_rx<3>/CEINV_3665 ),
    .CLK(\dout_rx<3>/CLKINV_3666 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_rx<3>/SRINV_3667 ),
    .O(dout_rx[2])
  );
  X_SFF #(
    .LOC ( "SLICE_X25Y32" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_3  (
    .I(\dout_rx<3>/DXMUX_3676 ),
    .CE(\dout_rx<3>/CEINV_3665 ),
    .CLK(\dout_rx<3>/CLKINV_3666 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_rx<3>/SRINV_3667 ),
    .O(dout_rx[3])
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y32" ))
  \dout_rx<3>/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [3]),
    .O(\dout_rx<3>/DXMUX_3676 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y32" ))
  \dout_rx<3>/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [2]),
    .O(\dout_rx<3>/DYMUX_3669 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y32" ))
  \dout_rx<3>/SRINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\dout_rx<3>/SRINV_3667 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y32" ))
  \dout_rx<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\dout_rx<3>/CLKINV_3666 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y32" ))
  \dout_rx<3>/CEINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\dout_rx<3>/CEINV_3665 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y30" ))
  \rxfifo/N01/XUSED  (
    .I(\rxfifo/N01 ),
    .O(\rxfifo/N01_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y30" ))
  \rxfifo/N01/YUSED  (
    .I(wr_rx_pack_1),
    .O(wr_rx)
  );
  X_SFF #(
    .LOC ( "SLICE_X21Y14" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_4  (
    .I(\txout<5>/DYMUX_3741 ),
    .CE(\txout<5>/CEINV_3737 ),
    .CLK(\txout<5>/CLKINV_3738 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\txout<5>/SRINV_3739 ),
    .O(txout[4])
  );
  X_SFF #(
    .LOC ( "SLICE_X21Y14" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_5  (
    .I(\txout<5>/DXMUX_3748 ),
    .CE(\txout<5>/CEINV_3737 ),
    .CLK(\txout<5>/CLKINV_3738 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\txout<5>/SRINV_3739 ),
    .O(txout[5])
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y14" ))
  \txout<5>/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [5]),
    .O(\txout<5>/DXMUX_3748 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y14" ))
  \txout<5>/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [4]),
    .O(\txout<5>/DYMUX_3741 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y14" ))
  \txout<5>/SRINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\txout<5>/SRINV_3739 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y14" ))
  \txout<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\txout<5>/CLKINV_3738 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y14" ))
  \txout<5>/CEINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\txout<5>/CEINV_3737 )
  );
  X_INV #(
    .LOC ( "SLICE_X28Y7" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_3475 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y7" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/XUSED  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_3472 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y7" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX  (
    .I(\txfifo/Result [1]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_3457 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y7" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_3447 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y7" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_3446 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y7" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_3445 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y30" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_3837 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3833 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3834 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3835 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X25Y28" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_0  (
    .I(\dout_rx<1>/DYMUX_3597 ),
    .CE(\dout_rx<1>/CEINV_3593 ),
    .CLK(\dout_rx<1>/CLKINV_3594 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_rx<1>/SRINV_3595 ),
    .O(dout_rx[0])
  );
  X_SFF #(
    .LOC ( "SLICE_X25Y28" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_1  (
    .I(\dout_rx<1>/DXMUX_3604 ),
    .CE(\dout_rx<1>/CEINV_3593 ),
    .CLK(\dout_rx<1>/CLKINV_3594 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_rx<1>/SRINV_3595 ),
    .O(dout_rx[1])
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y28" ))
  \dout_rx<1>/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [1]),
    .O(\dout_rx<1>/DXMUX_3604 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y28" ))
  \dout_rx<1>/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [0]),
    .O(\dout_rx<1>/DYMUX_3597 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y28" ))
  \dout_rx<1>/SRINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\dout_rx<1>/SRINV_3595 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y28" ))
  \dout_rx<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\dout_rx<1>/CLKINV_3594 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y28" ))
  \dout_rx<1>/CEINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\dout_rx<1>/CEINV_3593 )
  );
  X_SFF #(
    .LOC ( "SLICE_X25Y33" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_7  (
    .I(\dout_rx<7>/DXMUX_3772 ),
    .CE(\dout_rx<7>/CEINV_3761 ),
    .CLK(\dout_rx<7>/CLKINV_3762 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_rx<7>/SRINV_3763 ),
    .O(dout_rx[7])
  );
  X_SFF #(
    .LOC ( "SLICE_X25Y33" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_6  (
    .I(\dout_rx<7>/DYMUX_3765 ),
    .CE(\dout_rx<7>/CEINV_3761 ),
    .CLK(\dout_rx<7>/CLKINV_3762 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\dout_rx<7>/SRINV_3763 ),
    .O(dout_rx[6])
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y33" ))
  \dout_rx<7>/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [7]),
    .O(\dout_rx<7>/DXMUX_3772 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y33" ))
  \dout_rx<7>/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [6]),
    .O(\dout_rx<7>/DYMUX_3765 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y33" ))
  \dout_rx<7>/SRINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\dout_rx<7>/SRINV_3763 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y33" ))
  \dout_rx<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\dout_rx<7>/CLKINV_3762 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y33" ))
  \dout_rx<7>/CEINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\dout_rx<7>/CEINV_3761 )
  );
  X_LUT4 #(
    .INIT ( 16'hDDCC ),
    .LOC ( "SLICE_X19Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en1  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1237 ),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .ADR2(VCC),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en/YUSED  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 )
  );
  X_LUT4 #(
    .INIT ( 16'hBBAA ),
    .LOC ( "SLICE_X17Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en1  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1243 ),
    .ADR2(VCC),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en/YUSED  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_1210 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/DYMUX_4199 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLKINV_4196 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y21" ))
  \shiftin<7>/DXMUX  (
    .I(shiftin[6]),
    .O(\shiftin<7>/DXMUX_4316 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y21" ))
  \shiftin<7>/DYMUX  (
    .I(shiftin[5]),
    .O(\shiftin<7>/DYMUX_4307 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y21" ))
  \shiftin<7>/SRINV  (
    .I(reset_IBUF_1128),
    .O(\shiftin<7>/SRINV_4305 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y21" ))
  \shiftin<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shiftin<7>/CLKINV_4304 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y21" ))
  \shiftin<7>/CEINV  (
    .I(sin_0),
    .O(\shiftin<7>/CEINV_4303 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y2" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_4066 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y2" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_4057 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y2" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_4055 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y2" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_4054 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y2" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_4053 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y5" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_4038 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y5" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_4029 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y5" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_4027 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y5" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_4026 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y5" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_4025 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV_4185 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX_4186 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV  (
    .I(1'b0),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV_4185 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV_4178 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX_4179 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV  (
    .I(1'b0),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV_4178 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_4177 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_4176 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_1322 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DXMUX_4090 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/BYINV_4082 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DYMUX_4083 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/BYINV  (
    .I(1'b0),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/BYINV_4082 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV  (
    .I(reset_IBUF_1128),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV_4081 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV_4080 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y12" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_1219 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/DYMUX_4234 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y12" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLKINV_4231 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y22" ))
  \shiftin<3>/DXMUX  (
    .I(shiftin[2]),
    .O(\shiftin<3>/DXMUX_4260 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y22" ))
  \shiftin<3>/DYMUX  (
    .I(shiftin[1]),
    .O(\shiftin<3>/DYMUX_4251 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y22" ))
  \shiftin<3>/SRINV  (
    .I(reset_IBUF_1128),
    .O(\shiftin<3>/SRINV_4249 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y22" ))
  \shiftin<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shiftin<3>/CLKINV_4248 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y22" ))
  \shiftin<3>/CEINV  (
    .I(sin_0),
    .O(\shiftin<3>/CEINV_4247 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_3982 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_3973 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_3971 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_3970 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_3969 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_4010 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_4001 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_3999 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_3998 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_3997 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y22" ))
  \shiftin<1>/DXMUX  (
    .I(shiftin[0]),
    .O(\shiftin<1>/DXMUX_4138 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y22" ))
  \shiftin<1>/DYMUX  (
    .I(\miso/INBUF ),
    .O(\shiftin<1>/DYMUX_4129 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y22" ))
  \shiftin<1>/SRINV  (
    .I(reset_IBUF_1128),
    .O(\shiftin<1>/SRINV_4127 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y22" ))
  \shiftin<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shiftin<1>/CLKINV_4126 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y22" ))
  \shiftin<1>/CEINV  (
    .I(sin_0),
    .O(\shiftin<1>/CEINV_4125 )
  );
  X_INV #(
    .LOC ( "SLICE_X28Y28" ))
  \control<1>/DXMUX  (
    .I(rx_empty),
    .O(\control<1>/DXMUX_4163 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y28" ))
  \control<1>/DYMUX  (
    .I(tx_full),
    .O(\control<1>/DYMUX_4155 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y28" ))
  \control<1>/SRINV  (
    .I(reset_IBUF_1128),
    .O(\control<1>/SRINV_4153 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y28" ))
  \control<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\control<1>/CLKINV_4152 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_1326 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/DYMUX_4427 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLKINV_4424 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y15" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV_4220 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX_4221 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y15" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV  (
    .I(1'b0),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV_4220 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y15" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV_4213 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX_4214 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y15" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV  (
    .I(1'b0),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV_4213 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y15" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_4212 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y15" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_4211 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y13" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_1323 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DXMUX_4112 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y13" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/BYINV_4104 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DYMUX_4105 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y13" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/BYINV  (
    .I(1'b0),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/BYINV_4104 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y13" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV  (
    .I(reset_IBUF_1128),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV_4103 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y13" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV_4102 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y20" ))
  \shiftin<5>/DXMUX  (
    .I(shiftin[4]),
    .O(\shiftin<5>/DXMUX_4288 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y20" ))
  \shiftin<5>/DYMUX  (
    .I(shiftin[3]),
    .O(\shiftin<5>/DYMUX_4279 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y20" ))
  \shiftin<5>/SRINV  (
    .I(reset_IBUF_1128),
    .O(\shiftin<5>/SRINV_4277 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y20" ))
  \shiftin<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\shiftin<5>/CLKINV_4276 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y20" ))
  \shiftin<5>/CEINV  (
    .I(sin_0),
    .O(\shiftin<5>/CEINV_4275 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_1327 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/DYMUX_4441 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLKINV_4438 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y9" ))
  \txfifo/N01/XUSED  (
    .I(\txfifo/N01 ),
    .O(\txfifo/N01_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y9" ))
  \txfifo/N01/YUSED  (
    .I(wr_tx_pack_1),
    .O(wr_tx)
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y12" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DXMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_1312 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DXMUX_4500 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y12" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_1313 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DYMUX_4495 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y12" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV_4493 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en/XUSED  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en/YUSED  (
    .I(rd_rx_pack_1),
    .O(rd_rx)
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y17" ))
  \pstate_FSM_FFd2-In3/XUSED  (
    .I(\pstate_FSM_FFd2-In3_4537 ),
    .O(\pstate_FSM_FFd2-In3_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y17" ))
  \shiftout_not0001/YUSED  (
    .I(shiftout_not0001),
    .O(shiftout_not0001_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062/XUSED  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_4513 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y34" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DXMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_1310 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DXMUX_4484 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y34" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_1311 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DYMUX_4479 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y34" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV_4477 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y3" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062/XUSED  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_4525 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y9" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/BYINV_4608 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/DYMUX_4609 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y9" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/BYINV  (
    .I(1'b0),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/BYINV_4608 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y9" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/CLKINV_4606 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y11" ))
  \tx_full/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_2117 ),
    .O(\tx_full/DYMUX_4583 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y11" ))
  \tx_full/CLKINV  (
    .I(clk_BUFGP),
    .O(\tx_full/CLKINV_4580 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y12" ))
  \tx_empty/DYMUX  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_2646 ),
    .O(\tx_empty/DYMUX_4635 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y12" ))
  \tx_empty/CLKINV  (
    .I(clk_BUFGP),
    .O(\tx_empty/CLKINV_4632 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/BYINV_4595 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/DYMUX_4596 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/BYINV  (
    .I(1'b0),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/BYINV_4595 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/CLKINV_4593 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y31" ))
  \rx_empty/DYMUX  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_2611 ),
    .O(\rx_empty/DYMUX_4622 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y31" ))
  \rx_empty/CLKINV  (
    .I(clk_BUFGP),
    .O(\rx_empty/CLKINV_4619 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFB ),
    .LOC ( "SLICE_X2Y14" ))
  spiclk_not00021 (
    .ADR0(spiclk_cmp_eq0000_0),
    .ADR1(enspi),
    .ADR2(spiclk_cmp_le0000_0),
    .ADR3(spiclk_and0000),
    .O(spiclk_not0002)
  );
  X_LUT4 #(
    .INIT ( 16'hFE00 ),
    .LOC ( "SLICE_X3Y18" ))
  spiclk_cmp_le00001_SW0 (
    .ADR0(spiclk[0]),
    .ADR1(spiclk[1]),
    .ADR2(spiclk[2]),
    .ADR3(spiclk[3]),
    .O(\spiclk_cmp_le00001_SW0/O_pack_1 )
  );
  X_BUF #(
    .LOC ( "PAD43" ))
  \wren/IFF/IMUX  (
    .I(\wren/INBUF ),
    .O(wren_IBUF_1109)
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  \din<5>/IFF/IMUX  (
    .I(\din<5>/INBUF ),
    .O(din_5_IBUF_1112)
  );
  X_BUF #(
    .LOC ( "PAD45" ))
  \din<7>/IFF/IMUX  (
    .I(\din<7>/INBUF ),
    .O(din_7_IBUF_1115)
  );
  X_BUF #(
    .LOC ( "IPAD36" ))
  \rden/IFF/IMUX  (
    .I(\rden/INBUF ),
    .O(rden_IBUF_1113)
  );
  X_BUF #(
    .LOC ( "PAD49" ))
  \din<4>/IFF/IMUX  (
    .I(\din<4>/INBUF ),
    .O(din_4_IBUF_1111)
  );
  X_BUF #(
    .LOC ( "PAD52" ))
  \din<2>/IFF/IMUX  (
    .I(\din<2>/INBUF ),
    .O(din_2_IBUF_1108)
  );
  X_BUF #(
    .LOC ( "PAD51" ))
  \din<3>/IFF/IMUX  (
    .I(\din<3>/INBUF ),
    .O(din_3_IBUF_1110)
  );
  X_BUF #(
    .LOC ( "PAD47" ))
  \din<6>/IFF/IMUX  (
    .I(\din<6>/INBUF ),
    .O(din_6_IBUF_1114)
  );
  X_BUF #(
    .LOC ( "PAD42" ))
  \addr<0>/IFF/IMUX  (
    .I(\addr<0>/INBUF ),
    .O(addr_0_IBUF_1129)
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  \din<0>/IFF/IMUX  (
    .I(\din<0>/INBUF ),
    .O(din_0_IBUF_1130)
  );
  X_BUF #(
    .LOC ( "PAD40" ))
  \reset/IFF/IMUX  (
    .I(\reset/INBUF ),
    .O(reset_IBUF_1128)
  );
  X_LUT4 #(
    .INIT ( 16'h8400 ),
    .LOC ( "SLICE_X29Y11" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb67_0 ),
    .ADR2(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_0 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h6FF6 ),
    .LOC ( "SLICE_X13Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .ADR2(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFE2 ),
    .LOC ( "SLICE_X12Y15" ))
  spi_not00011 (
    .ADR0(N21_0),
    .ADR1(spiclk_and00007_0),
    .ADR2(\spiclk_and000048_SW1/O ),
    .ADR3(spiclk_cmp_le0000_0),
    .O(spi_not0001)
  );
  X_LUT4 #(
    .INIT ( 16'hFFDE ),
    .LOC ( "SLICE_X29Y7" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .ADR1(\txfifo/N6_0 ),
    .ADR2(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O ),
    .O(\txfifo/N8 )
  );
  X_FF #(
    .LOC ( "SLICE_X29Y11" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_2118 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_2102 ),
    .SET(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FFX/SET ),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1228 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y11" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FFX/SETOR  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_1219 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FFX/SET )
  );
  X_LUT4 #(
    .INIT ( 16'hDD50 ),
    .LOC ( "SLICE_X12Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb97  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .ADR1(\rxfifo/N8_0 ),
    .ADR2(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O ),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_0 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb )
  );
  X_LUT4 #(
    .INIT ( 16'hA0EE ),
    .LOC ( "SLICE_X29Y11" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb97  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb5_0 ),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb84_SW0/O ),
    .ADR2(\txfifo/N8_0 ),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb )
  );
  X_LUT4 #(
    .INIT ( 16'hFFBF ),
    .LOC ( "SLICE_X2Y18" ))
  spiclk_cmp_eq0000_SW0 (
    .ADR0(spiclk[3]),
    .ADR1(spiclk[4]),
    .ADR2(spiclk[5]),
    .ADR3(spiclk[0]),
    .O(\spiclk_cmp_eq0000_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X2Y18" ))
  spiclk_cmp_eq0000 (
    .ADR0(spiclk[6]),
    .ADR1(spiclk[2]),
    .ADR2(spiclk[1]),
    .ADR3(\spiclk_cmp_eq0000_SW0/O ),
    .O(spiclk_cmp_eq0000_2145)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X15Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_0 ),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .ADR2(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_0 ),
    .ADR3(\rxfifo/N01_0 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h7BDE ),
    .LOC ( "SLICE_X29Y7" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .ADR2(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y33" ),
    .INIT ( 1'b1 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_2083 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_2067 ),
    .SET(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FFX/SET ),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1218 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FFX/SETOR  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_1210 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FFX/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h13FF ),
    .LOC ( "SLICE_X12Y15" ))
  spiclk_and000048_SW1 (
    .ADR0(spiclk[5]),
    .ADR1(spiclk[6]),
    .ADR2(N19_0),
    .ADR3(enspi),
    .O(\spiclk_and000048_SW1/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFF6 ),
    .LOC ( "SLICE_X13Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .ADR2(\rxfifo/N6_0 ),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00003168_SW0/O ),
    .O(\rxfifo/N8 )
  );
  X_LUT4 #(
    .INIT ( 16'h66AA ),
    .LOC ( "SLICE_X12Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<2>11  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR2(VCC),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .O(\rxfifo/Result<2>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y12" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_2282 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_2266 ),
    .SET(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SET ),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1243 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y12" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SETOR  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SET )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y33" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_2  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_2357 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2346 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2347 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2348 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2])
  );
  X_LUT4 #(
    .INIT ( 16'hFAF2 ),
    .LOC ( "SLICE_X21Y12" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000092  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1243 ),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .ADR2(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O ),
    .ADR3(\txfifo/N8_0 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h6CCC ),
    .LOC ( "SLICE_X14Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<3>11  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .ADR2(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .O(\rxfifo/Result [3])
  );
  X_LUT4 #(
    .INIT ( 16'hFFA2 ),
    .LOC ( "SLICE_X15Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000092  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1237 ),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .ADR2(\rxfifo/N8_0 ),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y31" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX_2492 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_2483 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_2484 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1264 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X21Y12" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .ADR1(\txfifo/N01_0 ),
    .ADR2(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_0 ),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_0 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O_pack_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y33" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_3  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_2372 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2346 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2347 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2348 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3])
  );
  X_FF #(
    .LOC ( "SLICE_X12Y32" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_3  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_2326 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_2300 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_2301 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_2302 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3])
  );
  X_LUT4 #(
    .INIT ( 16'h7F80 ),
    .LOC ( "SLICE_X12Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<3>11  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR2(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .O(\rxfifo/Result<3>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y31" ),
    .INIT ( 1'b1 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_2248 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_2232 ),
    .SET(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SET ),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1237 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SETOR  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h5D55 ),
    .LOC ( "SLICE_X21Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In1  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1237 ),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1264 ),
    .ADR2(rd_rx),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1265 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In )
  );
  X_LUT4 #(
    .INIT ( 16'h7878 ),
    .LOC ( "SLICE_X14Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<2>11  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR2(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR3(VCC),
    .O(\rxfifo/Result [2])
  );
  X_FF #(
    .LOC ( "SLICE_X12Y32" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_2  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_2311 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_2300 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_2301 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_2302 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2])
  );
  X_LUT4 #(
    .INIT ( 16'h3FC0 ),
    .LOC ( "SLICE_X29Y4" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<2>11  (
    .ADR0(VCC),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR2(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .O(\txfifo/Result<2>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X29Y4" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_2  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_2403 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_2392 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_2393 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_2394 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2])
  );
  X_FF #(
    .LOC ( "SLICE_X29Y4" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_3  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_2418 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_2392 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_2393 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_2394 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3])
  );
  X_FF #(
    .LOC ( "SLICE_X21Y31" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_2507 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_2483 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_2484 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1265 )
  );
  X_LUT4 #(
    .INIT ( 16'h08FF ),
    .LOC ( "SLICE_X20Y14" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In1  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1268 ),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1267 ),
    .ADR2(\pstate_FSM_FFd2-In34_1269 ),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1243 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In )
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ),
    .LOC ( "SLICE_X28Y2" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<3>11  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR2(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\txfifo/Result [3])
  );
  X_FF #(
    .LOC ( "SLICE_X28Y2" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_3  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_2464 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2438 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2439 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2440 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3])
  );
  X_LUT4 #(
    .INIT ( 16'hAFAA ),
    .LOC ( "SLICE_X21Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In1  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1264 ),
    .ADR1(VCC),
    .ADR2(rd_rx),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1265 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y2" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_2  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_2449 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_2438 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_2439 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_2440 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2])
  );
  X_FF #(
    .LOC ( "SLICE_X20Y14" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX_2534 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_2525 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_2526 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1267 )
  );
  X_LUT4 #(
    .INIT ( 16'hCECE ),
    .LOC ( "SLICE_X20Y14" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In1  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1268 ),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1267 ),
    .ADR2(\pstate_FSM_FFd2-In34_1269 ),
    .ADR3(VCC),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In )
  );
  X_LUT4 #(
    .INIT ( 16'h3CCC ),
    .LOC ( "SLICE_X28Y2" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<2>11  (
    .ADR0(VCC),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR2(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\txfifo/Result [2])
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ),
    .LOC ( "SLICE_X29Y4" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<3>11  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR2(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .O(\txfifo/Result<3>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y17" ),
    .INIT ( 1'b0 ))
  spiclk_1 (
    .I(\spiclk<1>/DXMUX_2699 ),
    .CE(\spiclk<1>/CEINV_2673 ),
    .CLK(\spiclk<1>/CLKINV_2674 ),
    .SET(GND),
    .RST(\spiclk<1>/SRINV_2675 ),
    .O(spiclk[1])
  );
  X_FF #(
    .LOC ( "SLICE_X2Y17" ),
    .INIT ( 1'b0 ))
  spiclk_0 (
    .I(\spiclk<1>/DYMUX_2684 ),
    .CE(\spiclk<1>/CEINV_2673 ),
    .CLK(\spiclk<1>/CLKINV_2674 ),
    .SET(GND),
    .RST(\spiclk<1>/SRINV_2675 ),
    .O(spiclk[0])
  );
  X_LUT4 #(
    .INIT ( 16'hC4C4 ),
    .LOC ( "SLICE_X20Y15" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/RAM_REGOUT_EN1  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1268 ),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1267 ),
    .ADR2(\pstate_FSM_FFd2-In34_1269 ),
    .ADR3(VCC),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en )
  );
  X_LUT4 #(
    .INIT ( 16'h0044 ),
    .LOC ( "SLICE_X16Y12" ))
  sin1 (
    .ADR0(spi_1120),
    .ADR1(pstate_FSM_FFd2_1208),
    .ADR2(VCC),
    .ADR3(pstate_FSM_FFd1_1207),
    .O(sin)
  );
  X_FF #(
    .LOC ( "SLICE_X20Y15" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX_2647 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_2638 ),
    .SET(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SET ),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_1274 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y15" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SETOR  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h4444 ),
    .LOC ( "SLICE_X16Y12" ))
  \pstate_FSM_FFd1-In1  (
    .ADR0(spi_1120),
    .ADR1(pstate_FSM_FFd2_1208),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\pstate_FSM_FFd1-In )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y12" ),
    .INIT ( 1'b0 ))
  pstate_FSM_FFd1 (
    .I(\pstate_FSM_FFd1/DYMUX_2576 ),
    .CE(VCC),
    .CLK(\pstate_FSM_FFd1/CLKINV_2565 ),
    .SET(GND),
    .RST(\pstate_FSM_FFd1/FFY/RSTAND_2581 ),
    .O(pstate_FSM_FFd1_1207)
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y12" ))
  \pstate_FSM_FFd1/FFY/RSTAND  (
    .I(reset_IBUF_1128),
    .O(\pstate_FSM_FFd1/FFY/RSTAND_2581 )
  );
  X_LUT4 #(
    .INIT ( 16'h000C ),
    .LOC ( "SLICE_X2Y17" ))
  \spiclk_mux0000<6>1  (
    .ADR0(VCC),
    .ADR1(enspi),
    .ADR2(spiclk_cmp_eq0000_0),
    .ADR3(spiclk[0]),
    .O(spiclk_mux0000[6])
  );
  X_LUT4 #(
    .INIT ( 16'hBB20 ),
    .LOC ( "SLICE_X20Y15" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or00001  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1268 ),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1267 ),
    .ADR2(\pstate_FSM_FFd2-In34_1269 ),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_1274 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0408 ),
    .LOC ( "SLICE_X2Y17" ))
  \spiclk_mux0000<5>1  (
    .ADR0(spiclk[1]),
    .ADR1(enspi),
    .ADR2(spiclk_cmp_eq0000_0),
    .ADR3(spiclk[0]),
    .O(spiclk_mux0000[5])
  );
  X_FF #(
    .LOC ( "SLICE_X23Y31" ),
    .INIT ( 1'b1 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX_2612 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_2603 ),
    .SET(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SET ),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_1271 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SETOR  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SET )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y14" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_2549 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_2525 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_2526 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1268 )
  );
  X_LUT4 #(
    .INIT ( 16'hF540 ),
    .LOC ( "SLICE_X23Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or00001  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1264 ),
    .ADR1(rd_rx),
    .ADR2(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1265 ),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_1271 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h88AA ),
    .LOC ( "SLICE_X23Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/RAM_REGOUT_EN1  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1264 ),
    .ADR1(rd_rx),
    .ADR2(VCC),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1265 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en )
  );
  X_LUT4 #(
    .INIT ( 16'h00AB ),
    .LOC ( "SLICE_X14Y17" ))
  spi_mux00001 (
    .ADR0(pstate_FSM_FFd2_1208),
    .ADR1(tx_empty),
    .ADR2(pstate_FSM_FFd1_1207),
    .ADR3(spiclk_and0000),
    .O(spi_mux0000)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y17" ),
    .INIT ( 1'b0 ))
  counter_0 (
    .I(\counter<1>/DYMUX_2851 ),
    .CE(\counter<1>/CEINV_2839 ),
    .CLK(\counter<1>/CLKINV_2840 ),
    .SET(GND),
    .RST(\counter<1>/SRINV_2841 ),
    .O(counter[0])
  );
  X_LUT4 #(
    .INIT ( 16'hBBBB ),
    .LOC ( "SLICE_X15Y17" ))
  \Mcount_counter_xor<0>11  (
    .ADR0(counter[3]),
    .ADR1(counter[0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Mcount_counter)
  );
  X_FF #(
    .LOC ( "SLICE_X26Y16" ),
    .INIT ( 1'b0 ))
  shiftout_1 (
    .I(\shiftout<1>/DXMUX_2783 ),
    .CE(\shiftout<1>/CEINV_2757 ),
    .CLK(\shiftout<1>/CLKINV_2758 ),
    .SET(GND),
    .RST(\shiftout<1>/SRINV_2759 ),
    .O(shiftout[1])
  );
  X_LUT4 #(
    .INIT ( 16'h1144 ),
    .LOC ( "SLICE_X15Y17" ))
  \Mcount_counter_xor<1>11  (
    .ADR0(counter[3]),
    .ADR1(counter[0]),
    .ADR2(VCC),
    .ADR3(counter[1]),
    .O(Mcount_counter1)
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ),
    .LOC ( "SLICE_X26Y16" ))
  \shiftout_mux0000<0>1  (
    .ADR0(pstate_FSM_FFd2_1208),
    .ADR1(pstate_FSM_FFd1_1207),
    .ADR2(tx_empty),
    .ADR3(txout[0]),
    .O(shiftout_mux0000[0])
  );
  X_FF #(
    .LOC ( "SLICE_X26Y16" ),
    .INIT ( 1'b0 ))
  shiftout_0 (
    .I(\shiftout<1>/DYMUX_2767 ),
    .CE(\shiftout<1>/CEINV_2757 ),
    .CLK(\shiftout<1>/CLKINV_2758 ),
    .SET(GND),
    .RST(\shiftout<1>/SRINV_2759 ),
    .O(shiftout[0])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y17" ),
    .INIT ( 1'b0 ))
  spi (
    .I(\spi/DYMUX_2730 ),
    .CE(\spi/CEINV_2720 ),
    .CLK(\spi/CLKINV_2721 ),
    .SET(GND),
    .RST(\spi/FFY/RSTAND_2736 ),
    .O(spi_1120)
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y17" ))
  \spi/FFY/RSTAND  (
    .I(reset_IBUF_1128),
    .O(\spi/FFY/RSTAND_2736 )
  );
  X_LUT4 #(
    .INIT ( 16'hAFA0 ),
    .LOC ( "SLICE_X26Y16" ))
  \shiftout_mux0000<1>1  (
    .ADR0(txout[1]),
    .ADR1(VCC),
    .ADR2(\pstate_FSM_FFd2-In34_1269 ),
    .ADR3(shiftout[0]),
    .O(shiftout_mux0000[1])
  );
  X_FF #(
    .LOC ( "SLICE_X3Y16" ),
    .INIT ( 1'b0 ))
  spiclk_2 (
    .I(\spiclk<2>/DYMUX_2812 ),
    .CE(\spiclk<2>/CEINV_2802 ),
    .CLK(\spiclk<2>/CLKINV_2803 ),
    .SET(GND),
    .RST(\spiclk<2>/FFY/RSTAND_2818 ),
    .O(spiclk[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y16" ))
  \spiclk<2>/FFY/RSTAND  (
    .I(reset_IBUF_1128),
    .O(\spiclk<2>/FFY/RSTAND_2818 )
  );
  X_LUT4 #(
    .INIT ( 16'h55FF ),
    .LOC ( "SLICE_X3Y16" ))
  \spiclk_mux0000<3>_SW0  (
    .ADR0(spiclk[0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(spiclk[1]),
    .O(N111)
  );
  X_LUT4 #(
    .INIT ( 16'h28A0 ),
    .LOC ( "SLICE_X3Y16" ))
  \spiclk_mux0000<4>1  (
    .ADR0(N11),
    .ADR1(spiclk[0]),
    .ADR2(spiclk[2]),
    .ADR3(spiclk[1]),
    .O(spiclk_mux0000[4])
  );
  X_LUT4 #(
    .INIT ( 16'hFFAB ),
    .LOC ( "SLICE_X14Y17" ))
  counter_not00011 (
    .ADR0(pstate_FSM_FFd2_1208),
    .ADR1(tx_empty),
    .ADR2(pstate_FSM_FFd1_1207),
    .ADR3(counter[3]),
    .O(counter_not0001)
  );
  X_LUT4 #(
    .INIT ( 16'h1450 ),
    .LOC ( "SLICE_X15Y16" ))
  \Mcount_counter_xor<2>11  (
    .ADR0(counter[3]),
    .ADR1(counter[0]),
    .ADR2(counter[2]),
    .ADR3(counter[1]),
    .O(Mcount_counter2)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y15" ),
    .INIT ( 1'b0 ))
  spiclk_5 (
    .I(\spiclk<5>/DXMUX_2959 ),
    .CE(\spiclk<5>/CEINV_2934 ),
    .CLK(\spiclk<5>/CLKINV_2935 ),
    .SET(GND),
    .RST(\spiclk<5>/SRINV_2936 ),
    .O(spiclk[5])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y16" ),
    .INIT ( 1'b0 ))
  counter_2 (
    .I(\counter<3>/DYMUX_2990 ),
    .CE(\counter<3>/CEINV_2980 ),
    .CLK(\counter<3>/CLKINV_2981 ),
    .SET(GND),
    .RST(\counter<3>/SRINV_2982 ),
    .O(counter[2])
  );
  X_FF #(
    .LOC ( "SLICE_X2Y15" ),
    .INIT ( 1'b0 ))
  spiclk_4 (
    .I(\spiclk<5>/DYMUX_2944 ),
    .CE(\spiclk<5>/CEINV_2934 ),
    .CLK(\spiclk<5>/CLKINV_2935 ),
    .SET(GND),
    .RST(\spiclk<5>/SRINV_2936 ),
    .O(spiclk[4])
  );
  X_FF #(
    .LOC ( "SLICE_X29Y16" ),
    .INIT ( 1'b0 ))
  shiftout_2 (
    .I(\shiftout<3>/DYMUX_2897 ),
    .CE(\shiftout<3>/CEINV_2886 ),
    .CLK(\shiftout<3>/CLKINV_2887 ),
    .SET(GND),
    .RST(\shiftout<3>/SRINV_2888 ),
    .O(shiftout[2])
  );
  X_FF #(
    .LOC ( "SLICE_X28Y7" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_0  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_3475 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_3445 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_3446 ),
    .SET(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_3447 ),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0])
  );
  X_LUT4 #(
    .INIT ( 16'hAACC ),
    .LOC ( "SLICE_X29Y16" ))
  \shiftout_mux0000<2>1  (
    .ADR0(txout[2]),
    .ADR1(shiftout[1]),
    .ADR2(VCC),
    .ADR3(\pstate_FSM_FFd2-In34_1269 ),
    .O(shiftout_mux0000[2])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y17" ),
    .INIT ( 1'b0 ))
  counter_1 (
    .I(\counter<1>/DXMUX_2867 ),
    .CE(\counter<1>/CEINV_2839 ),
    .CLK(\counter<1>/CLKINV_2840 ),
    .SET(GND),
    .RST(\counter<1>/SRINV_2841 ),
    .O(counter[1])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y16" ),
    .INIT ( 1'b0 ))
  counter_3 (
    .I(\counter<3>/DXMUX_3005 ),
    .CE(\counter<3>/CEINV_2980 ),
    .CLK(\counter<3>/CLKINV_2981 ),
    .SET(GND),
    .RST(\counter<3>/SRINV_2982 ),
    .O(counter[3])
  );
  X_LUT4 #(
    .INIT ( 16'h4C80 ),
    .LOC ( "SLICE_X2Y15" ))
  \spiclk_mux0000<1>1  (
    .ADR0(Madd_spiclk_addsub0000_cy[3]),
    .ADR1(N11),
    .ADR2(spiclk[4]),
    .ADR3(spiclk[5]),
    .O(spiclk_mux0000[1])
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ),
    .LOC ( "SLICE_X15Y16" ))
  \Mcount_counter_cy<2>11  (
    .ADR0(counter[2]),
    .ADR1(counter[0]),
    .ADR2(counter[3]),
    .ADR3(counter[1]),
    .O(Mcount_counter3)
  );
  X_LUT4 #(
    .INIT ( 16'hEE22 ),
    .LOC ( "SLICE_X29Y16" ))
  \shiftout_mux0000<3>1  (
    .ADR0(shiftout[2]),
    .ADR1(\pstate_FSM_FFd2-In34_1269 ),
    .ADR2(VCC),
    .ADR3(txout[3]),
    .O(shiftout_mux0000[3])
  );
  X_LUT4 #(
    .INIT ( 16'h0048 ),
    .LOC ( "SLICE_X2Y15" ))
  \spiclk_mux0000<2>1  (
    .ADR0(Madd_spiclk_addsub0000_cy[3]),
    .ADR1(enspi),
    .ADR2(spiclk[4]),
    .ADR3(spiclk_cmp_eq0000_0),
    .O(spiclk_mux0000[2])
  );
  X_FF #(
    .LOC ( "SLICE_X29Y16" ),
    .INIT ( 1'b0 ))
  shiftout_3 (
    .I(\shiftout<3>/DXMUX_2913 ),
    .CE(\shiftout<3>/CEINV_2886 ),
    .CLK(\shiftout<3>/CLKINV_2887 ),
    .SET(GND),
    .RST(\shiftout<3>/SRINV_2888 ),
    .O(shiftout[3])
  );
  X_LUT4 #(
    .INIT ( 16'hE4E4 ),
    .LOC ( "SLICE_X28Y15" ))
  \shiftout_mux0000<4>1  (
    .ADR0(\pstate_FSM_FFd2-In34_1269 ),
    .ADR1(shiftout[3]),
    .ADR2(txout[4]),
    .ADR3(VCC),
    .O(shiftout_mux0000[4])
  );
  X_LUT4 #(
    .INIT ( 16'h60A0 ),
    .LOC ( "SLICE_X3Y14" ))
  \spiclk_mux0000<0>  (
    .ADR0(spiclk[6]),
    .ADR1(N13_0),
    .ADR2(N11),
    .ADR3(spiclk[5]),
    .O(spiclk_mux0000[0])
  );
  X_LUT4 #(
    .INIT ( 16'hCFC0 ),
    .LOC ( "SLICE_X29Y15" ))
  \shiftout_mux0000<6>1  (
    .ADR0(VCC),
    .ADR1(txout[6]),
    .ADR2(\pstate_FSM_FFd2-In34_1269 ),
    .ADR3(shiftout[5]),
    .O(shiftout_mux0000[6])
  );
  X_FF #(
    .LOC ( "SLICE_X29Y15" ),
    .INIT ( 1'b0 ))
  shiftout_6 (
    .I(\shiftout<7>/DYMUX_3107 ),
    .CE(\shiftout<7>/CEINV_3096 ),
    .CLK(\shiftout<7>/CLKINV_3097 ),
    .SET(GND),
    .RST(\shiftout<7>/SRINV_3098 ),
    .O(shiftout[6])
  );
  X_FF #(
    .LOC ( "SLICE_X28Y15" ),
    .INIT ( 1'b0 ))
  shiftout_4 (
    .I(\shiftout<5>/DYMUX_3035 ),
    .CE(\shiftout<5>/CEINV_3024 ),
    .CLK(\shiftout<5>/CLKINV_3025 ),
    .SET(GND),
    .RST(\shiftout<5>/SRINV_3026 ),
    .O(shiftout[4])
  );
  X_FF #(
    .LOC ( "SLICE_X3Y14" ),
    .INIT ( 1'b0 ))
  spiclk_6 (
    .I(\spiclk<6>/DYMUX_3077 ),
    .CE(\spiclk<6>/CEINV_3067 ),
    .CLK(\spiclk<6>/CLKINV_3068 ),
    .SET(GND),
    .RST(\spiclk<6>/FFY/RSTAND_3083 ),
    .O(spiclk[6])
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y14" ))
  \spiclk<6>/FFY/RSTAND  (
    .I(reset_IBUF_1128),
    .O(\spiclk<6>/FFY/RSTAND_3083 )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y15" ),
    .INIT ( 1'b0 ))
  shiftout_5 (
    .I(\shiftout<5>/DXMUX_3051 ),
    .CE(\shiftout<5>/CEINV_3024 ),
    .CLK(\shiftout<5>/CLKINV_3025 ),
    .SET(GND),
    .RST(\shiftout<5>/SRINV_3026 ),
    .O(shiftout[5])
  );
  X_LUT4 #(
    .INIT ( 16'hF0AA ),
    .LOC ( "SLICE_X29Y15" ))
  \shiftout_mux0000<7>1  (
    .ADR0(shiftout[6]),
    .ADR1(VCC),
    .ADR2(txout[7]),
    .ADR3(\pstate_FSM_FFd2-In34_1269 ),
    .O(shiftout_mux0000[7])
  );
  X_FF #(
    .LOC ( "SLICE_X29Y15" ),
    .INIT ( 1'b0 ))
  shiftout_7 (
    .I(\shiftout<7>/DXMUX_3123 ),
    .CE(\shiftout<7>/CEINV_3096 ),
    .CLK(\shiftout<7>/CLKINV_3097 ),
    .SET(GND),
    .RST(\shiftout<7>/SRINV_3098 ),
    .O(shiftout[7])
  );
  X_LUT4 #(
    .INIT ( 16'hF3C0 ),
    .LOC ( "SLICE_X28Y15" ))
  \shiftout_mux0000<5>1  (
    .ADR0(VCC),
    .ADR1(\pstate_FSM_FFd2-In34_1269 ),
    .ADR2(txout[5]),
    .ADR3(shiftout[4]),
    .O(shiftout_mux0000[5])
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X8Y42" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX_3140 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV_3136 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV_3137 ),
    .SET(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SET ),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1299 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y42" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SETOR  (
    .I(reset_IBUF_1128),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h0011 ),
    .LOC ( "SLICE_X16Y10" ))
  \pstate_FSM_FFd2-In34  (
    .ADR0(tx_empty),
    .ADR1(pstate_FSM_FFd1_1207),
    .ADR2(VCC),
    .ADR3(pstate_FSM_FFd2_1208),
    .O(\pstate_FSM_FFd2-In34_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFE00 ),
    .LOC ( "SLICE_X3Y17" ))
  spiclk_and000032_SW0 (
    .ADR0(spiclk[2]),
    .ADR1(spiclk[1]),
    .ADR2(spiclk[3]),
    .ADR3(spiclk[4]),
    .O(N19)
  );
  X_LUT4 #(
    .INIT ( 16'h00AA ),
    .LOC ( "SLICE_X25Y11" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb1  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1301 ),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_1305 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X9Y43" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX_3205 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_3203 ),
    .SET(GND),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1298 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y13" ),
    .INIT ( 1'b0 ))
  pstate_FSM_FFd2 (
    .I(\pstate_FSM_FFd2/DXMUX_3191 ),
    .CE(VCC),
    .CLK(\pstate_FSM_FFd2/CLKINV_3175 ),
    .SET(GND),
    .RST(\pstate_FSM_FFd2/FFX/RSTAND_3196 ),
    .O(pstate_FSM_FFd2_1208)
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y13" ))
  \pstate_FSM_FFd2/FFX/RSTAND  (
    .I(reset_IBUF_1128),
    .O(\pstate_FSM_FFd2/FFX/RSTAND_3196 )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y6" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_3926 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_3913 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_3914 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_3915 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hCCD1 ),
    .LOC ( "SLICE_X16Y13" ))
  \pstate_FSM_FFd2-In37  (
    .ADR0(tx_empty),
    .ADR1(pstate_FSM_FFd2_1208),
    .ADR2(\pstate_FSM_FFd2-In10_1302 ),
    .ADR3(pstate_FSM_FFd1_1207),
    .O(\pstate_FSM_FFd2-In )
  );
  X_LUT4 #(
    .INIT ( 16'h3313 ),
    .LOC ( "SLICE_X16Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/RAM_RD_EN_FWFT1  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1268 ),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1243 ),
    .ADR2(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1267 ),
    .ADR3(\pstate_FSM_FFd2-In34_1269 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en )
  );
  X_LUT4 #(
    .INIT ( 16'h0F00 ),
    .LOC ( "SLICE_X14Y30" ))
  pstate_FSM_Out31 (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(pstate_FSM_FFd2_1208),
    .ADR3(pstate_FSM_FFd1_1207),
    .O(wr_rx_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X16Y13" ))
  \pstate_FSM_FFd2-In10  (
    .ADR0(counter[1]),
    .ADR1(spi_1120),
    .ADR2(counter[0]),
    .ADR3(\pstate_FSM_FFd2-In3_0 ),
    .O(\pstate_FSM_FFd2-In10_pack_2 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X9Y43" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX_3210 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_3203 ),
    .SET(GND),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_1304 )
  );
  X_LUT4 #(
    .INIT ( 16'h3300 ),
    .LOC ( "SLICE_X11Y43" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb1  (
    .ADR0(VCC),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_1304 ),
    .ADR2(VCC),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1299 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X24Y10" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX_3226 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_3219 ),
    .SET(GND),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_1305 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X24Y11" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX_3156 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV_3152 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV_3153 ),
    .SET(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SET ),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1301 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y11" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SETOR  (
    .I(reset_IBUF_1128),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SET )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X24Y10" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX_3221 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_3219 ),
    .SET(GND),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1300 )
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ),
    .LOC ( "SLICE_X14Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<1>11  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\rxfifo/Result<1>1 )
  );
  X_LUT4 #(
    .INIT ( 16'h2010 ),
    .LOC ( "SLICE_X28Y8" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1228 ),
    .ADR2(wr_tx),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_3424 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y32" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_1  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_3361 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_3349 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_3350 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_3351 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0900 ),
    .LOC ( "SLICE_X14Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .ADR2(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1218 ),
    .ADR3(wr_rx),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb40_3328 )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_0  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX_3427 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_3399 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_3400 ),
    .SET(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_3401 ),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9099 ),
    .LOC ( "SLICE_X14Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079_SW0  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .ADR2(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1218 ),
    .ADR3(wr_rx),
    .O(\rxfifo/N01 )
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ),
    .LOC ( "SLICE_X28Y8" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<1>11  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\txfifo/Result<1>1 )
  );
  X_LUT4 #(
    .INIT ( 16'h55AA ),
    .LOC ( "SLICE_X28Y7" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<1>11  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\txfifo/Result [1])
  );
  X_LUT4 #(
    .INIT ( 16'hCC33 ),
    .LOC ( "SLICE_X14Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014  (
    .ADR0(VCC),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .ADR2(VCC),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_3376 )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_1  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX_3411 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_3399 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_3400 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_3401 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y31" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_1  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX_3315 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_3303 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_3304 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_3305 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y32" ),
    .INIT ( 1'b1 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_0  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_3379 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_3349 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_3350 ),
    .SET(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_3351 ),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0])
  );
  X_LUT4 #(
    .INIT ( 16'h33CC ),
    .LOC ( "SLICE_X14Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<1>11  (
    .ADR0(VCC),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR2(VCC),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\rxfifo/Result [1])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y31" ),
    .INIT ( 1'b1 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_0  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX_3331 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_3303 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_3304 ),
    .SET(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_3305 ),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0])
  );
  X_FF #(
    .LOC ( "SLICE_X28Y7" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_1  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_3457 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_3445 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_3446 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_3447 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1])
  );
  X_LUT4 #(
    .INIT ( 16'hF00F ),
    .LOC ( "SLICE_X28Y7" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000014_3472 )
  );
  X_FF #(
    .LOC ( "SLICE_X29Y6" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_0  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_3945 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3941 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3942 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3943 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0])
  );
  X_FF #(
    .LOC ( "SLICE_X28Y5" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_4038 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_4025 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_4026 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_4027 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3])
  );
  X_FF #(
    .LOC ( "SLICE_X16Y33" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_3982 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_3969 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_3970 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_3971 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y33" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_3  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_4010 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_3997 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_3998 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_3999 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3])
  );
  X_FF #(
    .LOC ( "SLICE_X29Y6" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_3954 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_3941 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_3942 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_3943 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y33" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_4001 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_3997 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_3998 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_3999 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2])
  );
  X_FF #(
    .LOC ( "SLICE_X16Y33" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_2  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_3973 ),
    .CE(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_3969 ),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_3970 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_3971 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2])
  );
  X_FF #(
    .LOC ( "SLICE_X28Y5" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_2  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_4029 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_4025 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_4026 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_4027 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2])
  );
  X_FF #(
    .LOC ( "SLICE_X28Y28" ),
    .INIT ( 1'b0 ))
  control_0 (
    .I(\control<1>/DYMUX_4155 ),
    .CE(VCC),
    .CLK(\control<1>/CLKINV_4152 ),
    .SET(GND),
    .RST(\control<1>/SRINV_4153 ),
    .O(control[0])
  );
  X_FF #(
    .LOC ( "SLICE_X25Y22" ),
    .INIT ( 1'b0 ))
  shiftin_0 (
    .I(\shiftin<1>/DYMUX_4129 ),
    .CE(\shiftin<1>/CEINV_4125 ),
    .CLK(\shiftin<1>/CLKINV_4126 ),
    .SET(GND),
    .RST(\shiftin<1>/SRINV_4127 ),
    .O(shiftin[0])
  );
  X_FF #(
    .LOC ( "SLICE_X29Y2" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_4057 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_4053 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_4054 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_4055 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2])
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X28Y13" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DXMUX_4112 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV_4102 ),
    .SET(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV_4103 ),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_1219 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X28Y13" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DYMUX_4105 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV_4102 ),
    .SET(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV_4103 ),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_1323 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X17Y32" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DXMUX_4090 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV_4080 ),
    .SET(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV_4081 ),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_1210 )
  );
  X_FF #(
    .LOC ( "SLICE_X29Y2" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_3  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_4066 ),
    .CE(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_4053 ),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_4054 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_4055 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3])
  );
  X_FF #(
    .LOC ( "SLICE_X25Y22" ),
    .INIT ( 1'b0 ))
  shiftin_1 (
    .I(\shiftin<1>/DXMUX_4138 ),
    .CE(\shiftin<1>/CEINV_4125 ),
    .CLK(\shiftin<1>/CLKINV_4126 ),
    .SET(GND),
    .RST(\shiftin<1>/SRINV_4127 ),
    .O(shiftin[1])
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X17Y32" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/DYMUX_4083 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLKINV_4080 ),
    .SET(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/SRINV_4081 ),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_1322 )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y20" ),
    .INIT ( 1'b0 ))
  shiftin_4 (
    .I(\shiftin<5>/DYMUX_4279 ),
    .CE(\shiftin<5>/CEINV_4275 ),
    .CLK(\shiftin<5>/CLKINV_4276 ),
    .SET(GND),
    .RST(\shiftin<5>/SRINV_4277 ),
    .O(shiftin[4])
  );
  X_FF #(
    .LOC ( "SLICE_X28Y28" ),
    .INIT ( 1'b0 ))
  control_1 (
    .I(\control<1>/DXMUX_4163 ),
    .CE(VCC),
    .CLK(\control<1>/CLKINV_4152 ),
    .SET(GND),
    .RST(\control<1>/SRINV_4153 ),
    .O(control[1])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y15" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_0  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX_4214 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_4211 ),
    .SET(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_4212 ),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y15" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_2  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX_4221 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_4211 ),
    .SET(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_4212 ),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y22" ),
    .INIT ( 1'b0 ))
  shiftin_2 (
    .I(\shiftin<3>/DYMUX_4251 ),
    .CE(\shiftin<3>/CEINV_4247 ),
    .CLK(\shiftin<3>/CLKINV_4248 ),
    .SET(GND),
    .RST(\shiftin<3>/SRINV_4249 ),
    .O(shiftin[2])
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X17Y31" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/DYMUX_4199 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLKINV_4196 ),
    .SET(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/FFY/SET ),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_1326 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/FFY/SETOR  (
    .I(reset_IBUF_1128),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/FFY/SET )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y30" ),
    .INIT ( 1'b1 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_2  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX_4186 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_4176 ),
    .SET(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_4177 ),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y22" ),
    .INIT ( 1'b0 ))
  shiftin_3 (
    .I(\shiftin<3>/DXMUX_4260 ),
    .CE(\shiftin<3>/CEINV_4247 ),
    .CLK(\shiftin<3>/CLKINV_4248 ),
    .SET(GND),
    .RST(\shiftin<3>/SRINV_4249 ),
    .O(shiftin[3])
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X28Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/DYMUX_4234 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLKINV_4231 ),
    .SET(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/FFY/SET ),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_1327 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y12" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/FFY/SETOR  (
    .I(reset_IBUF_1128),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/FFY/SET )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y30" ),
    .INIT ( 1'b1 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_0  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX_4179 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_4176 ),
    .SET(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_4177 ),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y21" ),
    .INIT ( 1'b0 ))
  shiftin_7 (
    .I(\shiftin<7>/DXMUX_4316 ),
    .CE(\shiftin<7>/CEINV_4303 ),
    .CLK(\shiftin<7>/CLKINV_4304 ),
    .SET(GND),
    .RST(\shiftin<7>/SRINV_4305 ),
    .O(shiftin[7])
  );
  X_FF #(
    .LOC ( "SLICE_X21Y21" ),
    .INIT ( 1'b0 ))
  shiftin_6 (
    .I(\shiftin<7>/DYMUX_4307 ),
    .CE(\shiftin<7>/CEINV_4303 ),
    .CLK(\shiftin<7>/CLKINV_4304 ),
    .SET(GND),
    .RST(\shiftin<7>/SRINV_4305 ),
    .O(shiftin[6])
  );
  X_FF #(
    .LOC ( "SLICE_X21Y20" ),
    .INIT ( 1'b0 ))
  shiftin_5 (
    .I(\shiftin<5>/DXMUX_4288 ),
    .CE(\shiftin<5>/CEINV_4275 ),
    .CLK(\shiftin<5>/CLKINV_4276 ),
    .SET(GND),
    .RST(\shiftin<5>/SRINV_4277 ),
    .O(shiftin[5])
  );
  X_LUT4 #(
    .INIT ( 16'h0C00 ),
    .LOC ( "SLICE_X29Y32" ))
  Mmux_dout61 (
    .ADR0(VCC),
    .ADR1(dout_rx[5]),
    .ADR2(addr_1_IBUF_1131),
    .ADR3(addr_0_IBUF_1129),
    .O(dout_5_OBUF_4393)
  );
  X_LUT4 #(
    .INIT ( 16'h00AA ),
    .LOC ( "SLICE_X15Y35" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb1  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_1311 ),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_1328 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb )
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X27Y13" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb1  (
    .ADR0(VCC),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_1313 ),
    .ADR2(VCC),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_1330 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb )
  );
  X_LUT4 #(
    .INIT ( 16'h2200 ),
    .LOC ( "SLICE_X28Y33" ))
  Mmux_dout41 (
    .ADR0(addr_0_IBUF_1129),
    .ADR1(addr_1_IBUF_1131),
    .ADR2(VCC),
    .ADR3(dout_rx[3]),
    .O(dout_3_OBUF_4369)
  );
  X_LUT4 #(
    .INIT ( 16'h9909 ),
    .LOC ( "SLICE_X28Y9" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079_SW0  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR2(wr_tx),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1228 ),
    .O(\txfifo/N01 )
  );
  X_LUT4 #(
    .INIT ( 16'h000C ),
    .LOC ( "SLICE_X28Y9" ))
  wr_tx1 (
    .ADR0(VCC),
    .ADR1(wren_IBUF_1109),
    .ADR2(addr_0_IBUF_1129),
    .ADR3(addr_1_IBUF_1131),
    .O(wr_tx_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h2020 ),
    .LOC ( "SLICE_X28Y33" ))
  Mmux_dout31 (
    .ADR0(addr_0_IBUF_1129),
    .ADR1(addr_1_IBUF_1131),
    .ADR2(dout_rx[2]),
    .ADR3(VCC),
    .O(dout_2_OBUF_4361)
  );
  X_LUT4 #(
    .INIT ( 16'h5000 ),
    .LOC ( "SLICE_X29Y32" ))
  Mmux_dout51 (
    .ADR0(addr_1_IBUF_1131),
    .ADR1(VCC),
    .ADR2(dout_rx[4]),
    .ADR3(addr_0_IBUF_1129),
    .O(dout_4_OBUF_4385)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y31" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/DYMUX_4427 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLKINV_4424 ),
    .SET(GND),
    .RST(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/FFY/RSTAND_4432 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_1320 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y31" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/FFY/RSTAND  (
    .I(reset_IBUF_1128),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/FFY/RSTAND_4432 )
  );
  X_LUT4 #(
    .INIT ( 16'h8421 ),
    .LOC ( "SLICE_X17Y33" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .ADR2(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_4513 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X26Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DYMUX_4495 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV_4493 ),
    .SET(GND),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_1312 )
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ),
    .LOC ( "SLICE_X29Y3" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062  (
    .ADR0(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .ADR1(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .ADR2(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .ADR3(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_4525 )
  );
  X_LUT4 #(
    .INIT ( 16'h0088 ),
    .LOC ( "SLICE_X31Y33" ))
  Mmux_dout81 (
    .ADR0(addr_0_IBUF_1129),
    .ADR1(dout_rx[7]),
    .ADR2(VCC),
    .ADR3(addr_1_IBUF_1131),
    .O(dout_7_OBUF_4469)
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X26Y12" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DXMUX_4500 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV_4493 ),
    .SET(GND),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_1330 )
  );
  X_LUT4 #(
    .INIT ( 16'hA011 ),
    .LOC ( "SLICE_X25Y17" ))
  shiftout_not00011 (
    .ADR0(pstate_FSM_FFd1_1207),
    .ADR1(tx_empty),
    .ADR2(spi_1120),
    .ADR3(pstate_FSM_FFd2_1208),
    .O(shiftout_not0001)
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X15Y34" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DXMUX_4484 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV_4477 ),
    .SET(GND),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_1328 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X15Y34" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/DYMUX_4479 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLKINV_4477 ),
    .SET(GND),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_1310 )
  );
  X_LUT4 #(
    .INIT ( 16'h2200 ),
    .LOC ( "SLICE_X21Y30" ))
  rd_rx1 (
    .ADR0(rden_IBUF_1113),
    .ADR1(addr_1_IBUF_1131),
    .ADR2(VCC),
    .ADR3(addr_0_IBUF_1129),
    .O(rd_rx_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X17Y17" ))
  \pstate_FSM_FFd2-In3  (
    .ADR0(VCC),
    .ADR1(counter[3]),
    .ADR2(counter[2]),
    .ADR3(VCC),
    .O(\pstate_FSM_FFd2-In3_4537 )
  );
  X_LUT4 #(
    .INIT ( 16'h00C0 ),
    .LOC ( "SLICE_X31Y33" ))
  Mmux_dout71 (
    .ADR0(VCC),
    .ADR1(addr_0_IBUF_1129),
    .ADR2(dout_rx[6]),
    .ADR3(addr_1_IBUF_1131),
    .O(dout_6_OBUF_4461)
  );
  X_FF #(
    .LOC ( "SLICE_X29Y10" ),
    .INIT ( 1'b0 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/DYMUX_4441 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLKINV_4438 ),
    .SET(GND),
    .RST(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/FFY/RSTAND_4446 ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_1321 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y10" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/FFY/RSTAND  (
    .I(reset_IBUF_1128),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/FFY/RSTAND_4446 )
  );
  X_LUT4 #(
    .INIT ( 16'h5155 ),
    .LOC ( "SLICE_X21Y30" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/RAM_RD_EN_FWFT1  (
    .ADR0(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1237 ),
    .ADR1(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1264 ),
    .ADR2(rd_rx),
    .ADR3(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1265 ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y12" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i  (
    .I(\tx_empty/DYMUX_4635 ),
    .CE(VCC),
    .CLK(\tx_empty/CLKINV_4632 ),
    .SET(\tx_empty/FFY/SET ),
    .RST(GND),
    .O(tx_empty)
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y12" ))
  \tx_empty/FFY/SETOR  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\tx_empty/FFY/SET )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y11" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i  (
    .I(\tx_full/DYMUX_4583 ),
    .CE(VCC),
    .CLK(\tx_full/CLKINV_4580 ),
    .SET(\tx_full/FFY/SET ),
    .RST(GND),
    .O(tx_full)
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y11" ))
  \tx_full/FFY/SETOR  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_1219 ),
    .O(\tx_full/FFY/SET )
  );
  X_FF #(
    .LOC ( "SLICE_X29Y9" ),
    .INIT ( 1'b1 ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg_1  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/DYMUX_4609 ),
    .CE(VCC),
    .CLK(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/CLKINV_4606 ),
    .SET(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/FFY/SET ),
    .RST(GND),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y9" ))
  \txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/FFY/SETOR  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb ),
    .O(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/FFY/SET )
  );
  X_FF #(
    .LOC ( "SLICE_X25Y31" ),
    .INIT ( 1'b1 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i  (
    .I(\rx_empty/DYMUX_4622 ),
    .CE(VCC),
    .CLK(\rx_empty/CLKINV_4619 ),
    .SET(\rx_empty/FFY/SET ),
    .RST(GND),
    .O(rx_empty)
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y31" ))
  \rx_empty/FFY/SETOR  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\rx_empty/FFY/SET )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y32" ),
    .INIT ( 1'b1 ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg_1  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/DYMUX_4596 ),
    .CE(VCC),
    .CLK(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/CLKINV_4593 ),
    .SET(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/FFY/SET ),
    .RST(GND),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y32" ))
  \rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/FFY/SETOR  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb ),
    .O(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg<1>/FFY/SET )
  );
  X_BUF #(
    .LOC ( "PAD64" ))
  \sclk/OUTPUT/OFF/OMUX  (
    .I(spi_1120),
    .O(\sclk/O )
  );
  X_BUF #(
    .LOC ( "PAD35" ))
  \dout<1>/OUTPUT/OFF/OMUX  (
    .I(\dout_1_OBUF/F5MUX_1870 ),
    .O(\dout<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD37" ))
  \dout<0>/OUTPUT/OFF/OMUX  (
    .I(\dout_0_OBUF/F5MUX_1895 ),
    .O(\dout<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \dout<5>/OUTPUT/OFF/OMUX  (
    .I(dout_5_OBUF_4393),
    .O(\dout<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD44" ))
  \mosi/OUTPUT/OFF/OMUX  (
    .I(shiftout[7]),
    .O(\mosi/O )
  );
  X_BUF #(
    .LOC ( "PAD31" ))
  \dout<4>/OUTPUT/OFF/OMUX  (
    .I(dout_4_OBUF_4385),
    .O(\dout<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD33" ))
  \dout<3>/OUTPUT/OFF/OMUX  (
    .I(dout_3_OBUF_4369),
    .O(\dout<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD29" ))
  \dout<6>/OUTPUT/OFF/OMUX  (
    .I(dout_6_OBUF_4461),
    .O(\dout<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD34" ))
  \dout<2>/OUTPUT/OFF/OMUX  (
    .I(dout_2_OBUF_4361),
    .O(\dout<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD28" ))
  \dout<7>/OUTPUT/OFF/OMUX  (
    .I(dout_7_OBUF_4469),
    .O(\dout<7>/O )
  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3>  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2>  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1>  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0>  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3>  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2>  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1>  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0>  (
    .I(\rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0>  (
    .I(shiftin[0]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1>  (
    .I(shiftin[1]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8>  (
    .I(shiftin[2]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9>  (
    .I(shiftin[3]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16>  (
    .I(shiftin[4]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17>  (
    .I(shiftin[5]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24>  (
    .I(shiftin[6]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24> )

  );
  X_BUF 
  \NlwBufferBlock_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25>  (
    .I(shiftin[7]),
    .O
(\NlwBufferSignal_rxfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3>  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2>  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1>  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0>  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3>  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2>  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1>  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0>  (
    .I(\txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0>  (
    .I(din_0_IBUF_1130),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1>  (
    .I(din_1_IBUF_1132),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8>  (
    .I(din_2_IBUF_1108),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9>  (
    .I(din_3_IBUF_1110),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16>  (
    .I(din_4_IBUF_1111),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17>  (
    .I(din_5_IBUF_1112),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<17> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24>  (
    .I(din_6_IBUF_1114),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<24> )

  );
  X_BUF 
  \NlwBufferBlock_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25>  (
    .I(din_7_IBUF_1115),
    .O
(\NlwBufferSignal_txfifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> )

  );
  X_ONE   NlwBlock_spi_bonus_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_spi_bonus_GND (
    .O(GND)
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

