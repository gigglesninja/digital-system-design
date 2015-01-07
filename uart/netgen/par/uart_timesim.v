////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: uart_timesim.v
// /___/   /\     Timestamp: Mon Oct 27 22:57:58 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf uart.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim uart.ncd uart_timesim.v 
// Device	: 3s100ecp132-5 (PRODUCTION 1.27 2013-06-08)
// Input file	: uart.ncd
// Output file	: C:\Users\James\Desktop\iDriveSync\IDrive-Sync\DSD LAB\uart\netgen\par\uart_timesim.v
// # of Modules	: 1
// Design Name	: uart
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

module uart (
  clk, reset, rx, fsm, tx, Led
);
  input clk;
  input reset;
  input rx;
  input fsm;
  output tx;
  output [7 : 0] Led;
  wire \in/ld_shift_0 ;
  wire clk_BUFGP;
  wire reset_IBUF_1366;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1377 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1378 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_1379 ;
  wire N13;
  wire rx_IBUF_1384;
  wire \in/baud1/baud_1387 ;
  wire \in/pstate_mux0000<2>4_1389 ;
  wire \in/pstate_mux0000<2>10_0 ;
  wire \in/in_two_1395 ;
  wire \in/finish ;
  wire \in/loaded_mux0000_0 ;
  wire \in/pstate_mux0000<3>15_0 ;
  wire \in/pstate_mux0000<3>2_1402 ;
  wire \in/bitcounter_not0001_0 ;
  wire \in/N13 ;
  wire \in/bittime_0 ;
  wire \in/empty ;
  wire \in/full ;
  wire \in/frame_ready_1417 ;
  wire \out/bitcounter_not0001_0 ;
  wire \out/N2 ;
  wire \out/pstate_FSM_FFd2_1423 ;
  wire \out/pstate_FSM_FFd1_1425 ;
  wire \out/baud1/baud_cmp_eq0000822_0 ;
  wire \out/baud1/baud_1432 ;
  wire \out/N8_0 ;
  wire N23;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1442 ;
  wire \in/fifo1/N9_0 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000062_0 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ;
  wire N21;
  wire N31_0;
  wire \in/baud1/baud_cmp_eq0000810_0 ;
  wire \in/baud1/baud_cmp_eq0000_0 ;
  wire \in/fifo1/N01_0 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056_0 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1483 ;
  wire \in/rd_fifo ;
  wire \in/fifo1/N3_0 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1488 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 ;
  wire N46;
  wire \in/load_1503 ;
  wire \out/bittime_0 ;
  wire N15_0;
  wire N40_0;
  wire N50_0;
  wire pstate_FSM_FFd4_1516;
  wire pstate_FSM_FFd2_1518;
  wire N54_0;
  wire \in/fifo1/N7_0 ;
  wire N27_0;
  wire \out/ld_shift ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1532 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1533 ;
  wire \out/empty ;
  wire N34_0;
  wire N33;
  wire \out/baud1/N01 ;
  wire N29_0;
  wire N9;
  wire pstate_FSM_FFd3_1543;
  wire \in/fifo1/N2_0 ;
  wire \out/baud1/baud_cmp_eq0000_0 ;
  wire N25;
  wire \in/loaded_1548 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_0 ;
  wire fsm_IBUF_1559;
  wire N51;
  wire N53;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux00003168/O ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000073_0 ;
  wire \out/baud1/baud_cmp_eq0000810_1573 ;
  wire \out/pstate_FSM_FFd1-In3_SW0/O ;
  wire N38;
  wire \Madd_data_add0000_xor<4>12_SW0/O ;
  wire \Madd_data_add0000_xor<5>11_SW0/O ;
  wire \Madd_data_add0000_xor<6>12_SW0/O ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000029/O ;
  wire \in/baud1/baud_cmp_eq0000822/O ;
  wire \in/fifo1/N5_0 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux00005/O ;
  wire \in/fifo1/N11_0 ;
  wire \in/baud1/Madd_timer_addsub0000_cy[3] ;
  wire \in/baud1/Madd_timer_addsub0000_cy<5>_0 ;
  wire \out/baud1/Madd_timer_addsub0000_cy[3] ;
  wire \out/baud1/Madd_timer_addsub0000_cy<5>_0 ;
  wire \out/N7 ;
  wire \out/shift_out_not0001_0 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000021/O ;
  wire \out/bitcounter_not0001_SW0/O ;
  wire \in/pstate_mux0000<2>18/O ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O ;
  wire \in/baud1/N01 ;
  wire \in/dout<2>1/O ;
  wire \Madd_data_add0000_lut<1>_0 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_1610 ;
  wire N11;
  wire \in/control<2>/DYMUX_1690 ;
  wire \in/control<2>/CLKINV_1687 ;
  wire \in/control<2>/CEINV_1686 ;
  wire \in/shift<5>/DXMUX_1717 ;
  wire \in/shift<5>/DYMUX_1709 ;
  wire \in/shift<5>/SRINV_1707 ;
  wire \in/shift<5>/CLKINV_1706 ;
  wire \in/shift<5>/CEINV_1705 ;
  wire \in/control<0>/DYMUX_1647 ;
  wire \in/control<0>/BYINV_1646 ;
  wire \in/control<0>/CLKINV_1644 ;
  wire \in/control<0>/CEINV_1643 ;
  wire \in/shift<3>/DXMUX_1674 ;
  wire \in/shift<3>/DYMUX_1666 ;
  wire \in/shift<3>/SRINV_1664 ;
  wire \in/shift<3>/CLKINV_1663 ;
  wire \in/shift<3>/CEINV_1662 ;
  wire \in/shift<1>/DXMUX_1631 ;
  wire \in/shift<1>/DYMUX_1623 ;
  wire \in/shift<1>/SRINV_1621 ;
  wire \in/shift<1>/CLKINV_1620 ;
  wire \in/shift<1>/CEINV_1619 ;
  wire \in/bitcounter<3>/DXMUX_2360 ;
  wire \in/Mcount_bitcounter3 ;
  wire N21_pack_3;
  wire \in/bitcounter<3>/CLKINV_2343 ;
  wire \in/bitcounter<3>/CEINV_2342 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_2299 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_2290 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_2280 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_2279 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_2278 ;
  wire \out/baud1/baud_cmp_eq0000822_2130 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_2219 ;
  wire \in/fifo1/N9 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_2205 ;
  wire \in/fifo1/Result<1>1 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_2195 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_2194 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_2193 ;
  wire \out/pstate_FSM_FFd1/DXMUX_2161 ;
  wire \out/pstate_FSM_FFd1-In_2158 ;
  wire N23_pack_2;
  wire \out/pstate_FSM_FFd1/CLKINV_2145 ;
  wire \in/bitcounter<0>/DXMUX_2040 ;
  wire \in/Mcount_bitcounter ;
  wire \in/bittime ;
  wire \in/bitcounter<0>/CLKINV_2023 ;
  wire \in/bitcounter<0>/CEINV_2022 ;
  wire dout_1__and0001;
  wire dout_1__and0000;
  wire N31;
  wire \in/baud1/baud_cmp_eq0000810_2380 ;
  wire \in/fifo1/N01 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056_2423 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb ;
  wire \in/baud1/baud/DYMUX_2401 ;
  wire \in/baud1/baud/CLKINV_2398 ;
  wire \in/baud1/baud/CEINV_2397 ;
  wire \in/bitcounter_not0001 ;
  wire \out/to_shift<1>/DXMUX_2451 ;
  wire \out/to_shift<1>/DYMUX_2444 ;
  wire \out/to_shift<1>/SRINV_2442 ;
  wire \out/to_shift<1>/CLKINV_2441 ;
  wire \out/to_shift<1>/CEINV_2440 ;
  wire \out/bitcounter<0>/DXMUX_2113 ;
  wire \out/Mcount_bitcounter ;
  wire \out/N2_pack_2 ;
  wire \out/bitcounter<0>/CLKINV_2096 ;
  wire \out/bitcounter<0>/CEINV_2095 ;
  wire \in/control<1>/DXMUX_2076 ;
  wire \in/control_1_mux0000 ;
  wire \in/control_2_not0001 ;
  wire \in/control<1>/CLKINV_2057 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX_2264 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000062_2261 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX_2250 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_2240 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_2239 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_2238 ;
  wire \in/empty/DYMUX_2486 ;
  wire \in/empty/CLKINV_2484 ;
  wire \out/to_shift<3>/DXMUX_2520 ;
  wire \out/to_shift<3>/DYMUX_2513 ;
  wire \out/to_shift<3>/SRINV_2511 ;
  wire \out/to_shift<3>/CLKINV_2510 ;
  wire \out/to_shift<3>/CEINV_2509 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ;
  wire \in/fifo1/N3 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_2789 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_2782 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_2780 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_2779 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_2778 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX_2875 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV_2874 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX_2868 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV_2867 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_2866 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_2865 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_2839 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_2830 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_2828 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_2827 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_2826 ;
  wire \out/bitcounter<3>/DXMUX_3021 ;
  wire \out/Mcount_bitcounter3 ;
  wire N33_pack_2;
  wire \out/bitcounter<3>/CLKINV_3005 ;
  wire \out/bitcounter<3>/CEINV_3004 ;
  wire \out/bittimer<0>/DXMUX_2639 ;
  wire N15;
  wire \out/bittimer<0>/DYMUX_2622 ;
  wire \out/bittimer<0>/SRINV_2612 ;
  wire \out/bittimer<0>/CLKINV_2611 ;
  wire \out/bittimer<0>/CEINV_2610 ;
  wire N40;
  wire N50;
  wire \pstate_FSM_FFd4/DYMUX_2926 ;
  wire \pstate_FSM_FFd4/BYINV_2925 ;
  wire \pstate_FSM_FFd4/SRINV_2924 ;
  wire \pstate_FSM_FFd4/CLKINV_2923 ;
  wire \out/to_shift<5>/DXMUX_2544 ;
  wire \out/to_shift<5>/DYMUX_2537 ;
  wire \out/to_shift<5>/SRINV_2535 ;
  wire \out/to_shift<5>/CLKINV_2534 ;
  wire \out/to_shift<5>/CEINV_2533 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_2739 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_2730 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_2728 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_2727 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_2726 ;
  wire \in/loaded_not0001 ;
  wire N46_pack_1;
  wire \in/fifo1/N7 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_2813 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_2806 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_2804 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_2803 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_2802 ;
  wire \in/bitcounter<2>/FFX/RST ;
  wire \in/bitcounter<2>/DXMUX_2911 ;
  wire \in/Mcount_bitcounter2 ;
  wire N27;
  wire \in/bitcounter<2>/CLKINV_2892 ;
  wire \in/bitcounter<2>/CEINV_2891 ;
  wire \out/bitcounter<3>/FFX/RSTAND_3027 ;
  wire \out/pstate_FSM_FFd2/FFX/RST ;
  wire \out/pstate_FSM_FFd2/DXMUX_2984 ;
  wire \out/pstate_FSM_FFd2-In ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en ;
  wire \out/pstate_FSM_FFd2/CLKINV_2968 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ;
  wire \out/ld_shift_pack_1 ;
  wire \out/to_shift<7>/DXMUX_2568 ;
  wire \out/to_shift<7>/DYMUX_2561 ;
  wire \out/to_shift<7>/SRINV_2559 ;
  wire \out/to_shift<7>/CLKINV_2558 ;
  wire \out/to_shift<7>/CEINV_2557 ;
  wire \in/wr_control ;
  wire N54;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_2689 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_2682 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_2680 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_2679 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_2678 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_2713 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_2706 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_2704 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_2703 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_2702 ;
  wire \out/bitcounter<2>/FFX/RST ;
  wire \out/bitcounter<2>/DXMUX_3059 ;
  wire \out/Mcount_bitcounter2 ;
  wire N34;
  wire \out/bitcounter<2>/CLKINV_3042 ;
  wire \out/bitcounter<2>/CEINV_3041 ;
  wire \in/frame_error<7>/DXMUX_1990 ;
  wire \in/frame_error<7>/DYMUX_1981 ;
  wire \in/frame_error<7>/SRINV_1979 ;
  wire \in/frame_error<7>/CLKINV_1978 ;
  wire \in/frame_error<7>/CEINV_1977 ;
  wire \in/frame_error<3>/DXMUX_1934 ;
  wire \in/frame_error<3>/DYMUX_1925 ;
  wire \in/frame_error<3>/SRINV_1923 ;
  wire \in/frame_error<3>/CLKINV_1922 ;
  wire \in/frame_error<3>/CEINV_1921 ;
  wire \in/pstate<1>/DXMUX_1768 ;
  wire N13_pack_2;
  wire \in/pstate<1>/CLKINV_1751 ;
  wire \in/shift<9>/DXMUX_1844 ;
  wire \in/shift<9>/DYMUX_1836 ;
  wire \in/shift<9>/SRINV_1834 ;
  wire \in/shift<9>/CLKINV_1833 ;
  wire \in/shift<9>/CEINV_1832 ;
  wire \in/pstate<2>/DXMUX_1907 ;
  wire \in/pstate_mux0000<3>2_pack_1 ;
  wire \in/pstate<2>/CLKINV_1889 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX_1736 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX_1731 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_1729 ;
  wire \in/pstate_mux0000<2>10_1822 ;
  wire \in/pstate_mux0000<2>4_pack_1 ;
  wire \in/shift<7>/DXMUX_1794 ;
  wire \in/shift<7>/DYMUX_1786 ;
  wire \in/shift<7>/SRINV_1784 ;
  wire \in/shift<7>/CLKINV_1783 ;
  wire \in/shift<7>/CEINV_1782 ;
  wire \in/frame_error<1>/DXMUX_1871 ;
  wire \in/frame_error<1>/DYMUX_1862 ;
  wire \in/frame_error<1>/SRINV_1860 ;
  wire \in/frame_error<1>/CLKINV_1859 ;
  wire \in/frame_error<1>/CEINV_1858 ;
  wire \in/frame_error<5>/DXMUX_1962 ;
  wire \in/frame_error<5>/DYMUX_1953 ;
  wire \in/frame_error<5>/SRINV_1951 ;
  wire \in/frame_error<5>/CLKINV_1950 ;
  wire \in/frame_error<5>/CEINV_1949 ;
  wire \rx/INBUF ;
  wire \fsm/INBUF ;
  wire \reset/INBUF ;
  wire \Led<0>/O ;
  wire \tx/O ;
  wire \Led<1>/O ;
  wire \Led<7>/O ;
  wire \pstate_FSM_FFd2/FFX/RST ;
  wire \pstate_FSM_FFd2/DXMUX_3130 ;
  wire \pstate_FSM_FFd2-In_3127 ;
  wire N9_pack_2;
  wire \pstate_FSM_FFd2/CLKINV_3112 ;
  wire \in/fifo1/N2 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ;
  wire \in/pstate<5>/FFY/RST ;
  wire \in/pstate<5>/DYMUX_3224 ;
  wire \in/pstate<5>/CLKINV_3221 ;
  wire \out/empty/DYMUX_3259 ;
  wire \out/empty/CLKINV_3256 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_3240 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ;
  wire \Led<6>/O ;
  wire \Led<5>/O ;
  wire \clk/INBUF ;
  wire \Led<3>/O ;
  wire \out/baud1/timer<2>/FFX/RST ;
  wire \out/baud1/timer<2>/DXMUX_3095 ;
  wire N29;
  wire \out/baud1/timer<2>/CLKINV_3077 ;
  wire \Led<4>/O ;
  wire \out/baud1/baud/FFY/RST ;
  wire \out/baud1/baud/DYMUX_3170 ;
  wire \out/baud1/baud/CLKINV_3167 ;
  wire \out/baud1/baud/CEINV_3166 ;
  wire \in/full/DYMUX_3248 ;
  wire \in/full/CLKINV_3246 ;
  wire \in/loaded/FFX/RST ;
  wire \in/loaded/DXMUX_3209 ;
  wire \in/loaded/FXMUX_3208 ;
  wire \in/loaded_mux0000_3206 ;
  wire N25_pack_1;
  wire \in/loaded/CLKINVNOT ;
  wire \in/loaded/CEINV_3191 ;
  wire \Led<2>/O ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \N51/F5MUX_3779 ;
  wire N57;
  wire \N51/BXINV_3772 ;
  wire N56;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000073_4089 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000029/O_pack_1 ;
  wire \N53/F5MUX_3804 ;
  wire N59;
  wire \N53/BXINV_3797 ;
  wire N58;
  wire \data<3>/DXMUX_3749 ;
  wire \data<3>/F5MUX_3747 ;
  wire N61;
  wire \data<3>/BXINV_3739 ;
  wire N60;
  wire \data<3>/CLKINV_3731 ;
  wire \data<3>/CEINV_3730 ;
  wire \out/baud1/timer<3>/DXMUX_3865 ;
  wire \out/baud1/N01_pack_2 ;
  wire \out/baud1/timer<3>/CLKINV_3849 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB3 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB2 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB1 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB0 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB31 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB30 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB29 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB28 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB27 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB26 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB23 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB22 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB21 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB20 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB19 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB18 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB15 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB14 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB13 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB12 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB11 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB10 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB7 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB6 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB5 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB4 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB3 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB2 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA3 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA2 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA1 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA0 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA31 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA30 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA29 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA28 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA27 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA26 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA25 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA24 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA23 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA22 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA21 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA20 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA19 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA18 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA17 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA16 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA15 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA14 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA13 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA12 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA11 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA10 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA9 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA8 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA7 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA6 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA5 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA4 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA3 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA2 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA1 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA0 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPA3 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPA2 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPA1 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPA0 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA31 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA30 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA29 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA28 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA27 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA26 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA25 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA24 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA23 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA22 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA21 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA20 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA19 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA18 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA17 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA16 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA15 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA14 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA13 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA12 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA11 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA10 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA9 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA8 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA7 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA6 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA5 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA4 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA3 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA2 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA1 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA0 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB3 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB2 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB1 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB0 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB31 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB30 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB29 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB28 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB27 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB26 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB25 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB23 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB22 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB21 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB20 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB19 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB18 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB15 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB14 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB13 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB12 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB11 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB10 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB7 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB6 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB5 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB4 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB3 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA3 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA2 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA1 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA0 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA31 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA30 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA29 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA28 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA27 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA26 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA25 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA24 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA23 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA22 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA21 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA20 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA19 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA18 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA17 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA16 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA15 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA14 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA13 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA12 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA11 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA10 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA9 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA8 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA7 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA6 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA5 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA4 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA3 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA2 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA1 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA0 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB3 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB2 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB1 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB0 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB31 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB30 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB29 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB28 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB27 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB26 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB25 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB24 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB23 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB22 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB21 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB20 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB19 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB18 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB17 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB16 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB15 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB14 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB13 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB12 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB11 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB10 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB9 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB8 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB7 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB6 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB5 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB4 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB3 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB2 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB1 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB0 ;
  wire \out/N8 ;
  wire \out/pstate_FSM_FFd1-In3_SW0/O_pack_1 ;
  wire \data<5>/DXMUX_3963 ;
  wire \data_add0000[5] ;
  wire \Madd_data_add0000_xor<5>11_SW0/O_pack_1 ;
  wire \data<5>/CLKINV_3947 ;
  wire \data<5>/CEINV_3946 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_3833 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FXMUX_3832 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux00003168/O_pack_1 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_3818 ;
  wire \data<4>/DXMUX_3926 ;
  wire \data_add0000[4] ;
  wire \Madd_data_add0000_xor<4>12_SW0/O_pack_1 ;
  wire \data<4>/CLKINV_3909 ;
  wire \data<4>/CEINV_3908 ;
  wire \data<6>/DXMUX_4000 ;
  wire \data_add0000[6] ;
  wire \Madd_data_add0000_xor<6>12_SW0/O_pack_1 ;
  wire \data<6>/CLKINV_3982 ;
  wire \data<6>/CEINV_3981 ;
  wire \out/baud1/baud_cmp_eq0000 ;
  wire \out/baud1/baud_cmp_eq0000810_pack_1 ;
  wire \data<7>/DXMUX_4061 ;
  wire \data_add0000[7] ;
  wire N38_pack_1;
  wire \data<7>/CLKINV_4045 ;
  wire \data<7>/CEINV_4044 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_4143 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_4142 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux0000 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux00005/O_pack_2 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_4128 ;
  wire \in/baud1/baud_cmp_eq0000 ;
  wire \in/baud1/baud_cmp_eq0000822/O_pack_1 ;
  wire \in/pstate_mux0000<3>15_4429 ;
  wire \in/N13_pack_1 ;
  wire \data<1>/DXMUX_4332 ;
  wire \data_add0000[1] ;
  wire \Madd_data_add0000_cy<0>_pack_2 ;
  wire \data<1>/CLKINV_4315 ;
  wire \data<1>/CEINV_4314 ;
  wire \out/bitcounter<1>/DYMUX_4575 ;
  wire \out/Mcount_bitcounter1 ;
  wire \out/bitcounter<1>/CLKINV_4565 ;
  wire \out/bitcounter<1>/CEINV_4564 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_4367 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O_pack_2 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_4349 ;
  wire \out/shift_out<3>/DXMUX_4748 ;
  wire \out/shift_out<3>/DYMUX_4734 ;
  wire \out/shift_out<3>/SRINV_4726 ;
  wire \out/shift_out<3>/CLKINV_4725 ;
  wire \out/shift_out<3>/CEINV_4724 ;
  wire \in/bittimer<3>/DXMUX_4507 ;
  wire \in/bittimer<3>/DYMUX_4492 ;
  wire \in/bittimer<3>/SRINV_4483 ;
  wire \in/bittimer<3>/CLKINV_4482 ;
  wire \in/bittimer<3>/CEINV_4481 ;
  wire \out/baud1/timer<1>/DXMUX_4550 ;
  wire \out/baud1/timer<1>/DYMUX_4535 ;
  wire \out/baud1/timer<1>/SRINV_4527 ;
  wire \out/baud1/timer<1>/CLKINV_4526 ;
  wire \out/shift_out<1>/DXMUX_4704 ;
  wire \out/shift_out<1>/DYMUX_4690 ;
  wire \out/shift_out<1>/SRINV_4681 ;
  wire \out/shift_out<1>/CLKINV_4680 ;
  wire \out/shift_out<1>/CEINV_4679 ;
  wire \in/baud1/timer<0>/DXMUX_4401 ;
  wire \in/baud1/N01_pack_2 ;
  wire \in/baud1/timer<0>/CLKINV_4383 ;
  wire \in/pstate<3>/DXMUX_4295 ;
  wire \in/pstate_mux0000<2>18/O_pack_1 ;
  wire \in/pstate<3>/CLKINV_4278 ;
  wire \data<2>/DXMUX_4462 ;
  wire \data_add0000[2] ;
  wire \in/dout<2>1/O_pack_1 ;
  wire \data<2>/CLKINV_4444 ;
  wire \data<2>/CEINV_4443 ;
  wire \out/baud1/timer<5>/DXMUX_4618 ;
  wire \out/baud1/timer<5>/DYMUX_4604 ;
  wire \out/baud1/timer<5>/SRINV_4595 ;
  wire \out/baud1/timer<5>/CLKINV_4594 ;
  wire \out/baud1/timer<7>/DXMUX_4660 ;
  wire \out/baud1/timer<7>/DYMUX_4646 ;
  wire \out/baud1/timer<7>/SRINV_4637 ;
  wire \out/baud1/timer<7>/CLKINV_4636 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_4930 ;
  wire \in/fifo1/Result<3>1 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_4917 ;
  wire \in/fifo1/Result<2>1 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_4908 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_4907 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_4906 ;
  wire \trans<1>/DXMUX_5224 ;
  wire Mcount_trans1;
  wire \trans<1>/DYMUX_5210 ;
  wire Mcount_trans;
  wire \trans<1>/SRINV_5201 ;
  wire \trans<1>/CLKINV_5200 ;
  wire \data<0>/DYMUX_5042 ;
  wire \data_add0000[0] ;
  wire \data<0>/CLKINV_5032 ;
  wire \data<0>/CEINV_5031 ;
  wire \out/shift_out<7>/DXMUX_4836 ;
  wire \out/shift_out<7>/DYMUX_4822 ;
  wire \out/shift_out<7>/SRINV_4814 ;
  wire \out/shift_out<7>/CLKINV_4813 ;
  wire \out/shift_out<7>/CEINV_4812 ;
  wire \out/shift_out<8>/DYMUX_4887 ;
  wire \out/shift_out<8>/CLKINV_4877 ;
  wire \out/shift_out<8>/CEINV_4876 ;
  wire \out/shift_out<5>/DXMUX_4792 ;
  wire \out/shift_out<5>/DYMUX_4778 ;
  wire \out/shift_out<5>/SRINV_4770 ;
  wire \out/shift_out<5>/CLKINV_4769 ;
  wire \out/shift_out<5>/CEINV_4768 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_5084 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX_5070 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_5062 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_5061 ;
  wire \out/bittimer<3>/DXMUX_5129 ;
  wire \out/bittimer<3>/DYMUX_5114 ;
  wire \out/bittimer<3>/SRINV_5105 ;
  wire \out/bittimer<3>/CLKINV_5104 ;
  wire \out/bittimer<3>/CEINV_5103 ;
  wire \pstate_FSM_FFd3/DYMUX_5153 ;
  wire \pstate_FSM_FFd3-In ;
  wire \pstate_FSM_FFd3/CLKINV_5143 ;
  wire \in/in_two/DYMUX_5185 ;
  wire \in/Mshreg_in_two ;
  wire \in/in_two/DIG_MUX_5174 ;
  wire \in/in_two/CLKINV_5172 ;
  wire \in/in_two/WSG ;
  wire \in/in_two/SRINV_5168 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_5016 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_5001 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_4992 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_4991 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_4990 ;
  wire \in/frame_error<8>/DYMUX_4861 ;
  wire \in/frame_error_8_or0000 ;
  wire \in/frame_error<8>/CLKINV_4850 ;
  wire \in/frame_error<8>/CEINV_4849 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_4972 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_4959 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_4950 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_4949 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_4948 ;
  wire \in/baud1/Madd_timer_addsub0000_cy[5] ;
  wire \in/baud1/Madd_timer_addsub0000_cy<3>_pack_1 ;
  wire \out/bitcounter_not0001_4264 ;
  wire \out/bitcounter_not0001_SW0/O_pack_1 ;
  wire \in/fifo1/N5 ;
  wire \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000021/O_pack_1 ;
  wire \out/baud1/Madd_timer_addsub0000_cy[5] ;
  wire \out/baud1/Madd_timer_addsub0000_cy<3>_pack_1 ;
  wire \out/shift_out_not0001 ;
  wire \out/N7_pack_1 ;
  wire \in/pstate<4>/DXMUX_5267 ;
  wire \in/pstate<4>/DYMUX_5251 ;
  wire \in/pstate<4>/GYMUX_5250 ;
  wire \in/finish_pack_1 ;
  wire \in/pstate<4>/SRINV_5243 ;
  wire \in/pstate<4>/CLKINV_5242 ;
  wire \in/baud1/timer<5>/DXMUX_5443 ;
  wire \in/baud1/timer<5>/DYMUX_5429 ;
  wire \in/baud1/timer<5>/SRINV_5420 ;
  wire \in/baud1/timer<5>/CLKINV_5419 ;
  wire \in/bitcounter<1>/DXMUX_5640 ;
  wire \in/Mcount_bitcounter1 ;
  wire N11_pack_2;
  wire \in/bitcounter<1>/CLKINV_5622 ;
  wire \in/bitcounter<1>/CEINV_5621 ;
  wire \in/baud1/timer<3>/DXMUX_5401 ;
  wire \in/baud1/timer<3>/DYMUX_5387 ;
  wire \in/baud1/timer<3>/SRINV_5379 ;
  wire \in/baud1/timer<3>/CLKINV_5378 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX_5337 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_5336 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or0000 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_5328 ;
  wire \in/pstate<0>/DYMUX_5314 ;
  wire \in/pstate<0>/CLKINV_5305 ;
  wire \in/baud1/timer<7>/DXMUX_5485 ;
  wire \in/baud1/timer<7>/DYMUX_5471 ;
  wire \in/baud1/timer<7>/SRINV_5462 ;
  wire \in/baud1/timer<7>/CLKINV_5461 ;
  wire \in/baud1/timer<1>/DYMUX_5359 ;
  wire \in/baud1/timer<1>/CLKINV_5349 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX_5566 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV_5565 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV_5563 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV_5562 ;
  wire \addr_rx<1>_pack_1 ;
  wire \dout<1>/DYMUX_5539 ;
  wire \dout<1>/GYMUX_5538 ;
  wire \dout<1>/CLKINV_5528 ;
  wire \out/bittime ;
  wire \in/load/DYMUX_5291 ;
  wire \in/load/GYMUX_5290 ;
  wire \in/ld_shift_5288 ;
  wire \in/load/CLKINV_5282 ;
  wire \in/fifo1/N11 ;
  wire \in/rd_fifo_pack_1 ;
  wire \in/bittimer<0>/DXMUX_5602 ;
  wire \in/bittimer<0>/DYMUX_5593 ;
  wire \in/bittimer<0>/SRINV_5583 ;
  wire \in/bittimer<0>/CLKINV_5582 ;
  wire \in/bittimer<0>/CEINV_5581 ;
  wire \in/control<0>/FFY/RSTAND_1653 ;
  wire \in/control<2>/FFY/RSTAND_1696 ;
  wire \in/pstate<1>/FFX/RSTAND_1773 ;
  wire \in/pstate<2>/FFX/RSTAND_1912 ;
  wire \in/bitcounter<0>/FFX/RSTAND_2046 ;
  wire \in/control<1>/FFX/RSTAND_2081 ;
  wire \out/pstate_FSM_FFd1/FFX/RSTAND_2166 ;
  wire \out/bitcounter<0>/FFX/RSTAND_2119 ;
  wire \in/baud1/baud/FFY/RSTAND_2407 ;
  wire \in/bitcounter<3>/FFX/RSTAND_2366 ;
  wire \dout<1>/FFY/SET ;
  wire \dout<1>/FFY/RSTAND_5546 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SET ;
  wire \in/bitcounter<1>/FFX/RSTAND_5646 ;
  wire \out/empty/FFY/SET ;
  wire \data<3>/FFX/SET ;
  wire \data<5>/FFX/SET ;
  wire \out/baud1/timer<3>/FFX/RSTAND_3870 ;
  wire \data<4>/FFX/SET ;
  wire \data<6>/FFX/SET ;
  wire \data<7>/FFX/SET ;
  wire \in/pstate<3>/FFX/RSTAND_4300 ;
  wire \in/baud1/timer<0>/FFX/RSTAND_4406 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SET ;
  wire \data<1>/FFX/SET ;
  wire \data<2>/FFX/SET ;
  wire \out/bitcounter<1>/FFY/RSTAND_4581 ;
  wire \out/shift_out<8>/FFY/SET ;
  wire \in/frame_error<8>/FFY/RSTAND_4867 ;
  wire \data<0>/FFY/SET ;
  wire \pstate_FSM_FFd3/FFY/RSTAND_5158 ;
  wire \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SET ;
  wire \in/load/FFY/RSTAND_5296 ;
  wire \in/pstate<0>/FFY/SET ;
  wire \in/baud1/timer<1>/FFY/RSTAND_5364 ;
  wire \NlwBufferSignal_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> ;
  wire \NlwBufferSignal_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> ;
  wire \NlwBufferSignal_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> ;
  wire \NlwBufferSignal_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<2> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> ;
  wire \NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> ;
  wire VCC;
  wire GND;
  wire \NLW_in/Mshreg_in_two/SRL16E_Q15_UNCONNECTED ;
  wire [9 : 0] \in/shift ;
  wire [2 : 0] \in/control ;
  wire [5 : 0] \in/pstate ;
  wire [3 : 0] \in/bittimer ;
  wire [8 : 0] \in/frame_error ;
  wire [3 : 0] \in/bitcounter ;
  wire [3 : 0] \out/bitcounter ;
  wire [7 : 0] \out/baud1/timer ;
  wire [3 : 0] \out/bittimer ;
  wire [3 : 0] \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count ;
  wire [3 : 0] \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 ;
  wire [3 : 0] \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count ;
  wire [3 : 0] \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 ;
  wire [3 : 0] \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count ;
  wire [1 : 1] addr_rx;
  wire [7 : 0] \in/dout_fifo ;
  wire [7 : 0] \in/baud1/timer ;
  wire [7 : 0] \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem ;
  wire [7 : 0] \out/to_shift ;
  wire [3 : 0] \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 ;
  wire [1 : 0] trans;
  wire [1 : 1] dout;
  wire [7 : 0] data;
  wire [8 : 0] \out/shift_out ;
  wire [0 : 0] Madd_data_add0000_cy;
  wire [3 : 1] \out/fifo1/Result ;
  wire [3 : 1] \in/fifo1/Result ;
  wire [3 : 1] \out/Result ;
  wire [5 : 1] \in/pstate_mux0000 ;
  wire [7 : 0] \out/baud1/timer_mux0000 ;
  wire [8 : 0] \out/shift_out_mux0000 ;
  wire [3 : 1] \in/Result ;
  wire [7 : 0] \in/baud1/timer_mux0000 ;
  wire [1 : 1] Madd_data_add0000_lut;
  initial $sdf_annotate("netgen/par/uart_timesim.sdf");
  X_BUF #(
    .LOC ( "SLICE_X21Y13" ))
  \in/control<2>/DYMUX  (
    .I(\in/control [0]),
    .O(\in/control<2>/DYMUX_1690 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y13" ))
  \in/control<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/control<2>/CLKINV_1687 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y13" ))
  \in/control<2>/CEINV  (
    .I(\in/control_2_not0001 ),
    .O(\in/control<2>/CEINV_1686 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y21" ))
  \in/shift<5>/DXMUX  (
    .I(\in/shift [6]),
    .O(\in/shift<5>/DXMUX_1717 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y21" ))
  \in/shift<5>/DYMUX  (
    .I(\in/shift [5]),
    .O(\in/shift<5>/DYMUX_1709 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y21" ))
  \in/shift<5>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/shift<5>/SRINV_1707 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y21" ))
  \in/shift<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/shift<5>/CLKINV_1706 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y21" ))
  \in/shift<5>/CEINV  (
    .I(\in/ld_shift_0 ),
    .O(\in/shift<5>/CEINV_1705 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y10" ))
  \in/control<0>/DYMUX  (
    .I(\in/control<0>/BYINV_1646 ),
    .O(\in/control<0>/DYMUX_1647 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y10" ))
  \in/control<0>/BYINV  (
    .I(1'b1),
    .O(\in/control<0>/BYINV_1646 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y10" ))
  \in/control<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/control<0>/CLKINV_1644 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y10" ))
  \in/control<0>/CEINV  (
    .I(\in/wr_control ),
    .O(\in/control<0>/CEINV_1643 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y20" ))
  \in/shift<3>/DXMUX  (
    .I(\in/shift [4]),
    .O(\in/shift<3>/DXMUX_1674 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y20" ))
  \in/shift<3>/DYMUX  (
    .I(\in/shift [3]),
    .O(\in/shift<3>/DYMUX_1666 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y20" ))
  \in/shift<3>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/shift<3>/SRINV_1664 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y20" ))
  \in/shift<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/shift<3>/CLKINV_1663 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y20" ))
  \in/shift<3>/CEINV  (
    .I(\in/ld_shift_0 ),
    .O(\in/shift<3>/CEINV_1662 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y20" ))
  \in/shift<1>/DXMUX  (
    .I(\in/shift [2]),
    .O(\in/shift<1>/DXMUX_1631 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y20" ))
  \in/shift<1>/DYMUX  (
    .I(\in/shift [1]),
    .O(\in/shift<1>/DYMUX_1623 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y20" ))
  \in/shift<1>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/shift<1>/SRINV_1621 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y20" ))
  \in/shift<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/shift<1>/CLKINV_1620 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y20" ))
  \in/shift<1>/CEINV  (
    .I(\in/ld_shift_0 ),
    .O(\in/shift<1>/CEINV_1619 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y18" ))
  \in/bitcounter<3>/DXMUX  (
    .I(\in/Mcount_bitcounter3 ),
    .O(\in/bitcounter<3>/DXMUX_2360 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y18" ))
  \in/bitcounter<3>/YUSED  (
    .I(N21_pack_3),
    .O(N21)
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y18" ))
  \in/bitcounter<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/bitcounter<3>/CLKINV_2343 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y18" ))
  \in/bitcounter<3>/CEINV  (
    .I(\in/bitcounter_not0001_0 ),
    .O(\in/bitcounter<3>/CEINV_2342 )
  );
  X_INV #(
    .LOC ( "SLICE_X2Y32" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_2299 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y32" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX  (
    .I(\out/fifo1/Result [1]),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_2290 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y32" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_2280 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y32" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_2279 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y32" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_2278 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y31" ))
  \out/baud1/baud_cmp_eq0000822/XUSED  (
    .I(\out/baud1/baud_cmp_eq0000822_2130 ),
    .O(\out/baud1/baud_cmp_eq0000822_0 )
  );
  X_INV #(
    .LOC ( "SLICE_X10Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_2219 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/XUSED  (
    .I(\in/fifo1/N9 ),
    .O(\in/fifo1/N9_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX  (
    .I(\in/fifo1/Result<1>1 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_2205 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV  (
    .I(\in/pstate [0]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_2195 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_2194 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_2193 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y35" ))
  \out/pstate_FSM_FFd1/DXMUX  (
    .I(\out/pstate_FSM_FFd1-In_2158 ),
    .O(\out/pstate_FSM_FFd1/DXMUX_2161 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y35" ))
  \out/pstate_FSM_FFd1/YUSED  (
    .I(N23_pack_2),
    .O(N23)
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y35" ))
  \out/pstate_FSM_FFd1/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/pstate_FSM_FFd1/CLKINV_2145 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y18" ))
  \in/bitcounter<0>/DXMUX  (
    .I(\in/Mcount_bitcounter ),
    .O(\in/bitcounter<0>/DXMUX_2040 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y18" ))
  \in/bitcounter<0>/YUSED  (
    .I(\in/bittime ),
    .O(\in/bittime_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y18" ))
  \in/bitcounter<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/bitcounter<0>/CLKINV_2023 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y18" ))
  \in/bitcounter<0>/CEINV  (
    .I(\in/bitcounter_not0001_0 ),
    .O(\in/bitcounter<0>/CEINV_2022 )
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y23" ))
  \N31/XUSED  (
    .I(N31),
    .O(N31_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y23" ))
  \N31/YUSED  (
    .I(\in/baud1/baud_cmp_eq0000810_2380 ),
    .O(\in/baud1/baud_cmp_eq0000810_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y2" ))
  \in/fifo1/N01/XUSED  (
    .I(\in/fifo1/N01 ),
    .O(\in/fifo1/N01_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y2" ))
  \in/fifo1/N01/YUSED  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056_2423 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056_0 )
  );
  X_INV #(
    .LOC ( "SLICE_X24Y22" ))
  \in/baud1/baud/DYMUX  (
    .I(\in/baud1/baud_1387 ),
    .O(\in/baud1/baud/DYMUX_2401 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y22" ))
  \in/baud1/baud/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/baud1/baud/CLKINV_2398 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y22" ))
  \in/baud1/baud/CEINV  (
    .I(\in/baud1/baud_cmp_eq0000_0 ),
    .O(\in/baud1/baud/CEINV_2397 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y20" ))
  \in/bitcounter_not0001/YUSED  (
    .I(\in/bitcounter_not0001 ),
    .O(\in/bitcounter_not0001_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y40" ))
  \out/to_shift<1>/DXMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [1]),
    .O(\out/to_shift<1>/DXMUX_2451 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y40" ))
  \out/to_shift<1>/DYMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [0]),
    .O(\out/to_shift<1>/DYMUX_2444 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y40" ))
  \out/to_shift<1>/SRINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\out/to_shift<1>/SRINV_2442 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y40" ))
  \out/to_shift<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/to_shift<1>/CLKINV_2441 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y40" ))
  \out/to_shift<1>/CEINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\out/to_shift<1>/CEINV_2440 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y36" ))
  \out/bitcounter<0>/DXMUX  (
    .I(\out/Mcount_bitcounter ),
    .O(\out/bitcounter<0>/DXMUX_2113 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y36" ))
  \out/bitcounter<0>/YUSED  (
    .I(\out/N2_pack_2 ),
    .O(\out/N2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y36" ))
  \out/bitcounter<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/bitcounter<0>/CLKINV_2096 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y36" ))
  \out/bitcounter<0>/CEINV  (
    .I(\out/bitcounter_not0001_0 ),
    .O(\out/bitcounter<0>/CEINV_2095 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y12" ))
  \in/control<1>/DXMUX  (
    .I(\in/control_1_mux0000 ),
    .O(\in/control<1>/DXMUX_2076 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y12" ))
  \in/control<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/control<1>/CLKINV_2057 )
  );
  X_INV #(
    .LOC ( "SLICE_X9Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX_2264 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/XUSED  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000062_2261 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000062_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX  (
    .I(\in/fifo1/Result [1]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX_2250 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV  (
    .I(\in/pstate [0]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_2240 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_2239 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_2238 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y2" ))
  \in/empty/DYMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FXMUX_3832 ),
    .O(\in/empty/DYMUX_2486 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y2" ))
  \in/empty/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/empty/CLKINV_2484 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y40" ))
  \out/to_shift<3>/DXMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [3]),
    .O(\out/to_shift<3>/DXMUX_2520 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y40" ))
  \out/to_shift<3>/DYMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [2]),
    .O(\out/to_shift<3>/DYMUX_2513 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y40" ))
  \out/to_shift<3>/SRINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\out/to_shift<3>/SRINV_2511 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y40" ))
  \out/to_shift<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/to_shift<3>/CLKINV_2510 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y40" ))
  \out/to_shift<3>/CEINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\out/to_shift<3>/CEINV_2509 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y32" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en/YUSED  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y1" ))
  \in/fifo1/N3/XUSED  (
    .I(\in/fifo1/N3 ),
    .O(\in/fifo1/N3_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y1" ))
  \in/fifo1/N3/YUSED  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_2789 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_2782 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV  (
    .I(\in/pstate [0]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_2780 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_2779 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_2778 )
  );
  X_BUF #(
    .LOC ( "SLICE_X5Y40" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV_2874 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX_2875 )
  );
  X_BUF #(
    .LOC ( "SLICE_X5Y40" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV  (
    .I(1'b0),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BXINV_2874 )
  );
  X_BUF #(
    .LOC ( "SLICE_X5Y40" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV_2867 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX_2868 )
  );
  X_BUF #(
    .LOC ( "SLICE_X5Y40" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV  (
    .I(1'b0),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/BYINV_2867 )
  );
  X_BUF #(
    .LOC ( "SLICE_X5Y40" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_2866 )
  );
  X_BUF #(
    .LOC ( "SLICE_X5Y40" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_2865 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y30" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_2839 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y30" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_2830 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y30" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_2828 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y30" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_2827 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y30" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_2826 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y37" ))
  \out/bitcounter<3>/DXMUX  (
    .I(\out/Mcount_bitcounter3 ),
    .O(\out/bitcounter<3>/DXMUX_3021 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y37" ))
  \out/bitcounter<3>/YUSED  (
    .I(N33_pack_2),
    .O(N33)
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y37" ))
  \out/bitcounter<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/bitcounter<3>/CLKINV_3005 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y37" ))
  \out/bitcounter<3>/CEINV  (
    .I(\out/bitcounter_not0001_0 ),
    .O(\out/bitcounter<3>/CEINV_3004 )
  );
  X_INV #(
    .LOC ( "SLICE_X23Y35" ))
  \out/bittimer<0>/DXMUX  (
    .I(\out/bittimer [0]),
    .O(\out/bittimer<0>/DXMUX_2639 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y35" ))
  \out/bittimer<0>/XUSED  (
    .I(N15),
    .O(N15_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y35" ))
  \out/bittimer<0>/DYMUX  (
    .I(\out/Result [1]),
    .O(\out/bittimer<0>/DYMUX_2622 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y35" ))
  \out/bittimer<0>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\out/bittimer<0>/SRINV_2612 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y35" ))
  \out/bittimer<0>/CLKINV  (
    .I(\out/baud1/baud_1432 ),
    .O(\out/bittimer<0>/CLKINV_2611 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y35" ))
  \out/bittimer<0>/CEINV  (
    .I(\out/bittime_0 ),
    .O(\out/bittimer<0>/CEINV_2610 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y12" ))
  \N40/XUSED  (
    .I(N40),
    .O(N40_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y12" ))
  \N40/YUSED  (
    .I(N50),
    .O(N50_0)
  );
  X_FF #(
    .LOC ( "SLICE_X21Y11" ),
    .INIT ( 1'b1 ))
  pstate_FSM_FFd4 (
    .I(\pstate_FSM_FFd4/DYMUX_2926 ),
    .CE(VCC),
    .CLK(\pstate_FSM_FFd4/CLKINV_2923 ),
    .SET(\pstate_FSM_FFd4/SRINV_2924 ),
    .RST(GND),
    .O(pstate_FSM_FFd4_1516)
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y11" ))
  \pstate_FSM_FFd4/DYMUX  (
    .I(\pstate_FSM_FFd4/BYINV_2925 ),
    .O(\pstate_FSM_FFd4/DYMUX_2926 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y11" ))
  \pstate_FSM_FFd4/BYINV  (
    .I(1'b0),
    .O(\pstate_FSM_FFd4/BYINV_2925 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y11" ))
  \pstate_FSM_FFd4/SRINV  (
    .I(reset_IBUF_1366),
    .O(\pstate_FSM_FFd4/SRINV_2924 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y11" ))
  \pstate_FSM_FFd4/CLKINV  (
    .I(clk_BUFGP),
    .O(\pstate_FSM_FFd4/CLKINV_2923 )
  );
  X_LUT4 #(
    .INIT ( 16'h9555 ),
    .LOC ( "SLICE_X26Y37" ))
  \out/Mcount_bitcounter_xor<3>1_SW0  (
    .ADR0(\out/bitcounter [3]),
    .ADR1(\out/bitcounter [1]),
    .ADR2(\out/bitcounter [0]),
    .ADR3(\out/bitcounter [2]),
    .O(N33_pack_2)
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y30" ))
  \out/to_shift<5>/DXMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [5]),
    .O(\out/to_shift<5>/DXMUX_2544 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y30" ))
  \out/to_shift<5>/DYMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [4]),
    .O(\out/to_shift<5>/DYMUX_2537 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y30" ))
  \out/to_shift<5>/SRINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\out/to_shift<5>/SRINV_2535 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y30" ))
  \out/to_shift<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/to_shift<5>/CLKINV_2534 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y30" ))
  \out/to_shift<5>/CEINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\out/to_shift<5>/CEINV_2533 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y31" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_2739 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y31" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_2730 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y31" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_2728 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y31" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_2727 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y31" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_2726 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y23" ))
  \in/loaded_not0001/YUSED  (
    .I(N46_pack_1),
    .O(N46)
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y2" ))
  \in/fifo1/N7/XUSED  (
    .I(\in/fifo1/N7 ),
    .O(\in/fifo1/N7_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_2813 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_2806 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV  (
    .I(\in/pstate [0]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_2804 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_2803 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_2802 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y19" ))
  \in/bitcounter<2>/FFX/RSTOR  (
    .I(reset_IBUF_1366),
    .O(\in/bitcounter<2>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y19" ),
    .INIT ( 1'b0 ))
  \in/bitcounter_2  (
    .I(\in/bitcounter<2>/DXMUX_2911 ),
    .CE(\in/bitcounter<2>/CEINV_2891 ),
    .CLK(\in/bitcounter<2>/CLKINV_2892 ),
    .SET(GND),
    .RST(\in/bitcounter<2>/FFX/RST ),
    .O(\in/bitcounter [2])
  );
  X_LUT4 #(
    .INIT ( 16'hBBBB ),
    .LOC ( "SLICE_X20Y19" ))
  \in/bitcounter_not00011_SW0  (
    .ADR0(\in/bitcounter [0]),
    .ADR1(\in/pstate [2]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(N27)
  );
  X_LUT4 #(
    .INIT ( 16'h6A6A ),
    .LOC ( "SLICE_X20Y19" ))
  \in/Mcount_bitcounter_xor<2>11  (
    .ADR0(\in/bitcounter [2]),
    .ADR1(\in/bitcounter [0]),
    .ADR2(\in/bitcounter [1]),
    .ADR3(VCC),
    .O(\in/Mcount_bitcounter2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y19" ))
  \in/bitcounter<2>/DXMUX  (
    .I(\in/Mcount_bitcounter2 ),
    .O(\in/bitcounter<2>/DXMUX_2911 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y19" ))
  \in/bitcounter<2>/YUSED  (
    .I(N27),
    .O(N27_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y19" ))
  \in/bitcounter<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/bitcounter<2>/CLKINV_2892 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y19" ))
  \in/bitcounter<2>/CEINV  (
    .I(\in/bitcounter_not0001_0 ),
    .O(\in/bitcounter<2>/CEINV_2891 )
  );
  X_LUT4 #(
    .INIT ( 16'h0D2F ),
    .LOC ( "SLICE_X26Y37" ))
  \out/Mcount_bitcounter_xor<3>1  (
    .ADR0(\out/pstate_FSM_FFd2_1423 ),
    .ADR1(\out/pstate_FSM_FFd1_1425 ),
    .ADR2(N33),
    .ADR3(N34_0),
    .O(\out/Mcount_bitcounter3 )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y37" ),
    .INIT ( 1'b0 ))
  \out/bitcounter_3  (
    .I(\out/bitcounter<3>/DXMUX_3021 ),
    .CE(\out/bitcounter<3>/CEINV_3004 ),
    .CLK(\out/bitcounter<3>/CLKINV_3005 ),
    .SET(GND),
    .RST(\out/bitcounter<3>/FFX/RSTAND_3027 ),
    .O(\out/bitcounter [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y37" ))
  \out/bitcounter<3>/FFX/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\out/bitcounter<3>/FFX/RSTAND_3027 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y34" ))
  \out/pstate_FSM_FFd2/FFX/RSTOR  (
    .I(reset_IBUF_1366),
    .O(\out/pstate_FSM_FFd2/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 1'b0 ))
  \out/pstate_FSM_FFd2  (
    .I(\out/pstate_FSM_FFd2/DXMUX_2984 ),
    .CE(VCC),
    .CLK(\out/pstate_FSM_FFd2/CLKINV_2968 ),
    .SET(GND),
    .RST(\out/pstate_FSM_FFd2/FFX/RST ),
    .O(\out/pstate_FSM_FFd2_1423 )
  );
  X_LUT4 #(
    .INIT ( 16'h222A ),
    .LOC ( "SLICE_X12Y34" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/RAM_REGOUT_EN1  (
    .ADR0(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1532 ),
    .ADR1(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1533 ),
    .ADR2(\out/pstate_FSM_FFd2_1423 ),
    .ADR3(\out/empty ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en )
  );
  X_LUT4 #(
    .INIT ( 16'hEEEF ),
    .LOC ( "SLICE_X12Y34" ))
  \out/pstate_FSM_FFd2-In1  (
    .ADR0(\out/N8_0 ),
    .ADR1(\out/pstate_FSM_FFd1_1425 ),
    .ADR2(\out/pstate_FSM_FFd2_1423 ),
    .ADR3(\out/empty ),
    .O(\out/pstate_FSM_FFd2-In )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y34" ))
  \out/pstate_FSM_FFd2/DXMUX  (
    .I(\out/pstate_FSM_FFd2-In ),
    .O(\out/pstate_FSM_FFd2/DXMUX_2984 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y34" ))
  \out/pstate_FSM_FFd2/YUSED  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y34" ))
  \out/pstate_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/pstate_FSM_FFd2/CLKINV_2968 )
  );
  X_LUT4 #(
    .INIT ( 16'h0505 ),
    .LOC ( "SLICE_X13Y32" ))
  \out/shift_out_not000111  (
    .ADR0(\out/pstate_FSM_FFd2_1423 ),
    .ADR1(VCC),
    .ADR2(\out/empty ),
    .ADR3(VCC),
    .O(\out/ld_shift_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h3133 ),
    .LOC ( "SLICE_X13Y32" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/RAM_RD_EN_FWFT1  (
    .ADR0(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1532 ),
    .ADR1(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1488 ),
    .ADR2(\out/ld_shift ),
    .ADR3(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1533 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y32" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en/XUSED  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y32" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en/YUSED  (
    .I(\out/ld_shift_pack_1 ),
    .O(\out/ld_shift )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y30" ))
  \out/to_shift<7>/DXMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [7]),
    .O(\out/to_shift<7>/DXMUX_2568 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y30" ))
  \out/to_shift<7>/DYMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [6]),
    .O(\out/to_shift<7>/DYMUX_2561 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y30" ))
  \out/to_shift<7>/SRINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O(\out/to_shift<7>/SRINV_2559 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y30" ))
  \out/to_shift<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/to_shift<7>/CLKINV_2558 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y30" ))
  \out/to_shift<7>/CEINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_regout_en_0 ),
    .O(\out/to_shift<7>/CEINV_2557 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y11" ))
  \in/wr_control/YUSED  (
    .I(N54),
    .O(N54_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_2689 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_2682 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV  (
    .I(\in/pstate [0]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_2680 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_2679 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_2678 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_2713 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_2706 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV  (
    .I(\in/pstate [0]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_2704 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_2703 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_2702 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y36" ))
  \out/bitcounter<2>/FFX/RSTOR  (
    .I(reset_IBUF_1366),
    .O(\out/bitcounter<2>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y36" ),
    .INIT ( 1'b0 ))
  \out/bitcounter_2  (
    .I(\out/bitcounter<2>/DXMUX_3059 ),
    .CE(\out/bitcounter<2>/CEINV_3041 ),
    .CLK(\out/bitcounter<2>/CLKINV_3042 ),
    .SET(GND),
    .RST(\out/bitcounter<2>/FFX/RST ),
    .O(\out/bitcounter [2])
  );
  X_LUT4 #(
    .INIT ( 16'h955D ),
    .LOC ( "SLICE_X26Y36" ))
  \out/Mcount_bitcounter_xor<3>1_SW1  (
    .ADR0(\out/bitcounter [3]),
    .ADR1(\out/bitcounter [1]),
    .ADR2(\out/bitcounter [0]),
    .ADR3(\out/bitcounter [2]),
    .O(N34)
  );
  X_LUT4 #(
    .INIT ( 16'h6A6A ),
    .LOC ( "SLICE_X26Y36" ))
  \out/Mcount_bitcounter_xor<2>11  (
    .ADR0(\out/bitcounter [2]),
    .ADR1(\out/bitcounter [1]),
    .ADR2(\out/bitcounter [0]),
    .ADR3(VCC),
    .O(\out/Mcount_bitcounter2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y36" ))
  \out/bitcounter<2>/DXMUX  (
    .I(\out/Mcount_bitcounter2 ),
    .O(\out/bitcounter<2>/DXMUX_3059 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y36" ))
  \out/bitcounter<2>/YUSED  (
    .I(N34),
    .O(N34_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y36" ))
  \out/bitcounter<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/bitcounter<2>/CLKINV_3042 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y36" ))
  \out/bitcounter<2>/CEINV  (
    .I(\out/bitcounter_not0001_0 ),
    .O(\out/bitcounter<2>/CEINV_3041 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y18" ))
  \in/frame_error<7>/DXMUX  (
    .I(\in/shift [8]),
    .O(\in/frame_error<7>/DXMUX_1990 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y18" ))
  \in/frame_error<7>/DYMUX  (
    .I(\in/shift [7]),
    .O(\in/frame_error<7>/DYMUX_1981 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y18" ))
  \in/frame_error<7>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/frame_error<7>/SRINV_1979 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y18" ))
  \in/frame_error<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/frame_error<7>/CLKINV_1978 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y18" ))
  \in/frame_error<7>/CEINV  (
    .I(\in/finish ),
    .O(\in/frame_error<7>/CEINV_1977 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y18" ))
  \in/frame_error<3>/DXMUX  (
    .I(\in/shift [4]),
    .O(\in/frame_error<3>/DXMUX_1934 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y18" ))
  \in/frame_error<3>/DYMUX  (
    .I(\in/shift [3]),
    .O(\in/frame_error<3>/DYMUX_1925 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y18" ))
  \in/frame_error<3>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/frame_error<3>/SRINV_1923 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y18" ))
  \in/frame_error<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/frame_error<3>/CLKINV_1922 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y18" ))
  \in/frame_error<3>/CEINV  (
    .I(\in/finish ),
    .O(\in/frame_error<3>/CEINV_1921 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y21" ))
  \in/pstate<1>/DXMUX  (
    .I(\in/pstate_mux0000 [4]),
    .O(\in/pstate<1>/DXMUX_1768 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y21" ))
  \in/pstate<1>/YUSED  (
    .I(N13_pack_2),
    .O(N13)
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y21" ))
  \in/pstate<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/pstate<1>/CLKINV_1751 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y20" ))
  \in/shift<9>/DXMUX  (
    .I(\in/in_two_1395 ),
    .O(\in/shift<9>/DXMUX_1844 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y20" ))
  \in/shift<9>/DYMUX  (
    .I(\in/shift [9]),
    .O(\in/shift<9>/DYMUX_1836 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y20" ))
  \in/shift<9>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/shift<9>/SRINV_1834 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y20" ))
  \in/shift<9>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/shift<9>/CLKINV_1833 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y20" ))
  \in/shift<9>/CEINV  (
    .I(\in/ld_shift_0 ),
    .O(\in/shift<9>/CEINV_1832 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y20" ))
  \in/pstate<2>/DXMUX  (
    .I(\in/pstate_mux0000 [3]),
    .O(\in/pstate<2>/DXMUX_1907 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y20" ))
  \in/pstate<2>/YUSED  (
    .I(\in/pstate_mux0000<3>2_pack_1 ),
    .O(\in/pstate_mux0000<3>2_1402 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y20" ))
  \in/pstate<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/pstate<2>/CLKINV_1889 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y40" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1377 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX_1736 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y40" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1378 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX_1731 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y40" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_1729 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y25" ))
  \in/pstate_mux0000<2>10/XUSED  (
    .I(\in/pstate_mux0000<2>10_1822 ),
    .O(\in/pstate_mux0000<2>10_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y25" ))
  \in/pstate_mux0000<2>10/YUSED  (
    .I(\in/pstate_mux0000<2>4_pack_1 ),
    .O(\in/pstate_mux0000<2>4_1389 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y21" ))
  \in/shift<7>/DXMUX  (
    .I(\in/shift [8]),
    .O(\in/shift<7>/DXMUX_1794 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y21" ))
  \in/shift<7>/DYMUX  (
    .I(\in/shift [7]),
    .O(\in/shift<7>/DYMUX_1786 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y21" ))
  \in/shift<7>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/shift<7>/SRINV_1784 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y21" ))
  \in/shift<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/shift<7>/CLKINV_1783 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y21" ))
  \in/shift<7>/CEINV  (
    .I(\in/ld_shift_0 ),
    .O(\in/shift<7>/CEINV_1782 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y18" ))
  \in/frame_error<1>/DXMUX  (
    .I(\in/shift [2]),
    .O(\in/frame_error<1>/DXMUX_1871 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y18" ))
  \in/frame_error<1>/DYMUX  (
    .I(\in/shift [1]),
    .O(\in/frame_error<1>/DYMUX_1862 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y18" ))
  \in/frame_error<1>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/frame_error<1>/SRINV_1860 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y18" ))
  \in/frame_error<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/frame_error<1>/CLKINV_1859 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y18" ))
  \in/frame_error<1>/CEINV  (
    .I(\in/finish ),
    .O(\in/frame_error<1>/CEINV_1858 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y19" ))
  \in/frame_error<5>/DXMUX  (
    .I(\in/shift [6]),
    .O(\in/frame_error<5>/DXMUX_1962 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y19" ))
  \in/frame_error<5>/DYMUX  (
    .I(\in/shift [5]),
    .O(\in/frame_error<5>/DYMUX_1953 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y19" ))
  \in/frame_error<5>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/frame_error<5>/SRINV_1951 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y19" ))
  \in/frame_error<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/frame_error<5>/CLKINV_1950 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y19" ))
  \in/frame_error<5>/CEINV  (
    .I(\in/finish ),
    .O(\in/frame_error<5>/CEINV_1949 )
  );
  X_IPAD #(
    .LOC ( "PAD2" ))
  \rx/PAD  (
    .PAD(rx)
  );
  X_BUF #(
    .LOC ( "PAD2" ))
  rx_IBUF (
    .I(rx),
    .O(\rx/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD83" ))
  \fsm/PAD  (
    .PAD(fsm)
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  fsm_IBUF (
    .I(fsm),
    .O(\fsm/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD60" ))
  \reset/PAD  (
    .PAD(reset)
  );
  X_BUF #(
    .LOC ( "IPAD60" ))
  reset_IBUF (
    .I(reset),
    .O(\reset/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD69" ))
  \Led<0>/PAD  (
    .PAD(Led[0])
  );
  X_OBUF #(
    .LOC ( "PAD69" ))
  Led_0_OBUF (
    .I(\Led<0>/O ),
    .O(Led[0])
  );
  X_OPAD #(
    .LOC ( "PAD108" ))
  \tx/PAD  (
    .PAD(tx)
  );
  X_OBUF #(
    .LOC ( "PAD108" ))
  tx_OBUF (
    .I(\tx/O ),
    .O(tx)
  );
  X_OPAD #(
    .LOC ( "PAD58" ))
  \Led<1>/PAD  (
    .PAD(Led[1])
  );
  X_OBUF #(
    .LOC ( "PAD58" ))
  Led_1_OBUF (
    .I(\Led<1>/O ),
    .O(Led[1])
  );
  X_OPAD #(
    .LOC ( "PAD96" ))
  \Led<7>/PAD  (
    .PAD(Led[7])
  );
  X_OBUF #(
    .LOC ( "PAD96" ))
  Led_7_OBUF (
    .I(\Led<7>/O ),
    .O(Led[7])
  );
  X_LUT4 #(
    .INIT ( 16'hAA00 ),
    .LOC ( "SLICE_X15Y11" ))
  \pstate_FSM_FFd2-In_SW0  (
    .ADR0(pstate_FSM_FFd3_1543),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(dout[1]),
    .O(N9_pack_2)
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y11" ))
  \pstate_FSM_FFd2/FFX/RSTOR  (
    .I(reset_IBUF_1366),
    .O(\pstate_FSM_FFd2/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y11" ),
    .INIT ( 1'b0 ))
  pstate_FSM_FFd2 (
    .I(\pstate_FSM_FFd2/DXMUX_3130 ),
    .CE(VCC),
    .CLK(\pstate_FSM_FFd2/CLKINV_3112 ),
    .SET(GND),
    .RST(\pstate_FSM_FFd2/FFX/RST ),
    .O(pstate_FSM_FFd2_1518)
  );
  X_LUT4 #(
    .INIT ( 16'hFF4C ),
    .LOC ( "SLICE_X15Y11" ))
  \pstate_FSM_FFd2-In  (
    .ADR0(trans[0]),
    .ADR1(pstate_FSM_FFd2_1518),
    .ADR2(trans[1]),
    .ADR3(N9),
    .O(\pstate_FSM_FFd2-In_3127 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y11" ))
  \pstate_FSM_FFd2/DXMUX  (
    .I(\pstate_FSM_FFd2-In_3127 ),
    .O(\pstate_FSM_FFd2/DXMUX_3130 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y11" ))
  \pstate_FSM_FFd2/YUSED  (
    .I(N9_pack_2),
    .O(N9)
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y11" ))
  \pstate_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\pstate_FSM_FFd2/CLKINV_3112 )
  );
  X_LUT4 #(
    .INIT ( 16'h3300 ),
    .LOC ( "SLICE_X12Y5" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/ram_wr_en_i1  (
    .ADR0(VCC),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1442 ),
    .ADR2(VCC),
    .ADR3(\in/pstate [4]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en )
  );
  X_LUT4 #(
    .INIT ( 16'hEAFA ),
    .LOC ( "SLICE_X12Y5" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000100_SW0  (
    .ADR0(\in/pstate [0]),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1442 ),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1483 ),
    .ADR3(\in/pstate [4]),
    .O(\in/fifo1/N2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y5" ))
  \in/fifo1/N2/XUSED  (
    .I(\in/fifo1/N2 ),
    .O(\in/fifo1/N2_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y5" ))
  \in/fifo1/N2/YUSED  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y15" ))
  \in/pstate<5>/FFY/RSTOR  (
    .I(reset_IBUF_1366),
    .O(\in/pstate<5>/FFY/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y15" ),
    .INIT ( 1'b0 ))
  \in/pstate_5  (
    .I(\in/pstate<5>/DYMUX_3224 ),
    .CE(VCC),
    .CLK(\in/pstate<5>/CLKINV_3221 ),
    .SET(GND),
    .RST(\in/pstate<5>/FFY/RST ),
    .O(\in/pstate [5])
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y15" ))
  \in/pstate<5>/DYMUX  (
    .I(\in/control [2]),
    .O(\in/pstate<5>/DYMUX_3224 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y15" ))
  \in/pstate<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/pstate<5>/CLKINV_3221 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y34" ))
  \out/empty/DYMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_5336 ),
    .O(\out/empty/DYMUX_3259 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y34" ))
  \out/empty/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/empty/CLKINV_3256 )
  );
  X_LUT4 #(
    .INIT ( 16'h0303 ),
    .LOC ( "SLICE_X3Y31" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062  (
    .ADR0(VCC),
    .ADR1(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .ADR2(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR3(VCC),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_3240 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y31" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062/XUSED  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_3240 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y0" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en/YUSED  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 )
  );
  X_OPAD #(
    .LOC ( "PAD70" ))
  \Led<6>/PAD  (
    .PAD(Led[6])
  );
  X_OBUF #(
    .LOC ( "PAD70" ))
  Led_6_OBUF (
    .I(\Led<6>/O ),
    .O(Led[6])
  );
  X_OPAD #(
    .LOC ( "PAD71" ))
  \Led<5>/PAD  (
    .PAD(Led[5])
  );
  X_OBUF #(
    .LOC ( "PAD71" ))
  Led_5_OBUF (
    .I(\Led<5>/O ),
    .O(Led[5])
  );
  X_IPAD #(
    .LOC ( "IPAD13" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "IPAD13" ))
  \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD65" ))
  \Led<3>/PAD  (
    .PAD(Led[3])
  );
  X_OBUF #(
    .LOC ( "PAD65" ))
  Led_3_OBUF (
    .I(\Led<3>/O ),
    .O(Led[3])
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y33" ))
  \out/baud1/timer<2>/FFX/RSTOR  (
    .I(reset_IBUF_1366),
    .O(\out/baud1/timer<2>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y33" ),
    .INIT ( 1'b0 ))
  \out/baud1/timer_2  (
    .I(\out/baud1/timer<2>/DXMUX_3095 ),
    .CE(VCC),
    .CLK(\out/baud1/timer<2>/CLKINV_3077 ),
    .SET(GND),
    .RST(\out/baud1/timer<2>/FFX/RST ),
    .O(\out/baud1/timer [2])
  );
  X_LUT4 #(
    .INIT ( 16'hC0C0 ),
    .LOC ( "SLICE_X28Y33" ))
  \out/baud1/timer_mux0000<4>_SW0  (
    .ADR0(VCC),
    .ADR1(\out/baud1/timer [1]),
    .ADR2(\out/baud1/timer [0]),
    .ADR3(VCC),
    .O(N29)
  );
  X_LUT4 #(
    .INIT ( 16'h6A00 ),
    .LOC ( "SLICE_X28Y33" ))
  \out/baud1/timer_mux0000<5>1  (
    .ADR0(\out/baud1/timer [2]),
    .ADR1(\out/baud1/timer [1]),
    .ADR2(\out/baud1/timer [0]),
    .ADR3(\out/baud1/N01 ),
    .O(\out/baud1/timer_mux0000 [5])
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y33" ))
  \out/baud1/timer<2>/DXMUX  (
    .I(\out/baud1/timer_mux0000 [5]),
    .O(\out/baud1/timer<2>/DXMUX_3095 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y33" ))
  \out/baud1/timer<2>/YUSED  (
    .I(N29),
    .O(N29_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y33" ))
  \out/baud1/timer<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/baud1/timer<2>/CLKINV_3077 )
  );
  X_OPAD #(
    .LOC ( "PAD68" ))
  \Led<4>/PAD  (
    .PAD(Led[4])
  );
  X_OBUF #(
    .LOC ( "PAD68" ))
  Led_4_OBUF (
    .I(\Led<4>/O ),
    .O(Led[4])
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y34" ))
  \out/baud1/baud/FFY/RSTOR  (
    .I(reset_IBUF_1366),
    .O(\out/baud1/baud/FFY/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X25Y34" ),
    .INIT ( 1'b0 ))
  \out/baud1/baud  (
    .I(\out/baud1/baud/DYMUX_3170 ),
    .CE(\out/baud1/baud/CEINV_3166 ),
    .CLK(\out/baud1/baud/CLKINV_3167 ),
    .SET(GND),
    .RST(\out/baud1/baud/FFY/RST ),
    .O(\out/baud1/baud_1432 )
  );
  X_INV #(
    .LOC ( "SLICE_X25Y34" ))
  \out/baud1/baud/DYMUX  (
    .I(\out/baud1/baud_1432 ),
    .O(\out/baud1/baud/DYMUX_3170 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y34" ))
  \out/baud1/baud/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/baud1/baud/CLKINV_3167 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y34" ))
  \out/baud1/baud/CEINV  (
    .I(\out/baud1/baud_cmp_eq0000_0 ),
    .O(\out/baud1/baud/CEINV_3166 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y11" ))
  \in/full/DYMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_4142 ),
    .O(\in/full/DYMUX_3248 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y11" ))
  \in/full/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/full/CLKINV_3246 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ),
    .LOC ( "SLICE_X23Y25" ))
  \in/ld_shift_SW0  (
    .ADR0(\in/bittimer [2]),
    .ADR1(\in/bittimer [1]),
    .ADR2(\in/bittimer [0]),
    .ADR3(VCC),
    .O(N25_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFFEF ),
    .LOC ( "SLICE_X23Y25" ))
  \in/loaded_mux0000  (
    .ADR0(\in/baud1/baud_1387 ),
    .ADR1(\in/bittimer [3]),
    .ADR2(\in/pstate [3]),
    .ADR3(N25),
    .O(\in/loaded_mux0000_3206 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \in/loaded/FFX/RSTOR  (
    .I(reset_IBUF_1366),
    .O(\in/loaded/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y25" ),
    .INIT ( 1'b0 ))
  \in/loaded  (
    .I(\in/loaded/DXMUX_3209 ),
    .CE(\in/loaded/CEINV_3191 ),
    .CLK(\in/loaded/CLKINVNOT ),
    .SET(GND),
    .RST(\in/loaded/FFX/RST ),
    .O(\in/loaded_1548 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \in/loaded/DXMUX  (
    .I(\in/loaded/FXMUX_3208 ),
    .O(\in/loaded/DXMUX_3209 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \in/loaded/XUSED  (
    .I(\in/loaded/FXMUX_3208 ),
    .O(\in/loaded_mux0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \in/loaded/FXMUX  (
    .I(\in/loaded_mux0000_3206 ),
    .O(\in/loaded/FXMUX_3208 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \in/loaded/YUSED  (
    .I(N25_pack_1),
    .O(N25)
  );
  X_INV #(
    .LOC ( "SLICE_X23Y25" ))
  \in/loaded/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/loaded/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \in/loaded/CEINV  (
    .I(\in/loaded_not0001 ),
    .O(\in/loaded/CEINV_3191 )
  );
  X_OPAD #(
    .LOC ( "PAD64" ))
  \Led<2>/PAD  (
    .PAD(Led[2])
  );
  X_OBUF #(
    .LOC ( "PAD64" ))
  Led_2_OBUF (
    .I(\Led<2>/O ),
    .O(Led[2])
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \clk_BUFGP/BUFG/I0_USED  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/BUFG/I0_INV )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y17" ))
  \N51/XUSED  (
    .I(\N51/F5MUX_3779 ),
    .O(N51)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y17" ))
  \N51/F5MUX  (
    .IA(N56),
    .IB(N57),
    .SEL(\N51/BXINV_3772 ),
    .O(\N51/F5MUX_3779 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y17" ))
  \N51/BXINV  (
    .I(\in/dout_fifo [2]),
    .O(\N51/BXINV_3772 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000073/XUSED  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000073_4089 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000073_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000073/YUSED  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000029/O_pack_1 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000029/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y11" ))
  \N53/XUSED  (
    .I(\N53/F5MUX_3804 ),
    .O(N53)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X13Y11" ))
  \N53/F5MUX  (
    .IA(N58),
    .IB(N59),
    .SEL(\N53/BXINV_3797 ),
    .O(\N53/F5MUX_3804 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y11" ))
  \N53/BXINV  (
    .I(\in/dout_fifo [2]),
    .O(\N53/BXINV_3797 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y13" ))
  \data<3>/DXMUX  (
    .I(\data<3>/F5MUX_3747 ),
    .O(\data<3>/DXMUX_3749 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y13" ))
  \data<3>/F5MUX  (
    .IA(N60),
    .IB(N61),
    .SEL(\data<3>/BXINV_3739 ),
    .O(\data<3>/F5MUX_3747 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y13" ))
  \data<3>/BXINV  (
    .I(addr_rx[1]),
    .O(\data<3>/BXINV_3739 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y13" ))
  \data<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\data<3>/CLKINV_3731 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y13" ))
  \data<3>/CEINV  (
    .I(\in/rd_fifo ),
    .O(\data<3>/CEINV_3730 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y32" ))
  \out/baud1/timer<3>/DXMUX  (
    .I(\out/baud1/timer_mux0000 [4]),
    .O(\out/baud1/timer<3>/DXMUX_3865 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y32" ))
  \out/baud1/timer<3>/YUSED  (
    .I(\out/baud1/N01_pack_2 ),
    .O(\out/baud1/N01 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y32" ))
  \out/baud1/timer<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/baud1/timer<3>/CLKINV_3849 )
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
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram  (
    .CLKA(clk_BUFGP),
    .CLKB(clk_BUFGP),
    .ENA(1'b0),
    .ENB(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 ),
    .SSRA(1'b0),
    .SSRB(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .WEA(1'b0),
    .WEB(1'b0),
    .ADDRA({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}),
    .ADDRB({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> 
, 
\NlwBufferSignal_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> 
, 
\NlwBufferSignal_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> 
, 
\NlwBufferSignal_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> 
}),
    .DIA({
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA31 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA30 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA29 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA28 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA27 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA26 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA25 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA24 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA23 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA22 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA21 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA20 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA19 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA18 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA17 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA16 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA15 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA14 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA13 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA12 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA11 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA10 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA9 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA8 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA7 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA6 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA5 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA4 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA3 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA2 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA1 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA0 
}),
    .DIPA({
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPA3 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPA2 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPA1 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPA0 
}),
    .DIB({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}),
    .DIPB({1'b0, 1'b0, 1'b0, 1'b0}),
    .DOA({
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA31 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA30 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA29 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA28 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA27 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA26 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA25 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA24 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA23 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA22 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA21 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA20 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA19 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA18 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA17 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA16 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA15 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA14 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA13 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA12 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA11 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA10 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA9 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA8 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA7 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA6 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA5 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA4 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA3 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA2 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA1 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA0 
}),
    .DOPA({
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA3 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA2 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA1 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA0 
}),
    .DOB({
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB31 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB30 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB29 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB28 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB27 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB26 
, \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [7], 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [6], 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB23 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB22 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB21 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB20 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB19 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB18 
, \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [5], 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [4], 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB15 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB14 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB13 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB12 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB11 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB10 
, \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [3], 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [2], 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB7 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB6 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB5 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB4 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB3 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB2 
, \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [1], 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_mem [0]}),
    .DOPB({
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB3 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB2 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB1 
, 
\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB0 
})
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
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram  (
    .CLKA(clk_BUFGP),
    .CLKB(clk_BUFGP),
    .ENA(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .ENB(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en_0 ),
    .SSRA(1'b0),
    .SSRB(\in/pstate [0]),
    .WEA(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .WEB(1'b0),
    .ADDRA({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3> 
, 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> 
, 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> 
, 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> 
}),
    .ADDRB({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> 
, 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> 
, 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> 
, 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> 
}),
    .DIA({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> 
, \in/frame_error [7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, \in/frame_error [6], 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> 
, 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> 
, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<2> 
, 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> 
, 
\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> 
}),
    .DIPA({1'b0, 1'b0, 1'b0, 1'b0}),
    .DIB({
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB31 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB30 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB29 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB28 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB27 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB26 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB25 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB24 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB23 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB22 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB21 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB20 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB19 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB18 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB17 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB16 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB15 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB14 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB13 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB12 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB11 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB10 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB9 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB8 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB7 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB6 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB5 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB4 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB3 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB2 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB1 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIB0 
}),
    .DIPB({
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB3 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB2 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB1 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIPB0 
}),
    .DOA({
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA31 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA30 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA29 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA28 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA27 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA26 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA25 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA24 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA23 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA22 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA21 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA20 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA19 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA18 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA17 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA16 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA15 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA14 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA13 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA12 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA11 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA10 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA9 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA8 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA7 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA6 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA5 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA4 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA3 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA2 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA1 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOA0 
}),
    .DOPA({
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA3 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA2 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA1 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPA0 
}),
    .DOB({
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB31 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB30 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB29 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB28 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB27 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB26 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB25 
, \in/dout_fifo [7], 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB23 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB22 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB21 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB20 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB19 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB18 
, \in/dout_fifo [6], \in/dout_fifo [5], 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB15 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB14 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB13 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB12 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB11 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB10 
, \in/dout_fifo [4], \in/dout_fifo [3], 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB7 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB6 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB5 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB4 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOB3 
, \in/dout_fifo [2], \in/dout_fifo [1], \in/dout_fifo [0]}),
    .DOPB({
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB3 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB2 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB1 
, 
\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DOPB0 
})
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y37" ))
  \out/N8/XUSED  (
    .I(\out/N8 ),
    .O(\out/N8_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y37" ))
  \out/N8/YUSED  (
    .I(\out/pstate_FSM_FFd1-In3_SW0/O_pack_1 ),
    .O(\out/pstate_FSM_FFd1-In3_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y12" ))
  \data<5>/DXMUX  (
    .I(\data_add0000[5] ),
    .O(\data<5>/DXMUX_3963 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y12" ))
  \data<5>/YUSED  (
    .I(\Madd_data_add0000_xor<5>11_SW0/O_pack_1 ),
    .O(\Madd_data_add0000_xor<5>11_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y12" ))
  \data<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\data<5>/CLKINV_3947 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y12" ))
  \data<5>/CEINV  (
    .I(\in/rd_fifo ),
    .O(\data<5>/CEINV_3946 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FXMUX_3832 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_3833 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FXMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FXMUX_3832 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/YUSED  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux00003168/O_pack_1 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux00003168/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_3818 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y10" ))
  \data<4>/DXMUX  (
    .I(\data_add0000[4] ),
    .O(\data<4>/DXMUX_3926 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y10" ))
  \data<4>/YUSED  (
    .I(\Madd_data_add0000_xor<4>12_SW0/O_pack_1 ),
    .O(\Madd_data_add0000_xor<4>12_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y10" ))
  \data<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\data<4>/CLKINV_3909 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y10" ))
  \data<4>/CEINV  (
    .I(\in/rd_fifo ),
    .O(\data<4>/CEINV_3908 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y11" ))
  \data<6>/DXMUX  (
    .I(\data_add0000[6] ),
    .O(\data<6>/DXMUX_4000 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y11" ))
  \data<6>/YUSED  (
    .I(\Madd_data_add0000_xor<6>12_SW0/O_pack_1 ),
    .O(\Madd_data_add0000_xor<6>12_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y11" ))
  \data<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\data<6>/CLKINV_3982 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y11" ))
  \data<6>/CEINV  (
    .I(\in/rd_fifo ),
    .O(\data<6>/CEINV_3981 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y32" ))
  \out/baud1/baud_cmp_eq0000/XUSED  (
    .I(\out/baud1/baud_cmp_eq0000 ),
    .O(\out/baud1/baud_cmp_eq0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y32" ))
  \out/baud1/baud_cmp_eq0000/YUSED  (
    .I(\out/baud1/baud_cmp_eq0000810_pack_1 ),
    .O(\out/baud1/baud_cmp_eq0000810_1573 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y13" ))
  \data<7>/DXMUX  (
    .I(\data_add0000[7] ),
    .O(\data<7>/DXMUX_4061 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y13" ))
  \data<7>/YUSED  (
    .I(N38_pack_1),
    .O(N38)
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y13" ))
  \data<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\data<7>/CLKINV_4045 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y13" ))
  \data<7>/CEINV  (
    .I(\in/rd_fifo ),
    .O(\data<7>/CEINV_4044 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y8" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_4142 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_4143 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y8" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux0000 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/FXMUX_4142 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y8" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/YUSED  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux00005/O_pack_2 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux00005/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y8" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_4128 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y23" ))
  \in/baud1/baud_cmp_eq0000/XUSED  (
    .I(\in/baud1/baud_cmp_eq0000 ),
    .O(\in/baud1/baud_cmp_eq0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y23" ))
  \in/baud1/baud_cmp_eq0000/YUSED  (
    .I(\in/baud1/baud_cmp_eq0000822/O_pack_1 ),
    .O(\in/baud1/baud_cmp_eq0000822/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y18" ))
  \in/pstate_mux0000<3>15/XUSED  (
    .I(\in/pstate_mux0000<3>15_4429 ),
    .O(\in/pstate_mux0000<3>15_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y18" ))
  \in/pstate_mux0000<3>15/YUSED  (
    .I(\in/N13_pack_1 ),
    .O(\in/N13 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y6" ))
  \data<1>/DXMUX  (
    .I(\data_add0000[1] ),
    .O(\data<1>/DXMUX_4332 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y6" ))
  \data<1>/YUSED  (
    .I(\Madd_data_add0000_cy<0>_pack_2 ),
    .O(Madd_data_add0000_cy[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y6" ))
  \data<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\data<1>/CLKINV_4315 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y6" ))
  \data<1>/CEINV  (
    .I(\in/rd_fifo ),
    .O(\data<1>/CEINV_4314 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y37" ))
  \out/bitcounter<1>/DYMUX  (
    .I(\out/Mcount_bitcounter1 ),
    .O(\out/bitcounter<1>/DYMUX_4575 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y37" ))
  \out/bitcounter<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/bitcounter<1>/CLKINV_4565 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y37" ))
  \out/bitcounter<1>/CEINV  (
    .I(\out/bitcounter_not0001_0 ),
    .O(\out/bitcounter<1>/CEINV_4564 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y33" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_4367 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y33" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/YUSED  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O_pack_2 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y33" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_4349 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y41" ))
  \out/shift_out<3>/DXMUX  (
    .I(\out/shift_out_mux0000 [3]),
    .O(\out/shift_out<3>/DXMUX_4748 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y41" ))
  \out/shift_out<3>/DYMUX  (
    .I(\out/shift_out_mux0000 [2]),
    .O(\out/shift_out<3>/DYMUX_4734 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y41" ))
  \out/shift_out<3>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\out/shift_out<3>/SRINV_4726 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y41" ))
  \out/shift_out<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/shift_out<3>/CLKINV_4725 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y41" ))
  \out/shift_out<3>/CEINV  (
    .I(\out/shift_out_not0001_0 ),
    .O(\out/shift_out<3>/CEINV_4724 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y29" ))
  \in/bittimer<3>/DXMUX  (
    .I(\in/Result [3]),
    .O(\in/bittimer<3>/DXMUX_4507 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y29" ))
  \in/bittimer<3>/DYMUX  (
    .I(\in/Result [2]),
    .O(\in/bittimer<3>/DYMUX_4492 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y29" ))
  \in/bittimer<3>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/bittimer<3>/SRINV_4483 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y29" ))
  \in/bittimer<3>/CLKINV  (
    .I(\in/baud1/baud_1387 ),
    .O(\in/bittimer<3>/CLKINV_4482 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y29" ))
  \in/bittimer<3>/CEINV  (
    .I(\in/bittime_0 ),
    .O(\in/bittimer<3>/CEINV_4481 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y33" ))
  \out/baud1/timer<1>/DXMUX  (
    .I(\out/baud1/timer_mux0000 [6]),
    .O(\out/baud1/timer<1>/DXMUX_4550 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y33" ))
  \out/baud1/timer<1>/DYMUX  (
    .I(\out/baud1/timer_mux0000 [7]),
    .O(\out/baud1/timer<1>/DYMUX_4535 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y33" ))
  \out/baud1/timer<1>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\out/baud1/timer<1>/SRINV_4527 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y33" ))
  \out/baud1/timer<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/baud1/timer<1>/CLKINV_4526 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y41" ))
  \out/shift_out<1>/DXMUX  (
    .I(\out/shift_out_mux0000 [1]),
    .O(\out/shift_out<1>/DXMUX_4704 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y41" ))
  \out/shift_out<1>/DYMUX  (
    .I(\out/shift_out_mux0000 [0]),
    .O(\out/shift_out<1>/DYMUX_4690 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y41" ))
  \out/shift_out<1>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\out/shift_out<1>/SRINV_4681 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y41" ))
  \out/shift_out<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/shift_out<1>/CLKINV_4680 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y41" ))
  \out/shift_out<1>/CEINV  (
    .I(\out/shift_out_not0001_0 ),
    .O(\out/shift_out<1>/CEINV_4679 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y22" ))
  \in/baud1/timer<0>/DXMUX  (
    .I(\in/baud1/timer_mux0000 [7]),
    .O(\in/baud1/timer<0>/DXMUX_4401 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y22" ))
  \in/baud1/timer<0>/YUSED  (
    .I(\in/baud1/N01_pack_2 ),
    .O(\in/baud1/N01 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y22" ))
  \in/baud1/timer<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/baud1/timer<0>/CLKINV_4383 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y19" ))
  \in/pstate<3>/DXMUX  (
    .I(\in/pstate_mux0000 [2]),
    .O(\in/pstate<3>/DXMUX_4295 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y19" ))
  \in/pstate<3>/YUSED  (
    .I(\in/pstate_mux0000<2>18/O_pack_1 ),
    .O(\in/pstate_mux0000<2>18/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y19" ))
  \in/pstate<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/pstate<3>/CLKINV_4278 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y6" ))
  \data<2>/DXMUX  (
    .I(\data_add0000[2] ),
    .O(\data<2>/DXMUX_4462 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y6" ))
  \data<2>/YUSED  (
    .I(\in/dout<2>1/O_pack_1 ),
    .O(\in/dout<2>1/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y6" ))
  \data<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\data<2>/CLKINV_4444 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y6" ))
  \data<2>/CEINV  (
    .I(\in/rd_fifo ),
    .O(\data<2>/CEINV_4443 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y31" ))
  \out/baud1/timer<5>/DXMUX  (
    .I(\out/baud1/timer_mux0000 [2]),
    .O(\out/baud1/timer<5>/DXMUX_4618 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y31" ))
  \out/baud1/timer<5>/DYMUX  (
    .I(\out/baud1/timer_mux0000 [3]),
    .O(\out/baud1/timer<5>/DYMUX_4604 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y31" ))
  \out/baud1/timer<5>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\out/baud1/timer<5>/SRINV_4595 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y31" ))
  \out/baud1/timer<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/baud1/timer<5>/CLKINV_4594 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y30" ))
  \out/baud1/timer<7>/DXMUX  (
    .I(\out/baud1/timer_mux0000 [0]),
    .O(\out/baud1/timer<7>/DXMUX_4660 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y30" ))
  \out/baud1/timer<7>/DYMUX  (
    .I(\out/baud1/timer_mux0000 [1]),
    .O(\out/baud1/timer<7>/DYMUX_4646 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y30" ))
  \out/baud1/timer<7>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\out/baud1/timer<7>/SRINV_4637 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y30" ))
  \out/baud1/timer<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/baud1/timer<7>/CLKINV_4636 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX  (
    .I(\in/fifo1/Result<3>1 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_4930 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX  (
    .I(\in/fifo1/Result<2>1 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_4917 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV  (
    .I(\in/pstate [0]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_4908 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_4907 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_4906 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y10" ))
  \trans<1>/DXMUX  (
    .I(Mcount_trans1),
    .O(\trans<1>/DXMUX_5224 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y10" ))
  \trans<1>/DYMUX  (
    .I(Mcount_trans),
    .O(\trans<1>/DYMUX_5210 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y10" ))
  \trans<1>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\trans<1>/SRINV_5201 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y10" ))
  \trans<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\trans<1>/CLKINV_5200 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y7" ))
  \data<0>/DYMUX  (
    .I(\data_add0000[0] ),
    .O(\data<0>/DYMUX_5042 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y7" ))
  \data<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\data<0>/CLKINV_5032 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y7" ))
  \data<0>/CEINV  (
    .I(\in/rd_fifo ),
    .O(\data<0>/CEINV_5031 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y33" ))
  \out/shift_out<7>/DXMUX  (
    .I(\out/shift_out_mux0000 [7]),
    .O(\out/shift_out<7>/DXMUX_4836 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y33" ))
  \out/shift_out<7>/DYMUX  (
    .I(\out/shift_out_mux0000 [6]),
    .O(\out/shift_out<7>/DYMUX_4822 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y33" ))
  \out/shift_out<7>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\out/shift_out<7>/SRINV_4814 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y33" ))
  \out/shift_out<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/shift_out<7>/CLKINV_4813 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y33" ))
  \out/shift_out<7>/CEINV  (
    .I(\out/shift_out_not0001_0 ),
    .O(\out/shift_out<7>/CEINV_4812 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y32" ))
  \out/shift_out<8>/DYMUX  (
    .I(\out/shift_out_mux0000 [8]),
    .O(\out/shift_out<8>/DYMUX_4887 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y32" ))
  \out/shift_out<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/shift_out<8>/CLKINV_4877 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y32" ))
  \out/shift_out<8>/CEINV  (
    .I(\out/shift_out_not0001_0 ),
    .O(\out/shift_out<8>/CEINV_4876 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y38" ))
  \out/shift_out<5>/DXMUX  (
    .I(\out/shift_out_mux0000 [5]),
    .O(\out/shift_out<5>/DXMUX_4792 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y38" ))
  \out/shift_out<5>/DYMUX  (
    .I(\out/shift_out_mux0000 [4]),
    .O(\out/shift_out<5>/DYMUX_4778 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y38" ))
  \out/shift_out<5>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\out/shift_out<5>/SRINV_4770 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y38" ))
  \out/shift_out<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/shift_out<5>/CLKINV_4769 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y38" ))
  \out/shift_out<5>/CEINV  (
    .I(\out/shift_out_not0001_0 ),
    .O(\out/shift_out<5>/CEINV_4768 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y33" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_5084 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y33" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX_5070 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y33" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_5062 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y33" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_5061 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y34" ))
  \out/bittimer<3>/DXMUX  (
    .I(\out/Result [3]),
    .O(\out/bittimer<3>/DXMUX_5129 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y34" ))
  \out/bittimer<3>/DYMUX  (
    .I(\out/Result [2]),
    .O(\out/bittimer<3>/DYMUX_5114 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y34" ))
  \out/bittimer<3>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\out/bittimer<3>/SRINV_5105 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y34" ))
  \out/bittimer<3>/CLKINV  (
    .I(\out/baud1/baud_1432 ),
    .O(\out/bittimer<3>/CLKINV_5104 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y34" ))
  \out/bittimer<3>/CEINV  (
    .I(\out/bittime_0 ),
    .O(\out/bittimer<3>/CEINV_5103 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y11" ))
  \pstate_FSM_FFd3/DYMUX  (
    .I(\pstate_FSM_FFd3-In ),
    .O(\pstate_FSM_FFd3/DYMUX_5153 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y11" ))
  \pstate_FSM_FFd3/CLKINV  (
    .I(clk_BUFGP),
    .O(\pstate_FSM_FFd3/CLKINV_5143 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y23" ))
  \in/in_two/DYMUX  (
    .I(\in/Mshreg_in_two ),
    .O(\in/in_two/DYMUX_5185 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y23" ))
  \in/in_two/DIG_MUX  (
    .I(rx_IBUF_1384),
    .O(\in/in_two/DIG_MUX_5174 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y23" ))
  \in/in_two/SRINV  (
    .I(1'b1),
    .O(\in/in_two/SRINV_5168 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y23" ))
  \in/in_two/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/in_two/CLKINV_5172 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y30" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX  (
    .I(\out/fifo1/Result [3]),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_5016 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y30" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX  (
    .I(\out/fifo1/Result [2]),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_5001 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y30" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_4992 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y30" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_4991 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y30" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_4990 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y19" ))
  \in/frame_error<8>/DYMUX  (
    .I(\in/frame_error_8_or0000 ),
    .O(\in/frame_error<8>/DYMUX_4861 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y19" ))
  \in/frame_error<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/frame_error<8>/CLKINV_4850 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y19" ))
  \in/frame_error<8>/CEINV  (
    .I(\in/finish ),
    .O(\in/frame_error<8>/CEINV_4849 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y0" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX  (
    .I(\in/fifo1/Result [3]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_4972 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y0" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX  (
    .I(\in/fifo1/Result [2]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_4959 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y0" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV  (
    .I(\in/pstate [0]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_4950 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y0" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_4949 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y0" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_wr_en_0 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_4948 )
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y22" ))
  \in/baud1/Madd_timer_addsub0000_cy<5>/XUSED  (
    .I(\in/baud1/Madd_timer_addsub0000_cy[5] ),
    .O(\in/baud1/Madd_timer_addsub0000_cy<5>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X31Y22" ))
  \in/baud1/Madd_timer_addsub0000_cy<5>/YUSED  (
    .I(\in/baud1/Madd_timer_addsub0000_cy<3>_pack_1 ),
    .O(\in/baud1/Madd_timer_addsub0000_cy[3] )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y37" ))
  \out/bitcounter_not0001/XUSED  (
    .I(\out/bitcounter_not0001_4264 ),
    .O(\out/bitcounter_not0001_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y37" ))
  \out/bitcounter_not0001/YUSED  (
    .I(\out/bitcounter_not0001_SW0/O_pack_1 ),
    .O(\out/bitcounter_not0001_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y9" ))
  \in/fifo1/N5/XUSED  (
    .I(\in/fifo1/N5 ),
    .O(\in/fifo1/N5_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y9" ))
  \in/fifo1/N5/YUSED  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000021/O_pack_1 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000021/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y30" ))
  \out/baud1/Madd_timer_addsub0000_cy<5>/XUSED  (
    .I(\out/baud1/Madd_timer_addsub0000_cy[5] ),
    .O(\out/baud1/Madd_timer_addsub0000_cy<5>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y30" ))
  \out/baud1/Madd_timer_addsub0000_cy<5>/YUSED  (
    .I(\out/baud1/Madd_timer_addsub0000_cy<3>_pack_1 ),
    .O(\out/baud1/Madd_timer_addsub0000_cy[3] )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y34" ))
  \out/shift_out_not0001/XUSED  (
    .I(\out/shift_out_not0001 ),
    .O(\out/shift_out_not0001_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y34" ))
  \out/shift_out_not0001/YUSED  (
    .I(\out/N7_pack_1 ),
    .O(\out/N7 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y19" ))
  \in/pstate<4>/DXMUX  (
    .I(\in/pstate_mux0000 [1]),
    .O(\in/pstate<4>/DXMUX_5267 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y19" ))
  \in/pstate<4>/DYMUX  (
    .I(\in/pstate<4>/GYMUX_5250 ),
    .O(\in/pstate<4>/DYMUX_5251 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y19" ))
  \in/pstate<4>/YUSED  (
    .I(\in/pstate<4>/GYMUX_5250 ),
    .O(\in/finish )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y19" ))
  \in/pstate<4>/GYMUX  (
    .I(\in/finish_pack_1 ),
    .O(\in/pstate<4>/GYMUX_5250 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y19" ))
  \in/pstate<4>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/pstate<4>/SRINV_5243 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y19" ))
  \in/pstate<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/pstate<4>/CLKINV_5242 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y22" ))
  \in/baud1/timer<5>/DXMUX  (
    .I(\in/baud1/timer_mux0000 [2]),
    .O(\in/baud1/timer<5>/DXMUX_5443 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y22" ))
  \in/baud1/timer<5>/DYMUX  (
    .I(\in/baud1/timer_mux0000 [3]),
    .O(\in/baud1/timer<5>/DYMUX_5429 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y22" ))
  \in/baud1/timer<5>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/baud1/timer<5>/SRINV_5420 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y22" ))
  \in/baud1/timer<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/baud1/timer<5>/CLKINV_5419 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y18" ))
  \in/bitcounter<1>/DXMUX  (
    .I(\in/Mcount_bitcounter1 ),
    .O(\in/bitcounter<1>/DXMUX_5640 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y18" ))
  \in/bitcounter<1>/YUSED  (
    .I(N11_pack_2),
    .O(N11)
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y18" ))
  \in/bitcounter<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/bitcounter<1>/CLKINV_5622 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y18" ))
  \in/bitcounter<1>/CEINV  (
    .I(\in/bitcounter_not0001_0 ),
    .O(\in/bitcounter<1>/CEINV_5621 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y22" ))
  \in/baud1/timer<3>/DXMUX  (
    .I(\in/baud1/timer_mux0000 [4]),
    .O(\in/baud1/timer<3>/DXMUX_5401 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y22" ))
  \in/baud1/timer<3>/DYMUX  (
    .I(\in/baud1/timer_mux0000 [5]),
    .O(\in/baud1/timer<3>/DYMUX_5387 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y22" ))
  \in/baud1/timer<3>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/baud1/timer<3>/SRINV_5379 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y22" ))
  \in/baud1/timer<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/baud1/timer<3>/CLKINV_5378 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y35" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_5336 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX_5337 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y35" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or0000 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/GYMUX_5336 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y35" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_5328 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y15" ))
  \in/pstate<0>/DYMUX  (
    .I(\in/pstate_mux0000 [5]),
    .O(\in/pstate<0>/DYMUX_5314 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y15" ))
  \in/pstate<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/pstate<0>/CLKINV_5305 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y22" ))
  \in/baud1/timer<7>/DXMUX  (
    .I(\in/baud1/timer_mux0000 [0]),
    .O(\in/baud1/timer<7>/DXMUX_5485 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y22" ))
  \in/baud1/timer<7>/DYMUX  (
    .I(\in/baud1/timer_mux0000 [1]),
    .O(\in/baud1/timer<7>/DYMUX_5471 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y22" ))
  \in/baud1/timer<7>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/baud1/timer<7>/SRINV_5462 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y22" ))
  \in/baud1/timer<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/baud1/timer<7>/CLKINV_5461 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y23" ))
  \in/baud1/timer<1>/DYMUX  (
    .I(\in/baud1/timer_mux0000 [6]),
    .O(\in/baud1/timer<1>/DYMUX_5359 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y23" ))
  \in/baud1/timer<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/baud1/timer<1>/CLKINV_5349 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y41" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV_5565 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX_5566 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y41" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV  (
    .I(1'b0),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/BYINV_5565 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y41" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV  (
    .I(clk_BUFGP),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV_5563 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y41" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1377 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV_5562 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y11" ))
  \dout<1>/XUSED  (
    .I(\addr_rx<1>_pack_1 ),
    .O(addr_rx[1])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y11" ))
  \dout<1>/DYMUX  (
    .I(\dout<1>/GYMUX_5538 ),
    .O(\dout<1>/DYMUX_5539 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y11" ))
  \dout<1>/YUSED  (
    .I(\dout<1>/GYMUX_5538 ),
    .O(\Madd_data_add0000_lut<1>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y11" ))
  \dout<1>/GYMUX  (
    .I(Madd_data_add0000_lut[1]),
    .O(\dout<1>/GYMUX_5538 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y11" ))
  \dout<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\dout<1>/CLKINV_5528 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y35" ))
  \out/bittime/YUSED  (
    .I(\out/bittime ),
    .O(\out/bittime_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y24" ))
  \in/load/DYMUX  (
    .I(\in/load/GYMUX_5290 ),
    .O(\in/load/DYMUX_5291 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y24" ))
  \in/load/YUSED  (
    .I(\in/load/GYMUX_5290 ),
    .O(\in/ld_shift_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y24" ))
  \in/load/GYMUX  (
    .I(\in/ld_shift_5288 ),
    .O(\in/load/GYMUX_5290 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y24" ))
  \in/load/CLKINV  (
    .I(clk_BUFGP),
    .O(\in/load/CLKINV_5282 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y11" ))
  \in/fifo1/N11/XUSED  (
    .I(\in/fifo1/N11 ),
    .O(\in/fifo1/N11_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y11" ))
  \in/fifo1/N11/YUSED  (
    .I(\in/rd_fifo_pack_1 ),
    .O(\in/rd_fifo )
  );
  X_INV #(
    .LOC ( "SLICE_X23Y27" ))
  \in/bittimer<0>/DXMUX  (
    .I(\in/bittimer [0]),
    .O(\in/bittimer<0>/DXMUX_5602 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y27" ))
  \in/bittimer<0>/DYMUX  (
    .I(\in/Result [1]),
    .O(\in/bittimer<0>/DYMUX_5593 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y27" ))
  \in/bittimer<0>/SRINV  (
    .I(reset_IBUF_1366),
    .O(\in/bittimer<0>/SRINV_5583 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y27" ))
  \in/bittimer<0>/CLKINV  (
    .I(\in/baud1/baud_1387 ),
    .O(\in/bittimer<0>/CLKINV_5582 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y27" ))
  \in/bittimer<0>/CEINV  (
    .I(\in/bittime_0 ),
    .O(\in/bittimer<0>/CEINV_5581 )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y31" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_0  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_2730 ),
    .CE(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_2726 ),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_2727 ),
    .SET(GND),
    .RST(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_2728 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0])
  );
  X_FF #(
    .LOC ( "SLICE_X2Y30" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_3  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_2839 ),
    .CE(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_2826 ),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_2827 ),
    .SET(GND),
    .RST(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_2828 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h3C3C ),
    .LOC ( "SLICE_X10Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux00003168_SW1  (
    .ADR0(VCC),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .ADR3(VCC),
    .O(\in/fifo1/N7 )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y30" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_2830 ),
    .CE(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_2826 ),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_2827 ),
    .SET(GND),
    .RST(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_2828 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X7Y3" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DYMUX_2806 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_2802 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_2803 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_2804 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y3" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_2  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DYMUX_2782 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_2778 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_2779 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_2780 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X7Y3" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_3  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/DXMUX_2813 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CEINV_2802 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/CLKINV_2803 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<3>/SRINV_2804 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3])
  );
  X_FF #(
    .LOC ( "SLICE_X2Y31" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_2739 ),
    .CE(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_2726 ),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_2727 ),
    .SET(GND),
    .RST(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_2728 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y3" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/DXMUX_2789 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CEINV_2778 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/CLKINV_2779 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<3>/SRINV_2780 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h70F0 ),
    .LOC ( "SLICE_X17Y11" ))
  \in/wr_control1  (
    .ADR0(trans[0]),
    .ADR1(pstate_FSM_FFd2_1518),
    .ADR2(pstate_FSM_FFd4_1516),
    .ADR3(trans[1]),
    .O(\in/wr_control )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y20" ),
    .INIT ( 1'b1 ))
  \in/shift_0  (
    .I(\in/shift<1>/DYMUX_1623 ),
    .CE(\in/shift<1>/CEINV_1619 ),
    .CLK(\in/shift<1>/CLKINV_1620 ),
    .SET(\in/shift<1>/SRINV_1621 ),
    .RST(GND),
    .O(\in/shift [0])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y20" ),
    .INIT ( 1'b1 ))
  \in/shift_1  (
    .I(\in/shift<1>/DXMUX_1631 ),
    .CE(\in/shift<1>/CEINV_1619 ),
    .CLK(\in/shift<1>/CLKINV_1620 ),
    .SET(\in/shift<1>/SRINV_1621 ),
    .RST(GND),
    .O(\in/shift [1])
  );
  X_FF #(
    .LOC ( "SLICE_X21Y10" ),
    .INIT ( 1'b0 ))
  \in/control_0  (
    .I(\in/control<0>/DYMUX_1647 ),
    .CE(\in/control<0>/CEINV_1643 ),
    .CLK(\in/control<0>/CLKINV_1644 ),
    .SET(GND),
    .RST(\in/control<0>/FFY/RSTAND_1653 ),
    .O(\in/control [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y10" ))
  \in/control<0>/FFY/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\in/control<0>/FFY/RSTAND_1653 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 1'b1 ))
  \in/shift_2  (
    .I(\in/shift<3>/DYMUX_1666 ),
    .CE(\in/shift<3>/CEINV_1662 ),
    .CLK(\in/shift<3>/CLKINV_1663 ),
    .SET(\in/shift<3>/SRINV_1664 ),
    .RST(GND),
    .O(\in/shift [2])
  );
  X_LUT4 #(
    .INIT ( 16'h5450 ),
    .LOC ( "SLICE_X20Y21" ))
  \in/pstate_mux0000<4>  (
    .ADR0(\in/control [2]),
    .ADR1(\in/pstate [0]),
    .ADR2(N13),
    .ADR3(\in/control [0]),
    .O(\in/pstate_mux0000 [4])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y21" ),
    .INIT ( 1'b1 ))
  \in/shift_6  (
    .I(\in/shift<7>/DYMUX_1786 ),
    .CE(\in/shift<7>/CEINV_1782 ),
    .CLK(\in/shift<7>/CLKINV_1783 ),
    .SET(\in/shift<7>/SRINV_1784 ),
    .RST(GND),
    .O(\in/shift [6])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y21" ),
    .INIT ( 1'b1 ))
  \in/shift_7  (
    .I(\in/shift<7>/DXMUX_1794 ),
    .CE(\in/shift<7>/CEINV_1782 ),
    .CLK(\in/shift<7>/CLKINV_1783 ),
    .SET(\in/shift<7>/SRINV_1784 ),
    .RST(GND),
    .O(\in/shift [7])
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X0Y40" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DXMUX_1736 ),
    .CE(VCC),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_1729 ),
    .SET(GND),
    .RST(GND),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_1379 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y21" ),
    .INIT ( 1'b1 ))
  \in/shift_5  (
    .I(\in/shift<5>/DXMUX_1717 ),
    .CE(\in/shift<5>/CEINV_1705 ),
    .CLK(\in/shift<5>/CLKINV_1706 ),
    .SET(\in/shift<5>/SRINV_1707 ),
    .RST(GND),
    .O(\in/shift [5])
  );
  X_LUT4 #(
    .INIT ( 16'hFCF0 ),
    .LOC ( "SLICE_X20Y21" ))
  \in/pstate_mux0000<4>_SW0  (
    .ADR0(VCC),
    .ADR1(rx_IBUF_1384),
    .ADR2(\in/pstate [4]),
    .ADR3(\in/pstate [1]),
    .O(N13_pack_2)
  );
  X_FF #(
    .LOC ( "SLICE_X21Y13" ),
    .INIT ( 1'b0 ))
  \in/control_2  (
    .I(\in/control<2>/DYMUX_1690 ),
    .CE(\in/control<2>/CEINV_1686 ),
    .CLK(\in/control<2>/CLKINV_1687 ),
    .SET(GND),
    .RST(\in/control<2>/FFY/RSTAND_1696 ),
    .O(\in/control [2])
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y13" ))
  \in/control<2>/FFY/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\in/control<2>/FFY/RSTAND_1696 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X25Y25" ))
  \in/pstate_mux0000<2>4  (
    .ADR0(\in/bittimer [3]),
    .ADR1(\in/bittimer [1]),
    .ADR2(\in/bittimer [2]),
    .ADR3(\in/bittimer [0]),
    .O(\in/pstate_mux0000<2>4_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 1'b1 ))
  \in/shift_3  (
    .I(\in/shift<3>/DXMUX_1674 ),
    .CE(\in/shift<3>/CEINV_1662 ),
    .CLK(\in/shift<3>/CLKINV_1663 ),
    .SET(\in/shift<3>/SRINV_1664 ),
    .RST(GND),
    .O(\in/shift [3])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y21" ),
    .INIT ( 1'b1 ))
  \in/shift_4  (
    .I(\in/shift<5>/DYMUX_1709 ),
    .CE(\in/shift<5>/CEINV_1705 ),
    .CLK(\in/shift<5>/CLKINV_1706 ),
    .SET(\in/shift<5>/SRINV_1707 ),
    .RST(GND),
    .O(\in/shift [4])
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X0Y40" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/DYMUX_1731 ),
    .CE(VCC),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLKINV_1729 ),
    .SET(GND),
    .RST(GND),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_1377 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y21" ),
    .INIT ( 1'b0 ))
  \in/pstate_1  (
    .I(\in/pstate<1>/DXMUX_1768 ),
    .CE(VCC),
    .CLK(\in/pstate<1>/CLKINV_1751 ),
    .SET(GND),
    .RST(\in/pstate<1>/FFX/RSTAND_1773 ),
    .O(\in/pstate [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y21" ))
  \in/pstate<1>/FFX/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\in/pstate<1>/FFX/RSTAND_1773 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 1'b1 ))
  \in/shift_8  (
    .I(\in/shift<9>/DYMUX_1836 ),
    .CE(\in/shift<9>/CEINV_1832 ),
    .CLK(\in/shift<9>/CLKINV_1833 ),
    .SET(\in/shift<9>/SRINV_1834 ),
    .RST(GND),
    .O(\in/shift [8])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 1'b1 ))
  \in/shift_9  (
    .I(\in/shift<9>/DXMUX_1844 ),
    .CE(\in/shift<9>/CEINV_1832 ),
    .CLK(\in/shift<9>/CLKINV_1833 ),
    .SET(\in/shift<9>/SRINV_1834 ),
    .RST(GND),
    .O(\in/shift [9])
  );
  X_LUT4 #(
    .INIT ( 16'h0F00 ),
    .LOC ( "SLICE_X20Y20" ))
  \in/pstate_mux0000<3>2  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(rx_IBUF_1384),
    .ADR3(\in/pstate [1]),
    .O(\in/pstate_mux0000<3>2_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0F0B ),
    .LOC ( "SLICE_X20Y20" ))
  \in/pstate_mux0000<3>30  (
    .ADR0(\in/pstate_mux0000<3>15_0 ),
    .ADR1(\in/loaded_mux0000_0 ),
    .ADR2(\in/control [2]),
    .ADR3(\in/pstate_mux0000<3>2_1402 ),
    .O(\in/pstate_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'hCC88 ),
    .LOC ( "SLICE_X25Y25" ))
  \in/pstate_mux0000<2>10  (
    .ADR0(\in/baud1/baud_1387 ),
    .ADR1(\in/pstate [3]),
    .ADR2(VCC),
    .ADR3(\in/pstate_mux0000<2>4_1389 ),
    .O(\in/pstate_mux0000<2>10_1822 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y18" ),
    .INIT ( 1'b0 ))
  \in/frame_error_2  (
    .I(\in/frame_error<3>/DYMUX_1925 ),
    .CE(\in/frame_error<3>/CEINV_1921 ),
    .CLK(\in/frame_error<3>/CLKINV_1922 ),
    .SET(GND),
    .RST(\in/frame_error<3>/SRINV_1923 ),
    .O(\in/frame_error [2])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y18" ),
    .INIT ( 1'b0 ))
  \in/frame_error_3  (
    .I(\in/frame_error<3>/DXMUX_1934 ),
    .CE(\in/frame_error<3>/CEINV_1921 ),
    .CLK(\in/frame_error<3>/CLKINV_1922 ),
    .SET(GND),
    .RST(\in/frame_error<3>/SRINV_1923 ),
    .O(\in/frame_error [3])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y18" ),
    .INIT ( 1'b0 ))
  \in/frame_error_1  (
    .I(\in/frame_error<1>/DXMUX_1871 ),
    .CE(\in/frame_error<1>/CEINV_1858 ),
    .CLK(\in/frame_error<1>/CLKINV_1859 ),
    .SET(GND),
    .RST(\in/frame_error<1>/SRINV_1860 ),
    .O(\in/frame_error [1])
  );
  X_FF #(
    .LOC ( "SLICE_X5Y40" ),
    .INIT ( 1'b1 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_0  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DYMUX_2868 ),
    .CE(VCC),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_2865 ),
    .SET(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_2866 ),
    .RST(GND),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y18" ),
    .INIT ( 1'b0 ))
  \in/frame_error_0  (
    .I(\in/frame_error<1>/DYMUX_1862 ),
    .CE(\in/frame_error<1>/CEINV_1858 ),
    .CLK(\in/frame_error<1>/CLKINV_1859 ),
    .SET(GND),
    .RST(\in/frame_error<1>/SRINV_1860 ),
    .O(\in/frame_error [0])
  );
  X_FF #(
    .LOC ( "SLICE_X20Y20" ),
    .INIT ( 1'b0 ))
  \in/pstate_2  (
    .I(\in/pstate<2>/DXMUX_1907 ),
    .CE(VCC),
    .CLK(\in/pstate<2>/CLKINV_1889 ),
    .SET(GND),
    .RST(\in/pstate<2>/FFX/RSTAND_1912 ),
    .O(\in/pstate [2])
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y20" ))
  \in/pstate<2>/FFX/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\in/pstate<2>/FFX/RSTAND_1912 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFA8 ),
    .LOC ( "SLICE_X22Y18" ))
  \in/bittime1  (
    .ADR0(\in/pstate [2]),
    .ADR1(\in/N13 ),
    .ADR2(\in/bitcounter [0]),
    .ADR3(\in/pstate [3]),
    .O(\in/bittime )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y18" ),
    .INIT ( 1'b0 ))
  \in/bitcounter_0  (
    .I(\in/bitcounter<0>/DXMUX_2040 ),
    .CE(\in/bitcounter<0>/CEINV_2022 ),
    .CLK(\in/bitcounter<0>/CLKINV_2023 ),
    .SET(GND),
    .RST(\in/bitcounter<0>/FFX/RSTAND_2046 ),
    .O(\in/bitcounter [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y18" ))
  \in/bitcounter<0>/FFX/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\in/bitcounter<0>/FFX/RSTAND_2046 )
  );
  X_LUT4 #(
    .INIT ( 16'h0F00 ),
    .LOC ( "SLICE_X1Y40" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_1379 ),
    .ADR3(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1378 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb )
  );
  X_LUT4 #(
    .INIT ( 16'hF555 ),
    .LOC ( "SLICE_X19Y12" ))
  \in/control_2_not00011  (
    .ADR0(\in/control [0]),
    .ADR1(VCC),
    .ADR2(\in/full ),
    .ADR3(\in/frame_ready_1417 ),
    .O(\in/control_2_not0001 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y19" ),
    .INIT ( 1'b0 ))
  \in/frame_error_5  (
    .I(\in/frame_error<5>/DXMUX_1962 ),
    .CE(\in/frame_error<5>/CEINV_1949 ),
    .CLK(\in/frame_error<5>/CLKINV_1950 ),
    .SET(GND),
    .RST(\in/frame_error<5>/SRINV_1951 ),
    .O(\in/frame_error [5])
  );
  X_FF #(
    .LOC ( "SLICE_X19Y12" ),
    .INIT ( 1'b0 ))
  \in/control_1  (
    .I(\in/control<1>/DXMUX_2076 ),
    .CE(VCC),
    .CLK(\in/control<1>/CLKINV_2057 ),
    .SET(GND),
    .RST(\in/control<1>/FFX/RSTAND_2081 ),
    .O(\in/control [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y12" ))
  \in/control<1>/FFX/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\in/control<1>/FFX/RSTAND_2081 )
  );
  X_LUT4 #(
    .INIT ( 16'h00DD ),
    .LOC ( "SLICE_X22Y18" ))
  \in/Mcount_bitcounter_xor<0>11  (
    .ADR0(\in/pstate [2]),
    .ADR1(\in/N13 ),
    .ADR2(VCC),
    .ADR3(\in/bitcounter [0]),
    .O(\in/Mcount_bitcounter )
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ),
    .LOC ( "SLICE_X19Y12" ))
  \in/control_1_mux00001  (
    .ADR0(\in/control [0]),
    .ADR1(\in/empty ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\in/control_1_mux0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y18" ),
    .INIT ( 1'b0 ))
  \in/frame_error_7  (
    .I(\in/frame_error<7>/DXMUX_1990 ),
    .CE(\in/frame_error<7>/CEINV_1977 ),
    .CLK(\in/frame_error<7>/CLKINV_1978 ),
    .SET(GND),
    .RST(\in/frame_error<7>/SRINV_1979 ),
    .O(\in/frame_error [7])
  );
  X_FF #(
    .LOC ( "SLICE_X3Y18" ),
    .INIT ( 1'b0 ))
  \in/frame_error_6  (
    .I(\in/frame_error<7>/DYMUX_1981 ),
    .CE(\in/frame_error<7>/CEINV_1977 ),
    .CLK(\in/frame_error<7>/CLKINV_1978 ),
    .SET(GND),
    .RST(\in/frame_error<7>/SRINV_1979 ),
    .O(\in/frame_error [6])
  );
  X_FF #(
    .LOC ( "SLICE_X3Y19" ),
    .INIT ( 1'b0 ))
  \in/frame_error_4  (
    .I(\in/frame_error<5>/DYMUX_1953 ),
    .CE(\in/frame_error<5>/CEINV_1949 ),
    .CLK(\in/frame_error<5>/CLKINV_1950 ),
    .SET(GND),
    .RST(\in/frame_error<5>/SRINV_1951 ),
    .O(\in/frame_error [4])
  );
  X_LUT4 #(
    .INIT ( 16'hA251 ),
    .LOC ( "SLICE_X10Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000073_SW0  (
    .ADR0(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .ADR1(\in/pstate [4]),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1442 ),
    .ADR3(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .O(\in/fifo1/N9 )
  );
  X_LUT4 #(
    .INIT ( 16'h55AA ),
    .LOC ( "SLICE_X10Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<1>11  (
    .ADR0(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .O(\in/fifo1/Result<1>1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 1'b1 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_0  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_2219 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_2193 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_2194 ),
    .SET(GND),
    .RST(GND),
    .SSET(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_2195 ),
    .SRST(GND),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0])
  );
  X_FF #(
    .LOC ( "SLICE_X22Y35" ),
    .INIT ( 1'b0 ))
  \out/pstate_FSM_FFd1  (
    .I(\out/pstate_FSM_FFd1/DXMUX_2161 ),
    .CE(VCC),
    .CLK(\out/pstate_FSM_FFd1/CLKINV_2145 ),
    .SET(GND),
    .RST(\out/pstate_FSM_FFd1/FFX/RSTAND_2166 ),
    .O(\out/pstate_FSM_FFd1_1425 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y35" ))
  \out/pstate_FSM_FFd1/FFX/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\out/pstate_FSM_FFd1/FFX/RSTAND_2166 )
  );
  X_LUT4 #(
    .INIT ( 16'hEEC0 ),
    .LOC ( "SLICE_X22Y35" ))
  \out/pstate_FSM_FFd1-In  (
    .ADR0(\out/N8_0 ),
    .ADR1(\out/pstate_FSM_FFd1_1425 ),
    .ADR2(N23),
    .ADR3(\out/baud1/baud_1432 ),
    .O(\out/pstate_FSM_FFd1-In_2158 )
  );
  X_LUT4 #(
    .INIT ( 16'h3131 ),
    .LOC ( "SLICE_X27Y36" ))
  \out/Mcount_bitcounter_xor<0>11  (
    .ADR0(\out/bitcounter [1]),
    .ADR1(\out/bitcounter [0]),
    .ADR2(\out/N2 ),
    .ADR3(VCC),
    .O(\out/Mcount_bitcounter )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X22Y35" ))
  \out/pstate_FSM_FFd1-In_SW0  (
    .ADR0(\out/bittimer [2]),
    .ADR1(\out/bittimer [1]),
    .ADR2(\out/bittimer [0]),
    .ADR3(\out/bittimer [3]),
    .O(N23_pack_2)
  );
  X_LUT4 #(
    .INIT ( 16'hAAFF ),
    .LOC ( "SLICE_X21Y20" ))
  \in/bitcounter_not00012  (
    .ADR0(\in/finish ),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\in/loaded_mux0000_0 ),
    .O(\in/bitcounter_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ),
    .LOC ( "SLICE_X29Y31" ))
  \out/baud1/baud_cmp_eq0000822  (
    .ADR0(\out/baud1/timer [4]),
    .ADR1(\out/baud1/timer [7]),
    .ADR2(\out/baud1/timer [6]),
    .ADR3(\out/baud1/timer [5]),
    .O(\out/baud1/baud_cmp_eq0000822_2130 )
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_1  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_2205 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_2193 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_2194 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_2195 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1])
  );
  X_LUT4 #(
    .INIT ( 16'hFBFF ),
    .LOC ( "SLICE_X27Y36" ))
  \out/Mcount_bitcounter_xor<1>111  (
    .ADR0(\out/bitcounter [2]),
    .ADR1(\out/pstate_FSM_FFd2_1423 ),
    .ADR2(\out/pstate_FSM_FFd1_1425 ),
    .ADR3(\out/bitcounter [3]),
    .O(\out/N2_pack_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X27Y36" ),
    .INIT ( 1'b0 ))
  \out/bitcounter_0  (
    .I(\out/bitcounter<0>/DXMUX_2113 ),
    .CE(\out/bitcounter<0>/CEINV_2095 ),
    .CLK(\out/bitcounter<0>/CLKINV_2096 ),
    .SET(GND),
    .RST(\out/bitcounter<0>/FFX/RSTAND_2119 ),
    .O(\out/bitcounter [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y36" ))
  \out/bitcounter<0>/FFX/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\out/bitcounter<0>/FFX/RSTAND_2119 )
  );
  X_LUT4 #(
    .INIT ( 16'h3500 ),
    .LOC ( "SLICE_X19Y10" ))
  dout_1__and00001 (
    .ADR0(\in/dout_fifo [1]),
    .ADR1(\in/control [1]),
    .ADR2(addr_rx[1]),
    .ADR3(reset_IBUF_1366),
    .O(dout_1__and0000)
  );
  X_LUT4 #(
    .INIT ( 16'hCA00 ),
    .LOC ( "SLICE_X19Y10" ))
  dout_1__and00011 (
    .ADR0(\in/dout_fifo [1]),
    .ADR1(\in/control [1]),
    .ADR2(addr_rx[1]),
    .ADR3(reset_IBUF_1366),
    .O(dout_1__and0001)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y32" ),
    .INIT ( 1'b1 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_0  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DXMUX_2299 ),
    .CE(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_2278 ),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_2279 ),
    .SET(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_2280 ),
    .RST(GND),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0])
  );
  X_LUT4 #(
    .INIT ( 16'hC0C0 ),
    .LOC ( "SLICE_X31Y23" ))
  \in/baud1/timer_mux0000<4>_SW0  (
    .ADR0(VCC),
    .ADR1(\in/baud1/timer [0]),
    .ADR2(\in/baud1/timer [1]),
    .ADR3(VCC),
    .O(N31)
  );
  X_LUT4 #(
    .INIT ( 16'h33CC ),
    .LOC ( "SLICE_X2Y32" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<1>11  (
    .ADR0(VCC),
    .ADR1(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .ADR2(VCC),
    .ADR3(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .O(\out/fifo1/Result [1])
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ),
    .LOC ( "SLICE_X31Y23" ))
  \in/baud1/baud_cmp_eq0000810  (
    .ADR0(\in/baud1/timer [2]),
    .ADR1(\in/baud1/timer [0]),
    .ADR2(\in/baud1/timer [1]),
    .ADR3(\in/baud1/timer [3]),
    .O(\in/baud1/baud_cmp_eq0000810_2380 )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y22" ),
    .INIT ( 1'b0 ))
  \in/baud1/baud  (
    .I(\in/baud1/baud/DYMUX_2401 ),
    .CE(\in/baud1/baud/CEINV_2397 ),
    .CLK(\in/baud1/baud/CLKINV_2398 ),
    .SET(GND),
    .RST(\in/baud1/baud/FFY/RSTAND_2407 ),
    .O(\in/baud1/baud_1387 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y22" ))
  \in/baud1/baud/FFY/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\in/baud1/baud/FFY/RSTAND_2407 )
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y3" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_1  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DYMUX_2250 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_2238 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_2239 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_2240 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1])
  );
  X_LUT4 #(
    .INIT ( 16'hA55D ),
    .LOC ( "SLICE_X21Y18" ))
  \in/Mcount_bitcounter_xor<3>1_SW0  (
    .ADR0(\in/bitcounter [3]),
    .ADR1(\in/pstate [2]),
    .ADR2(\in/bitcounter [0]),
    .ADR3(\in/bitcounter [2]),
    .O(N21_pack_3)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y32" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_1  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/DYMUX_2290 ),
    .CE(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CEINV_2278 ),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/CLKINV_2279 ),
    .SET(GND),
    .RST(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<0>/SRINV_2280 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y3" ),
    .INIT ( 1'b1 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_0  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/DXMUX_2264 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CEINV_2238 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/CLKINV_2239 ),
    .SET(GND),
    .RST(GND),
    .SSET(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<0>/SRINV_2240 ),
    .SRST(GND),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0])
  );
  X_LUT4 #(
    .INIT ( 16'h2E2E ),
    .LOC ( "SLICE_X21Y18" ))
  \in/Mcount_bitcounter_xor<3>1  (
    .ADR0(\in/bitcounter [3]),
    .ADR1(\in/bitcounter [1]),
    .ADR2(N21),
    .ADR3(VCC),
    .O(\in/Mcount_bitcounter3 )
  );
  X_LUT4 #(
    .INIT ( 16'h55AA ),
    .LOC ( "SLICE_X9Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<1>11  (
    .ADR0(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .O(\in/fifo1/Result [1])
  );
  X_FF #(
    .LOC ( "SLICE_X21Y18" ),
    .INIT ( 1'b0 ))
  \in/bitcounter_3  (
    .I(\in/bitcounter<3>/DXMUX_2360 ),
    .CE(\in/bitcounter<3>/CEINV_2342 ),
    .CLK(\in/bitcounter<3>/CLKINV_2343 ),
    .SET(GND),
    .RST(\in/bitcounter<3>/FFX/RSTAND_2366 ),
    .O(\in/bitcounter [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y18" ))
  \in/bitcounter<3>/FFX/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\in/bitcounter<3>/FFX/RSTAND_2366 )
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ),
    .LOC ( "SLICE_X9Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000062  (
    .ADR0(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .ADR3(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000062_2261 )
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ),
    .LOC ( "SLICE_X8Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056  (
    .ADR0(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .ADR3(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056_2423 )
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y40" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_1  (
    .I(\out/to_shift<1>/DXMUX_2451 ),
    .CE(\out/to_shift<1>/CEINV_2440 ),
    .CLK(\out/to_shift<1>/CLKINV_2441 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\out/to_shift<1>/SRINV_2442 ),
    .O(\out/to_shift [1])
  );
  X_LUT4 #(
    .INIT ( 16'h7DBE ),
    .LOC ( "SLICE_X8Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux00003168_SW0  (
    .ADR0(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .ADR3(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .O(\in/fifo1/N01 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF0C ),
    .LOC ( "SLICE_X11Y1" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en1  (
    .ADR0(VCC),
    .ADR1(\in/rd_fifo ),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1483 ),
    .ADR3(\in/pstate [0]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en )
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y40" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_3  (
    .I(\out/to_shift<3>/DXMUX_2520 ),
    .CE(\out/to_shift<3>/CEINV_2509 ),
    .CLK(\out/to_shift<3>/CLKINV_2510 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\out/to_shift<3>/SRINV_2511 ),
    .O(\out/to_shift [3])
  );
  X_FF #(
    .LOC ( "SLICE_X12Y2" ),
    .INIT ( 1'b1 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i  (
    .I(\in/empty/DYMUX_2486 ),
    .CE(VCC),
    .CLK(\in/empty/CLKINV_2484 ),
    .SET(GND),
    .RST(GND),
    .O(\in/empty )
  );
  X_LUT4 #(
    .INIT ( 16'hFAFA ),
    .LOC ( "SLICE_X11Y1" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000100_SW1  (
    .ADR0(\in/pstate [0]),
    .ADR1(VCC),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1483 ),
    .ADR3(VCC),
    .O(\in/fifo1/N3 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAFA ),
    .LOC ( "SLICE_X12Y32" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en1  (
    .ADR0(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .ADR1(VCC),
    .ADR2(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .ADR3(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1488 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en )
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y40" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_2  (
    .I(\out/to_shift<3>/DYMUX_2513 ),
    .CE(\out/to_shift<3>/CEINV_2509 ),
    .CLK(\out/to_shift<3>/CLKINV_2510 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\out/to_shift<3>/SRINV_2511 ),
    .O(\out/to_shift [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y40" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_0  (
    .I(\out/to_shift<1>/DYMUX_2444 ),
    .CE(\out/to_shift<1>/CEINV_2440 ),
    .CLK(\out/to_shift<1>/CLKINV_2441 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\out/to_shift<1>/SRINV_2442 ),
    .O(\out/to_shift [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_4  (
    .I(\out/to_shift<5>/DYMUX_2537 ),
    .CE(\out/to_shift<5>/CEINV_2533 ),
    .CLK(\out/to_shift<5>/CLKINV_2534 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\out/to_shift<5>/SRINV_2535 ),
    .O(\out/to_shift [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_5  (
    .I(\out/to_shift<5>/DXMUX_2544 ),
    .CE(\out/to_shift<5>/CEINV_2533 ),
    .CLK(\out/to_shift<5>/CLKINV_2534 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\out/to_shift<5>/SRINV_2535 ),
    .O(\out/to_shift [5])
  );
  X_FF #(
    .LOC ( "SLICE_X23Y35" ),
    .INIT ( 1'b0 ))
  \out/bittimer_0  (
    .I(\out/bittimer<0>/DXMUX_2639 ),
    .CE(\out/bittimer<0>/CEINV_2610 ),
    .CLK(\out/bittimer<0>/CLKINV_2611 ),
    .SET(GND),
    .RST(\out/bittimer<0>/SRINV_2612 ),
    .O(\out/bittimer [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y2" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DYMUX_2682 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_2678 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_2679 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_2680 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0])
  );
  X_FF #(
    .LOC ( "SLICE_X23Y35" ),
    .INIT ( 1'b0 ))
  \out/bittimer_1  (
    .I(\out/bittimer<0>/DYMUX_2622 ),
    .CE(\out/bittimer<0>/CEINV_2610 ),
    .CLK(\out/bittimer<0>/CLKINV_2611 ),
    .SET(GND),
    .RST(\out/bittimer<0>/SRINV_2612 ),
    .O(\out/bittimer [1])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFA ),
    .LOC ( "SLICE_X23Y35" ))
  \out/bitcounter_not00011_SW0  (
    .ADR0(\out/bittimer [1]),
    .ADR1(VCC),
    .ADR2(\out/bittimer [2]),
    .ADR3(\out/bittimer [0]),
    .O(N15)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y40" ),
    .INIT ( 1'b1 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_2  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/DXMUX_2875 ),
    .CE(VCC),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/CLKINV_2865 ),
    .SET(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg<2>/SRINV_2866 ),
    .RST(GND),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y2" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/DXMUX_2689 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CEINV_2678 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/CLKINV_2679 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<1>/SRINV_2680 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ),
    .LOC ( "SLICE_X17Y11" ))
  \Madd_data_add0000_xor<4>111_SW4  (
    .ADR0(trans[0]),
    .ADR1(pstate_FSM_FFd2_1518),
    .ADR2(\in/dout_fifo [6]),
    .ADR3(trans[1]),
    .O(N54)
  );
  X_LUT4 #(
    .INIT ( 16'h55AA ),
    .LOC ( "SLICE_X23Y35" ))
  \out/Mcount_bittimer_xor<1>11  (
    .ADR0(\out/bittimer [1]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\out/bittimer [0]),
    .O(\out/Result [1])
  );
  X_LUT4 #(
    .INIT ( 16'hCECC ),
    .LOC ( "SLICE_X23Y23" ))
  \in/loaded_not00011  (
    .ADR0(N46),
    .ADR1(\in/load_1503 ),
    .ADR2(\in/baud1/baud_1387 ),
    .ADR3(\in/pstate [3]),
    .O(\in/loaded_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h00AA ),
    .LOC ( "SLICE_X12Y12" ))
  \Madd_data_add0000_xor<4>111_SW1  (
    .ADR0(\in/dout_fifo [7]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(addr_rx[1]),
    .O(N50)
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ),
    .LOC ( "SLICE_X12Y12" ))
  \Madd_data_add0000_xor<6>111_SW0  (
    .ADR0(\in/dout_fifo [4]),
    .ADR1(addr_rx[1]),
    .ADR2(\in/dout_fifo [6]),
    .ADR3(\in/dout_fifo [5]),
    .O(N40)
  );
  X_SFF #(
    .LOC ( "SLICE_X13Y30" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_6  (
    .I(\out/to_shift<7>/DYMUX_2561 ),
    .CE(\out/to_shift<7>/CEINV_2557 ),
    .CLK(\out/to_shift<7>/CLKINV_2558 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\out/to_shift<7>/SRINV_2559 ),
    .O(\out/to_shift [6])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X23Y23" ))
  \in/loaded_mux0000_SW0  (
    .ADR0(\in/bittimer [2]),
    .ADR1(\in/bittimer [3]),
    .ADR2(\in/bittimer [0]),
    .ADR3(\in/bittimer [1]),
    .O(N46_pack_1)
  );
  X_SFF #(
    .LOC ( "SLICE_X13Y30" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/dout_i_7  (
    .I(\out/to_shift<7>/DXMUX_2568 ),
    .CE(\out/to_shift<7>/CEINV_2557 ),
    .CLK(\out/to_shift<7>/CLKINV_2558 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\out/to_shift<7>/SRINV_2559 ),
    .O(\out/to_shift [7])
  );
  X_SFF #(
    .LOC ( "SLICE_X7Y2" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DXMUX_2713 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_2702 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_2703 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_2704 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X7Y2" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_0  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/DYMUX_2706 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CEINV_2702 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/CLKINV_2703 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<1>/SRINV_2704 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hBFEF ),
    .LOC ( "SLICE_X14Y11" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux00005_SW0  (
    .ADR0(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1483 ),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .ADR2(\in/rd_fifo ),
    .ADR3(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .O(\in/fifo1/N11 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 1'b0 ))
  dout_1 (
    .I(\dout<1>/DYMUX_5539 ),
    .CE(VCC),
    .CLK(\dout<1>/CLKINV_5528 ),
    .SET(\dout<1>/FFY/SET ),
    .RST(\dout<1>/FFY/RSTAND_5546 ),
    .O(dout[1])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y11" ))
  \dout<1>/FFY/SETOR  (
    .I(dout_1__and0001),
    .O(\dout<1>/FFY/SET )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y11" ))
  \dout<1>/FFY/RSTAND  (
    .I(dout_1__and0000),
    .O(\dout<1>/FFY/RSTAND_5546 )
  );
  X_LUT4 #(
    .INIT ( 16'hF3C0 ),
    .LOC ( "SLICE_X18Y11" ))
  \in/dout<1>1  (
    .ADR0(VCC),
    .ADR1(addr_rx[1]),
    .ADR2(\in/control [1]),
    .ADR3(\in/dout_fifo [1]),
    .O(Madd_data_add0000_lut[1])
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X1Y41" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/DYMUX_5566 ),
    .CE(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CEINV_5562 ),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLKINV_5563 ),
    .SET(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SET ),
    .RST(GND),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_1378 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y41" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SETOR  (
    .I(reset_IBUF_1366),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/FFY/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h33CC ),
    .LOC ( "SLICE_X23Y27" ))
  \in/Mcount_bittimer_xor<1>11  (
    .ADR0(VCC),
    .ADR1(\in/bittimer [1]),
    .ADR2(VCC),
    .ADR3(\in/bittimer [0]),
    .O(\in/Result [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ),
    .LOC ( "SLICE_X14Y11" ))
  rx_sel1 (
    .ADR0(trans[1]),
    .ADR1(trans[0]),
    .ADR2(pstate_FSM_FFd2_1518),
    .ADR3(VCC),
    .O(\in/rd_fifo_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h77FF ),
    .LOC ( "SLICE_X18Y11" ))
  \addr_rx<1>1  (
    .ADR0(trans[0]),
    .ADR1(pstate_FSM_FFd2_1518),
    .ADR2(VCC),
    .ADR3(trans[1]),
    .O(\addr_rx<1>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h2288 ),
    .LOC ( "SLICE_X29Y22" ))
  \in/baud1/timer_mux0000<1>1  (
    .ADR0(\in/baud1/N01 ),
    .ADR1(\in/baud1/Madd_timer_addsub0000_cy<5>_0 ),
    .ADR2(VCC),
    .ADR3(\in/baud1/timer [6]),
    .O(\in/baud1/timer_mux0000 [1])
  );
  X_FF #(
    .LOC ( "SLICE_X29Y22" ),
    .INIT ( 1'b0 ))
  \in/baud1/timer_7  (
    .I(\in/baud1/timer<7>/DXMUX_5485 ),
    .CE(VCC),
    .CLK(\in/baud1/timer<7>/CLKINV_5461 ),
    .SET(GND),
    .RST(\in/baud1/timer<7>/SRINV_5462 ),
    .O(\in/baud1/timer [7])
  );
  X_FF #(
    .LOC ( "SLICE_X23Y27" ),
    .INIT ( 1'b0 ))
  \in/bittimer_1  (
    .I(\in/bittimer<0>/DYMUX_5593 ),
    .CE(\in/bittimer<0>/CEINV_5581 ),
    .CLK(\in/bittimer<0>/CLKINV_5582 ),
    .SET(GND),
    .RST(\in/bittimer<0>/SRINV_5583 ),
    .O(\in/bittimer [1])
  );
  X_LUT4 #(
    .INIT ( 16'h60A0 ),
    .LOC ( "SLICE_X29Y22" ))
  \in/baud1/timer_mux0000<0>1  (
    .ADR0(\in/baud1/timer [7]),
    .ADR1(\in/baud1/Madd_timer_addsub0000_cy<5>_0 ),
    .ADR2(\in/baud1/N01 ),
    .ADR3(\in/baud1/timer [6]),
    .O(\in/baud1/timer_mux0000 [0])
  );
  X_FF #(
    .LOC ( "SLICE_X29Y22" ),
    .INIT ( 1'b0 ))
  \in/baud1/timer_6  (
    .I(\in/baud1/timer<7>/DYMUX_5471 ),
    .CE(VCC),
    .CLK(\in/baud1/timer<7>/CLKINV_5461 ),
    .SET(GND),
    .RST(\in/baud1/timer<7>/SRINV_5462 ),
    .O(\in/baud1/timer [6])
  );
  X_LUT4 #(
    .INIT ( 16'h00F0 ),
    .LOC ( "SLICE_X23Y18" ))
  \in/Mcount_bitcounter_xor<1>1_SW0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\in/pstate [2]),
    .ADR3(\in/bitcounter [2]),
    .O(N11_pack_2)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y18" ),
    .INIT ( 1'b0 ))
  \in/bitcounter_1  (
    .I(\in/bitcounter<1>/DXMUX_5640 ),
    .CE(\in/bitcounter<1>/CEINV_5621 ),
    .CLK(\in/bitcounter<1>/CLKINV_5622 ),
    .SET(GND),
    .RST(\in/bitcounter<1>/FFX/RSTAND_5646 ),
    .O(\in/bitcounter [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y18" ))
  \in/bitcounter<1>/FFX/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\in/bitcounter<1>/FFX/RSTAND_5646 )
  );
  X_LUT4 #(
    .INIT ( 16'h334C ),
    .LOC ( "SLICE_X23Y18" ))
  \in/Mcount_bitcounter_xor<1>1  (
    .ADR0(\in/bitcounter [3]),
    .ADR1(\in/bitcounter [1]),
    .ADR2(N11),
    .ADR3(\in/bitcounter [0]),
    .O(\in/Mcount_bitcounter1 )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y27" ),
    .INIT ( 1'b0 ))
  \in/bittimer_0  (
    .I(\in/bittimer<0>/DXMUX_5602 ),
    .CE(\in/bittimer<0>/CEINV_5581 ),
    .CLK(\in/bittimer<0>/CLKINV_5582 ),
    .SET(GND),
    .RST(\in/bittimer<0>/SRINV_5583 ),
    .O(\in/bittimer [0])
  );
  X_LUT4 #(
    .INIT ( 16'hFAFA ),
    .LOC ( "SLICE_X21Y35" ))
  \out/bittime1  (
    .ADR0(\out/N8_0 ),
    .ADR1(VCC),
    .ADR2(\out/pstate_FSM_FFd1_1425 ),
    .ADR3(VCC),
    .O(\out/bittime )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y11" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i  (
    .I(\in/full/DYMUX_3248 ),
    .CE(VCC),
    .CLK(\in/full/CLKINV_3246 ),
    .SET(GND),
    .RST(GND),
    .O(\in/full )
  );
  X_LUT4 #(
    .INIT ( 16'h3030 ),
    .LOC ( "SLICE_X10Y0" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/ram_rd_en_i1  (
    .ADR0(VCC),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1483 ),
    .ADR2(\in/rd_fifo ),
    .ADR3(VCC),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en )
  );
  X_BUF #(
    .LOC ( "PAD2" ))
  \rx/IFF/IMUX  (
    .I(\rx/INBUF ),
    .O(rx_IBUF_1384)
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \fsm/IFF/IMUX  (
    .I(\fsm/INBUF ),
    .O(fsm_IBUF_1559)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y34" ),
    .INIT ( 1'b1 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i  (
    .I(\out/empty/DYMUX_3259 ),
    .CE(VCC),
    .CLK(\out/empty/CLKINV_3256 ),
    .SET(\out/empty/FFY/SET ),
    .RST(GND),
    .O(\out/empty )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y34" ))
  \out/empty/FFY/SETOR  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\out/empty/FFY/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ),
    .LOC ( "SLICE_X19Y13" ))
  \Madd_data_add0000_xor<3>11_F  (
    .ADR0(\in/dout_fifo [3]),
    .ADR1(\in/dout_fifo [0]),
    .ADR2(\in/dout_fifo [2]),
    .ADR3(\in/dout_fifo [1]),
    .O(N60)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y13" ),
    .INIT ( 1'b1 ))
  data_3 (
    .I(\data<3>/DXMUX_3749 ),
    .CE(\data<3>/CEINV_3730 ),
    .CLK(\data<3>/CLKINV_3731 ),
    .SET(\data<3>/FFX/SET ),
    .RST(GND),
    .O(data[3])
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y13" ))
  \data<3>/FFX/SETOR  (
    .I(reset_IBUF_1366),
    .O(\data<3>/FFX/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h95C0 ),
    .LOC ( "SLICE_X19Y17" ))
  \Madd_data_add0000_xor<4>111_SW2_G  (
    .ADR0(addr_rx[1]),
    .ADR1(\in/dout_fifo [3]),
    .ADR2(\in/dout_fifo [1]),
    .ADR3(\in/dout_fifo [7]),
    .O(N57)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ),
    .LOC ( "SLICE_X13Y11" ))
  \Madd_data_add0000_xor<4>111_SW3_F  (
    .ADR0(\in/dout_fifo [6]),
    .ADR1(pstate_FSM_FFd2_1518),
    .ADR2(trans[0]),
    .ADR3(trans[1]),
    .O(N58)
  );
  X_LUT4 #(
    .INIT ( 16'hF9F5 ),
    .LOC ( "SLICE_X13Y11" ))
  \Madd_data_add0000_xor<4>111_SW3_G  (
    .ADR0(\in/dout_fifo [6]),
    .ADR1(\in/dout_fifo [1]),
    .ADR2(addr_rx[1]),
    .ADR3(\in/dout_fifo [3]),
    .O(N59)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X19Y17" ))
  \Madd_data_add0000_xor<4>111_SW2_F  (
    .ADR0(trans[0]),
    .ADR1(pstate_FSM_FFd2_1518),
    .ADR2(trans[1]),
    .ADR3(\in/dout_fifo [7]),
    .O(N56)
  );
  X_LUT4 #(
    .INIT ( 16'h8800 ),
    .LOC ( "SLICE_X19Y13" ))
  \Madd_data_add0000_xor<3>11_G  (
    .ADR0(\in/control [0]),
    .ADR1(\in/control [2]),
    .ADR2(VCC),
    .ADR3(\in/control [1]),
    .O(N61)
  );
  X_BUF #(
    .LOC ( "IPAD60" ))
  \reset/IFF/IMUX  (
    .I(\reset/INBUF ),
    .O(reset_IBUF_1366)
  );
  X_LUT4 #(
    .INIT ( 16'hFFDE ),
    .LOC ( "SLICE_X11Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux00003168  (
    .ADR0(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .ADR1(\in/fifo1/N01_0 ),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .ADR3(\in/fifo1/N7_0 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux00003168/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hA000 ),
    .LOC ( "SLICE_X13Y10" ))
  \Madd_data_add0000_xor<4>12_SW0  (
    .ADR0(\in/dout_fifo [1]),
    .ADR1(VCC),
    .ADR2(\in/dout_fifo [2]),
    .ADR3(\in/dout_fifo [3]),
    .O(\Madd_data_add0000_xor<4>12_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h7077 ),
    .LOC ( "SLICE_X28Y32" ))
  \out/baud1/timer_mux0000<0>11  (
    .ADR0(\out/baud1/baud_cmp_eq0000822_0 ),
    .ADR1(\out/baud1/baud_cmp_eq0000810_1573 ),
    .ADR2(\out/pstate_FSM_FFd2_1423 ),
    .ADR3(\out/empty ),
    .O(\out/baud1/N01_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h6350 ),
    .LOC ( "SLICE_X13Y10" ))
  \Madd_data_add0000_xor<4>12  (
    .ADR0(N38),
    .ADR1(addr_rx[1]),
    .ADR2(\Madd_data_add0000_xor<4>12_SW0/O ),
    .ADR3(\in/dout_fifo [4]),
    .O(\data_add0000[4] )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y12" ),
    .INIT ( 1'b1 ))
  data_5 (
    .I(\data<5>/DXMUX_3963 ),
    .CE(\data<5>/CEINV_3946 ),
    .CLK(\data<5>/CLKINV_3947 ),
    .SET(\data<5>/FFX/SET ),
    .RST(GND),
    .O(data[5])
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y12" ))
  \data<5>/FFX/SETOR  (
    .I(reset_IBUF_1366),
    .O(\data<5>/FFX/SET )
  );
  X_LUT4 #(
    .INIT ( 16'hE0F0 ),
    .LOC ( "SLICE_X24Y37" ))
  \out/pstate_FSM_FFd1-In3  (
    .ADR0(\out/bitcounter [0]),
    .ADR1(\out/pstate_FSM_FFd1-In3_SW0/O ),
    .ADR2(\out/pstate_FSM_FFd2_1423 ),
    .ADR3(\out/bitcounter [3]),
    .O(\out/N8 )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y32" ),
    .INIT ( 1'b0 ))
  \out/baud1/timer_3  (
    .I(\out/baud1/timer<3>/DXMUX_3865 ),
    .CE(VCC),
    .CLK(\out/baud1/timer<3>/CLKINV_3849 ),
    .SET(GND),
    .RST(\out/baud1/timer<3>/FFX/RSTAND_3870 ),
    .O(\out/baud1/timer [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y32" ))
  \out/baud1/timer<3>/FFX/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\out/baud1/timer<3>/FFX/RSTAND_3870 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCEE ),
    .LOC ( "SLICE_X11Y3" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000102  (
    .ADR0(\in/fifo1/N2_0 ),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000073_0 ),
    .ADR2(\in/fifo1/N3_0 ),
    .ADR3(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux00003168/O ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y3" ),
    .INIT ( 1'b1 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_3833 ),
    .CE(VCC),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_3818 ),
    .SET(GND),
    .RST(GND),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1483 )
  );
  X_LUT4 #(
    .INIT ( 16'h6C00 ),
    .LOC ( "SLICE_X28Y32" ))
  \out/baud1/timer_mux0000<4>  (
    .ADR0(\out/baud1/timer [2]),
    .ADR1(\out/baud1/timer [3]),
    .ADR2(N29_0),
    .ADR3(\out/baud1/N01 ),
    .O(\out/baud1/timer_mux0000 [4])
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ),
    .LOC ( "SLICE_X13Y12" ))
  \Madd_data_add0000_xor<5>11_SW0  (
    .ADR0(\in/dout_fifo [1]),
    .ADR1(\in/dout_fifo [3]),
    .ADR2(\in/dout_fifo [2]),
    .ADR3(\in/dout_fifo [4]),
    .O(\Madd_data_add0000_xor<5>11_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h5401 ),
    .LOC ( "SLICE_X13Y12" ))
  \Madd_data_add0000_xor<5>11  (
    .ADR0(addr_rx[1]),
    .ADR1(N38),
    .ADR2(\Madd_data_add0000_xor<5>11_SW0/O ),
    .ADR3(\in/dout_fifo [5]),
    .O(\data_add0000[5] )
  );
  X_LUT4 #(
    .INIT ( 16'hDDDD ),
    .LOC ( "SLICE_X24Y37" ))
  \out/pstate_FSM_FFd1-In3_SW0  (
    .ADR0(\out/bitcounter [1]),
    .ADR1(\out/bitcounter [2]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\out/pstate_FSM_FFd1-In3_SW0/O_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y10" ),
    .INIT ( 1'b1 ))
  data_4 (
    .I(\data<4>/DXMUX_3926 ),
    .CE(\data<4>/CEINV_3908 ),
    .CLK(\data<4>/CLKINV_3909 ),
    .SET(\data<4>/FFX/SET ),
    .RST(GND),
    .O(data[4])
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y10" ))
  \data<4>/FFX/SETOR  (
    .I(reset_IBUF_1366),
    .O(\data<4>/FFX/SET )
  );
  X_LUT4 #(
    .INIT ( 16'hCEC4 ),
    .LOC ( "SLICE_X12Y13" ))
  \Madd_data_add0000_xor<7>11  (
    .ADR0(N40_0),
    .ADR1(N50_0),
    .ADR2(N38),
    .ADR3(N51),
    .O(\data_add0000[7] )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y11" ),
    .INIT ( 1'b1 ))
  data_6 (
    .I(\data<6>/DXMUX_4000 ),
    .CE(\data<6>/CEINV_3981 ),
    .CLK(\data<6>/CLKINV_3982 ),
    .SET(\data<6>/FFX/SET ),
    .RST(GND),
    .O(data[6])
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y11" ))
  \data<6>/FFX/SETOR  (
    .I(reset_IBUF_1366),
    .O(\data<6>/FFX/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h0E1F ),
    .LOC ( "SLICE_X12Y11" ))
  \Madd_data_add0000_xor<6>12  (
    .ADR0(\Madd_data_add0000_xor<6>12_SW0/O ),
    .ADR1(N38),
    .ADR2(N54_0),
    .ADR3(N53),
    .O(\data_add0000[6] )
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ),
    .LOC ( "SLICE_X13Y8" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux00005  (
    .ADR0(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1442 ),
    .ADR1(\in/fifo1/N01_0 ),
    .ADR2(\in/fifo1/N7_0 ),
    .ADR3(\in/fifo1/N11_0 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux00005/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hA500 ),
    .LOC ( "SLICE_X11Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000029  (
    .ADR0(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR1(VCC),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .ADR3(\in/rd_fifo ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000029/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X29Y32" ))
  \out/baud1/baud_cmp_eq0000810  (
    .ADR0(\out/baud1/timer [3]),
    .ADR1(\out/baud1/timer [0]),
    .ADR2(\out/baud1/timer [1]),
    .ADR3(\out/baud1/timer [2]),
    .O(\out/baud1/baud_cmp_eq0000810_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hC000 ),
    .LOC ( "SLICE_X11Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000073  (
    .ADR0(VCC),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000056_0 ),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000029/O ),
    .ADR3(\in/fifo1/N9_0 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_mux000073_4089 )
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X28Y23" ))
  \in/baud1/baud_cmp_eq0000822  (
    .ADR0(\in/baud1/timer [6]),
    .ADR1(\in/baud1/timer [5]),
    .ADR2(\in/baud1/timer [4]),
    .ADR3(\in/baud1/timer [7]),
    .O(\in/baud1/baud_cmp_eq0000822/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hF000 ),
    .LOC ( "SLICE_X28Y23" ))
  \in/baud1/baud_cmp_eq0000823  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\in/baud1/baud_cmp_eq0000822/O ),
    .ADR3(\in/baud1/baud_cmp_eq0000810_0 ),
    .O(\in/baud1/baud_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h5504 ),
    .LOC ( "SLICE_X13Y8" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux0000105  (
    .ADR0(\in/pstate [0]),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000062_0 ),
    .ADR2(\in/fifo1/N5_0 ),
    .ADR3(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux00005/O ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h5F5F ),
    .LOC ( "SLICE_X12Y11" ))
  \Madd_data_add0000_xor<6>12_SW0  (
    .ADR0(\in/dout_fifo [4]),
    .ADR1(VCC),
    .ADR2(\in/dout_fifo [5]),
    .ADR3(VCC),
    .O(\Madd_data_add0000_xor<6>12_SW0/O_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y13" ),
    .INIT ( 1'b1 ))
  data_7 (
    .I(\data<7>/DXMUX_4061 ),
    .CE(\data<7>/CEINV_4044 ),
    .CLK(\data<7>/CLKINV_4045 ),
    .SET(\data<7>/FFX/SET ),
    .RST(GND),
    .O(data[7])
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y13" ))
  \data<7>/FFX/SETOR  (
    .I(reset_IBUF_1366),
    .O(\data<7>/FFX/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X31Y22" ))
  \in/baud1/Madd_timer_addsub0000_cy<3>11  (
    .ADR0(\in/baud1/timer [2]),
    .ADR1(\in/baud1/timer [0]),
    .ADR2(\in/baud1/timer [1]),
    .ADR3(\in/baud1/timer [3]),
    .O(\in/baud1/Madd_timer_addsub0000_cy<3>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hF000 ),
    .LOC ( "SLICE_X29Y32" ))
  \out/baud1/baud_cmp_eq0000823  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\out/baud1/baud_cmp_eq0000810_1573 ),
    .ADR3(\out/baud1/baud_cmp_eq0000822_0 ),
    .O(\out/baud1/baud_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ),
    .LOC ( "SLICE_X12Y13" ))
  \Madd_data_add0000_xor<4>111_SW0  (
    .ADR0(pstate_FSM_FFd2_1518),
    .ADR1(\in/dout_fifo [0]),
    .ADR2(trans[0]),
    .ADR3(trans[1]),
    .O(N38_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hC431 ),
    .LOC ( "SLICE_X12Y9" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000021  (
    .ADR0(\in/rd_fifo ),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1483 ),
    .ADR3(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000021/O_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y8" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/DXMUX_4143 ),
    .CE(VCC),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLKINV_4128 ),
    .SET(GND),
    .RST(GND),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_1442 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X29Y30" ))
  \out/baud1/Madd_timer_addsub0000_cy<3>11  (
    .ADR0(\out/baud1/timer [2]),
    .ADR1(\out/baud1/timer [1]),
    .ADR2(\out/baud1/timer [3]),
    .ADR3(\out/baud1/timer [0]),
    .O(\out/baud1/Madd_timer_addsub0000_cy<3>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hAEAA ),
    .LOC ( "SLICE_X25Y37" ))
  \out/bitcounter_not0001  (
    .ADR0(\out/N7 ),
    .ADR1(\out/pstate_FSM_FFd2_1423 ),
    .ADR2(\out/pstate_FSM_FFd1_1425 ),
    .ADR3(\out/bitcounter_not0001_SW0/O ),
    .O(\out/bitcounter_not0001_4264 )
  );
  X_LUT4 #(
    .INIT ( 16'hA000 ),
    .LOC ( "SLICE_X29Y30" ))
  \out/baud1/Madd_timer_addsub0000_cy<5>11  (
    .ADR0(\out/baud1/timer [4]),
    .ADR1(VCC),
    .ADR2(\out/baud1/Madd_timer_addsub0000_cy[3] ),
    .ADR3(\out/baud1/timer [5]),
    .O(\out/baud1/Madd_timer_addsub0000_cy[5] )
  );
  X_LUT4 #(
    .INIT ( 16'h6FFF ),
    .LOC ( "SLICE_X12Y9" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000077_SW0  (
    .ADR0(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_mux000021/O ),
    .ADR3(\in/pstate [4]),
    .O(\in/fifo1/N5 )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y19" ),
    .INIT ( 1'b0 ))
  \in/pstate_3  (
    .I(\in/pstate<3>/DXMUX_4295 ),
    .CE(VCC),
    .CLK(\in/pstate<3>/CLKINV_4278 ),
    .SET(GND),
    .RST(\in/pstate<3>/FFX/RSTAND_4300 ),
    .O(\in/pstate [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y19" ))
  \in/pstate<3>/FFX/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\in/pstate<3>/FFX/RSTAND_4300 )
  );
  X_LUT4 #(
    .INIT ( 16'hC000 ),
    .LOC ( "SLICE_X31Y22" ))
  \in/baud1/Madd_timer_addsub0000_cy<5>11  (
    .ADR0(VCC),
    .ADR1(\in/baud1/timer [5]),
    .ADR2(\in/baud1/Madd_timer_addsub0000_cy[3] ),
    .ADR3(\in/baud1/timer [4]),
    .O(\in/baud1/Madd_timer_addsub0000_cy[5] )
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X23Y34" ))
  \out/bitcounter_not00011  (
    .ADR0(\out/bittimer [3]),
    .ADR1(N15_0),
    .ADR2(\out/pstate_FSM_FFd1_1425 ),
    .ADR3(\out/baud1/baud_1432 ),
    .O(\out/N7_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h2D78 ),
    .LOC ( "SLICE_X25Y6" ))
  \Madd_data_add0000_xor<1>11  (
    .ADR0(addr_rx[1]),
    .ADR1(\in/control [1]),
    .ADR2(Madd_data_add0000_cy[0]),
    .ADR3(\in/dout_fifo [1]),
    .O(\data_add0000[1] )
  );
  X_LUT4 #(
    .INIT ( 16'hAFA0 ),
    .LOC ( "SLICE_X25Y6" ))
  \in/dout<0>1  (
    .ADR0(\in/control [0]),
    .ADR1(VCC),
    .ADR2(addr_rx[1]),
    .ADR3(\in/dout_fifo [0]),
    .O(\Madd_data_add0000_cy<0>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF1F1 ),
    .LOC ( "SLICE_X23Y34" ))
  \out/shift_out_not00012  (
    .ADR0(\out/empty ),
    .ADR1(\out/pstate_FSM_FFd2_1423 ),
    .ADR2(\out/N7 ),
    .ADR3(VCC),
    .O(\out/shift_out_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h0200 ),
    .LOC ( "SLICE_X25Y37" ))
  \out/bitcounter_not0001_SW0  (
    .ADR0(\out/bitcounter [3]),
    .ADR1(\out/bitcounter [0]),
    .ADR2(\out/bitcounter [2]),
    .ADR3(\out/bitcounter [1]),
    .O(\out/bitcounter_not0001_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h5544 ),
    .LOC ( "SLICE_X23Y19" ))
  \in/pstate_mux0000<2>31  (
    .ADR0(\in/control [2]),
    .ADR1(\in/pstate_mux0000<2>10_0 ),
    .ADR2(VCC),
    .ADR3(\in/pstate_mux0000<2>18/O ),
    .O(\in/pstate_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hC800 ),
    .LOC ( "SLICE_X23Y19" ))
  \in/pstate_mux0000<2>18  (
    .ADR0(\in/bitcounter [0]),
    .ADR1(\in/baud1/baud_1387 ),
    .ADR2(\in/N13 ),
    .ADR3(\in/pstate [2]),
    .O(\in/pstate_mux0000<2>18/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hAFFF ),
    .LOC ( "SLICE_X20Y18" ))
  \in/Mcount_bitcounter_xor<0>1111  (
    .ADR0(\in/bitcounter [2]),
    .ADR1(VCC),
    .ADR2(\in/bitcounter [1]),
    .ADR3(\in/bitcounter [3]),
    .O(\in/N13_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y22" ),
    .INIT ( 1'b0 ))
  \in/baud1/timer_0  (
    .I(\in/baud1/timer<0>/DXMUX_4401 ),
    .CE(VCC),
    .CLK(\in/baud1/timer<0>/CLKINV_4383 ),
    .SET(GND),
    .RST(\in/baud1/timer<0>/FFX/RSTAND_4406 ),
    .O(\in/baud1/timer [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y22" ))
  \in/baud1/timer<0>/FFX/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\in/baud1/timer<0>/FFX/RSTAND_4406 )
  );
  X_LUT4 #(
    .INIT ( 16'h0400 ),
    .LOC ( "SLICE_X3Y33" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079  (
    .ADR0(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR1(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en_0 ),
    .ADR2(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .ADR3(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000062_0 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ),
    .LOC ( "SLICE_X20Y18" ))
  \in/pstate_mux0000<3>15  (
    .ADR0(\in/bitcounter [0]),
    .ADR1(\in/pstate [2]),
    .ADR2(\in/baud1/baud_1387 ),
    .ADR3(\in/N13 ),
    .O(\in/pstate_mux0000<3>15_4429 )
  );
  X_LUT4 #(
    .INIT ( 16'h0007 ),
    .LOC ( "SLICE_X26Y22" ))
  \in/baud1/timer_mux0000<0>11  (
    .ADR0(rx_IBUF_1384),
    .ADR1(\in/pstate [1]),
    .ADR2(\in/baud1/baud_cmp_eq0000_0 ),
    .ADR3(\in/pstate [0]),
    .O(\in/baud1/N01_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAF0 ),
    .LOC ( "SLICE_X24Y6" ))
  \in/dout<2>1  (
    .ADR0(\in/control [2]),
    .ADR1(VCC),
    .ADR2(\in/dout_fifo [2]),
    .ADR3(addr_rx[1]),
    .O(\in/dout<2>1/O_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y33" ),
    .INIT ( 1'b1 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/DXMUX_4367 ),
    .CE(VCC),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLKINV_4349 ),
    .SET(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SET ),
    .RST(GND),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1488 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y33" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SETOR  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/FFX/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h3300 ),
    .LOC ( "SLICE_X26Y22" ))
  \in/baud1/timer_mux0000<7>1  (
    .ADR0(VCC),
    .ADR1(\in/baud1/timer [0]),
    .ADR2(VCC),
    .ADR3(\in/baud1/N01 ),
    .O(\in/baud1/timer_mux0000 [7])
  );
  X_FF #(
    .LOC ( "SLICE_X25Y6" ),
    .INIT ( 1'b1 ))
  data_1 (
    .I(\data<1>/DXMUX_4332 ),
    .CE(\data<1>/CEINV_4314 ),
    .CLK(\data<1>/CLKINV_4315 ),
    .SET(\data<1>/FFX/SET ),
    .RST(GND),
    .O(data[1])
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y6" ))
  \data<1>/FFX/SETOR  (
    .I(reset_IBUF_1366),
    .O(\data<1>/FFX/SET )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y6" ),
    .INIT ( 1'b1 ))
  data_2 (
    .I(\data<2>/DXMUX_4462 ),
    .CE(\data<2>/CEINV_4443 ),
    .CLK(\data<2>/CLKINV_4444 ),
    .SET(\data<2>/FFX/SET ),
    .RST(GND),
    .O(data[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y6" ))
  \data<2>/FFX/SETOR  (
    .I(reset_IBUF_1366),
    .O(\data<2>/FFX/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h66AA ),
    .LOC ( "SLICE_X23Y29" ))
  \in/Mcount_bittimer_xor<2>11  (
    .ADR0(\in/bittimer [2]),
    .ADR1(\in/bittimer [1]),
    .ADR2(VCC),
    .ADR3(\in/bittimer [0]),
    .O(\in/Result [2])
  );
  X_FF #(
    .LOC ( "SLICE_X23Y29" ),
    .INIT ( 1'b0 ))
  \in/bittimer_2  (
    .I(\in/bittimer<3>/DYMUX_4492 ),
    .CE(\in/bittimer<3>/CEINV_4481 ),
    .CLK(\in/bittimer<3>/CLKINV_4482 ),
    .SET(GND),
    .RST(\in/bittimer<3>/SRINV_4483 ),
    .O(\in/bittimer [2])
  );
  X_LUT4 #(
    .INIT ( 16'h3FC0 ),
    .LOC ( "SLICE_X24Y6" ))
  \Madd_data_add0000_xor<2>11  (
    .ADR0(VCC),
    .ADR1(Madd_data_add0000_cy[0]),
    .ADR2(\Madd_data_add0000_lut<1>_0 ),
    .ADR3(\in/dout<2>1/O ),
    .O(\data_add0000[2] )
  );
  X_LUT4 #(
    .INIT ( 16'hFFCC ),
    .LOC ( "SLICE_X3Y33" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000092  (
    .ADR0(VCC),
    .ADR1(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1488 ),
    .ADR2(VCC),
    .ADR3(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or000079/O ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h30C0 ),
    .LOC ( "SLICE_X28Y31" ))
  \out/baud1/timer_mux0000<3>1  (
    .ADR0(VCC),
    .ADR1(\out/baud1/Madd_timer_addsub0000_cy[3] ),
    .ADR2(\out/baud1/N01 ),
    .ADR3(\out/baud1/timer [4]),
    .O(\out/baud1/timer_mux0000 [3])
  );
  X_FF #(
    .LOC ( "SLICE_X27Y37" ),
    .INIT ( 1'b0 ))
  \out/bitcounter_1  (
    .I(\out/bitcounter<1>/DYMUX_4575 ),
    .CE(\out/bitcounter<1>/CEINV_4564 ),
    .CLK(\out/bitcounter<1>/CLKINV_4565 ),
    .SET(GND),
    .RST(\out/bitcounter<1>/FFY/RSTAND_4581 ),
    .O(\out/bitcounter [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y37" ))
  \out/bitcounter<1>/FFY/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\out/bitcounter<1>/FFY/RSTAND_4581 )
  );
  X_LUT4 #(
    .INIT ( 16'h60A0 ),
    .LOC ( "SLICE_X28Y31" ))
  \out/baud1/timer_mux0000<2>1  (
    .ADR0(\out/baud1/timer [5]),
    .ADR1(\out/baud1/Madd_timer_addsub0000_cy[3] ),
    .ADR2(\out/baud1/N01 ),
    .ADR3(\out/baud1/timer [4]),
    .O(\out/baud1/timer_mux0000 [2])
  );
  X_FF #(
    .LOC ( "SLICE_X23Y29" ),
    .INIT ( 1'b0 ))
  \in/bittimer_3  (
    .I(\in/bittimer<3>/DXMUX_4507 ),
    .CE(\in/bittimer<3>/CEINV_4481 ),
    .CLK(\in/bittimer<3>/CLKINV_4482 ),
    .SET(GND),
    .RST(\in/bittimer<3>/SRINV_4483 ),
    .O(\in/bittimer [3])
  );
  X_LUT4 #(
    .INIT ( 16'h78F0 ),
    .LOC ( "SLICE_X23Y29" ))
  \in/Mcount_bittimer_xor<3>11  (
    .ADR0(\in/bittimer [2]),
    .ADR1(\in/bittimer [1]),
    .ADR2(\in/bittimer [3]),
    .ADR3(\in/bittimer [0]),
    .O(\in/Result [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0301 ),
    .LOC ( "SLICE_X29Y33" ))
  \out/baud1/timer_mux0000<7>1  (
    .ADR0(\out/empty ),
    .ADR1(\out/baud1/baud_cmp_eq0000_0 ),
    .ADR2(\out/baud1/timer [0]),
    .ADR3(\out/pstate_FSM_FFd2_1423 ),
    .O(\out/baud1/timer_mux0000 [7])
  );
  X_LUT4 #(
    .INIT ( 16'h2828 ),
    .LOC ( "SLICE_X29Y33" ))
  \out/baud1/timer_mux0000<6>1  (
    .ADR0(\out/baud1/N01 ),
    .ADR1(\out/baud1/timer [0]),
    .ADR2(\out/baud1/timer [1]),
    .ADR3(VCC),
    .O(\out/baud1/timer_mux0000 [6])
  );
  X_LUT4 #(
    .INIT ( 16'h6464 ),
    .LOC ( "SLICE_X27Y37" ))
  \out/Mcount_bitcounter_xor<1>12  (
    .ADR0(\out/bitcounter [1]),
    .ADR1(\out/bitcounter [0]),
    .ADR2(\out/N2 ),
    .ADR3(VCC),
    .O(\out/Mcount_bitcounter1 )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y31" ),
    .INIT ( 1'b0 ))
  \out/baud1/timer_5  (
    .I(\out/baud1/timer<5>/DXMUX_4618 ),
    .CE(VCC),
    .CLK(\out/baud1/timer<5>/CLKINV_4594 ),
    .SET(GND),
    .RST(\out/baud1/timer<5>/SRINV_4595 ),
    .O(\out/baud1/timer [5])
  );
  X_FF #(
    .LOC ( "SLICE_X29Y33" ),
    .INIT ( 1'b0 ))
  \out/baud1/timer_0  (
    .I(\out/baud1/timer<1>/DYMUX_4535 ),
    .CE(VCC),
    .CLK(\out/baud1/timer<1>/CLKINV_4526 ),
    .SET(GND),
    .RST(\out/baud1/timer<1>/SRINV_4527 ),
    .O(\out/baud1/timer [0])
  );
  X_FF #(
    .LOC ( "SLICE_X28Y31" ),
    .INIT ( 1'b0 ))
  \out/baud1/timer_4  (
    .I(\out/baud1/timer<5>/DYMUX_4604 ),
    .CE(VCC),
    .CLK(\out/baud1/timer<5>/CLKINV_4594 ),
    .SET(GND),
    .RST(\out/baud1/timer<5>/SRINV_4595 ),
    .O(\out/baud1/timer [4])
  );
  X_LUT4 #(
    .INIT ( 16'h30C0 ),
    .LOC ( "SLICE_X30Y30" ))
  \out/baud1/timer_mux0000<1>1  (
    .ADR0(VCC),
    .ADR1(\out/baud1/Madd_timer_addsub0000_cy<5>_0 ),
    .ADR2(\out/baud1/N01 ),
    .ADR3(\out/baud1/timer [6]),
    .O(\out/baud1/timer_mux0000 [1])
  );
  X_FF #(
    .LOC ( "SLICE_X29Y33" ),
    .INIT ( 1'b0 ))
  \out/baud1/timer_1  (
    .I(\out/baud1/timer<1>/DXMUX_4550 ),
    .CE(VCC),
    .CLK(\out/baud1/timer<1>/CLKINV_4526 ),
    .SET(GND),
    .RST(\out/baud1/timer<1>/SRINV_4527 ),
    .O(\out/baud1/timer [1])
  );
  X_FF #(
    .LOC ( "SLICE_X30Y30" ),
    .INIT ( 1'b0 ))
  \out/baud1/timer_7  (
    .I(\out/baud1/timer<7>/DXMUX_4660 ),
    .CE(VCC),
    .CLK(\out/baud1/timer<7>/CLKINV_4636 ),
    .SET(GND),
    .RST(\out/baud1/timer<7>/SRINV_4637 ),
    .O(\out/baud1/timer [7])
  );
  X_LUT4 #(
    .INIT ( 16'hFE04 ),
    .LOC ( "SLICE_X9Y41" ))
  \out/shift_out_mux0000<2>1  (
    .ADR0(\out/pstate_FSM_FFd2_1423 ),
    .ADR1(\out/to_shift [1]),
    .ADR2(\out/empty ),
    .ADR3(\out/shift_out [3]),
    .O(\out/shift_out_mux0000 [2])
  );
  X_FF #(
    .LOC ( "SLICE_X8Y41" ),
    .INIT ( 1'b1 ))
  \out/shift_out_0  (
    .I(\out/shift_out<1>/DYMUX_4690 ),
    .CE(\out/shift_out<1>/CEINV_4679 ),
    .CLK(\out/shift_out<1>/CLKINV_4680 ),
    .SET(\out/shift_out<1>/SRINV_4681 ),
    .RST(GND),
    .O(\out/shift_out [0])
  );
  X_FF #(
    .LOC ( "SLICE_X9Y41" ),
    .INIT ( 1'b1 ))
  \out/shift_out_3  (
    .I(\out/shift_out<3>/DXMUX_4748 ),
    .CE(\out/shift_out<3>/CEINV_4724 ),
    .CLK(\out/shift_out<3>/CLKINV_4725 ),
    .SET(\out/shift_out<3>/SRINV_4726 ),
    .RST(GND),
    .O(\out/shift_out [3])
  );
  X_FF #(
    .LOC ( "SLICE_X9Y41" ),
    .INIT ( 1'b1 ))
  \out/shift_out_2  (
    .I(\out/shift_out<3>/DYMUX_4734 ),
    .CE(\out/shift_out<3>/CEINV_4724 ),
    .CLK(\out/shift_out<3>/CLKINV_4725 ),
    .SET(\out/shift_out<3>/SRINV_4726 ),
    .RST(GND),
    .O(\out/shift_out [2])
  );
  X_LUT4 #(
    .INIT ( 16'hCDC8 ),
    .LOC ( "SLICE_X13Y38" ))
  \out/shift_out_mux0000<4>1  (
    .ADR0(\out/pstate_FSM_FFd2_1423 ),
    .ADR1(\out/shift_out [5]),
    .ADR2(\out/empty ),
    .ADR3(\out/to_shift [3]),
    .O(\out/shift_out_mux0000 [4])
  );
  X_LUT4 #(
    .INIT ( 16'hF1E0 ),
    .LOC ( "SLICE_X9Y41" ))
  \out/shift_out_mux0000<3>1  (
    .ADR0(\out/pstate_FSM_FFd2_1423 ),
    .ADR1(\out/empty ),
    .ADR2(\out/shift_out [4]),
    .ADR3(\out/to_shift [2]),
    .O(\out/shift_out_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'hF0C0 ),
    .LOC ( "SLICE_X8Y41" ))
  \out/shift_out_mux0000<0>1  (
    .ADR0(VCC),
    .ADR1(\out/empty ),
    .ADR2(\out/shift_out [1]),
    .ADR3(\out/pstate_FSM_FFd2_1423 ),
    .O(\out/shift_out_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h7800 ),
    .LOC ( "SLICE_X30Y30" ))
  \out/baud1/timer_mux0000<0>1  (
    .ADR0(\out/baud1/timer [6]),
    .ADR1(\out/baud1/Madd_timer_addsub0000_cy<5>_0 ),
    .ADR2(\out/baud1/timer [7]),
    .ADR3(\out/baud1/N01 ),
    .O(\out/baud1/timer_mux0000 [0])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y38" ),
    .INIT ( 1'b1 ))
  \out/shift_out_4  (
    .I(\out/shift_out<5>/DYMUX_4778 ),
    .CE(\out/shift_out<5>/CEINV_4768 ),
    .CLK(\out/shift_out<5>/CLKINV_4769 ),
    .SET(\out/shift_out<5>/SRINV_4770 ),
    .RST(GND),
    .O(\out/shift_out [4])
  );
  X_FF #(
    .LOC ( "SLICE_X30Y30" ),
    .INIT ( 1'b0 ))
  \out/baud1/timer_6  (
    .I(\out/baud1/timer<7>/DYMUX_4646 ),
    .CE(VCC),
    .CLK(\out/baud1/timer<7>/CLKINV_4636 ),
    .SET(GND),
    .RST(\out/baud1/timer<7>/SRINV_4637 ),
    .O(\out/baud1/timer [6])
  );
  X_FF #(
    .LOC ( "SLICE_X8Y41" ),
    .INIT ( 1'b1 ))
  \out/shift_out_1  (
    .I(\out/shift_out<1>/DXMUX_4704 ),
    .CE(\out/shift_out<1>/CEINV_4679 ),
    .CLK(\out/shift_out<1>/CLKINV_4680 ),
    .SET(\out/shift_out<1>/SRINV_4681 ),
    .RST(GND),
    .O(\out/shift_out [1])
  );
  X_LUT4 #(
    .INIT ( 16'hCCCA ),
    .LOC ( "SLICE_X8Y41" ))
  \out/shift_out_mux0000<1>2  (
    .ADR0(\out/to_shift [0]),
    .ADR1(\out/shift_out [2]),
    .ADR2(\out/empty ),
    .ADR3(\out/pstate_FSM_FFd2_1423 ),
    .O(\out/shift_out_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hFE04 ),
    .LOC ( "SLICE_X13Y38" ))
  \out/shift_out_mux0000<5>1  (
    .ADR0(\out/pstate_FSM_FFd2_1423 ),
    .ADR1(\out/to_shift [4]),
    .ADR2(\out/empty ),
    .ADR3(\out/shift_out [6]),
    .O(\out/shift_out_mux0000 [5])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y38" ),
    .INIT ( 1'b1 ))
  \out/shift_out_5  (
    .I(\out/shift_out<5>/DXMUX_4792 ),
    .CE(\out/shift_out<5>/CEINV_4768 ),
    .CLK(\out/shift_out<5>/CLKINV_4769 ),
    .SET(\out/shift_out<5>/SRINV_4770 ),
    .RST(GND),
    .O(\out/shift_out [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y2" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_2  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_4917 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_4906 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_4907 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_4908 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y32" ),
    .INIT ( 1'b1 ))
  \out/shift_out_8  (
    .I(\out/shift_out<8>/DYMUX_4887 ),
    .CE(\out/shift_out<8>/CEINV_4876 ),
    .CLK(\out/shift_out<8>/CLKINV_4877 ),
    .SET(\out/shift_out<8>/FFY/SET ),
    .RST(GND),
    .O(\out/shift_out [8])
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y32" ))
  \out/shift_out<8>/FFY/SETOR  (
    .I(reset_IBUF_1366),
    .O(\out/shift_out<8>/FFY/SET )
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y2" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_3  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_4930 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_4906 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_4907 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_4908 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3])
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ),
    .LOC ( "SLICE_X6Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<3>11  (
    .ADR0(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR3(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .O(\in/fifo1/Result<3>1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0C3F ),
    .LOC ( "SLICE_X24Y7" ))
  \Madd_data_add0000_xor<0>11  (
    .ADR0(VCC),
    .ADR1(addr_rx[1]),
    .ADR2(\in/control [0]),
    .ADR3(\in/dout_fifo [0]),
    .O(\data_add0000[0] )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b0 ))
  \in/frame_error_8  (
    .I(\in/frame_error<8>/DYMUX_4861 ),
    .CE(\in/frame_error<8>/CEINV_4849 ),
    .CLK(\in/frame_error<8>/CLKINV_4850 ),
    .SET(GND),
    .RST(\in/frame_error<8>/FFY/RSTAND_4867 ),
    .O(\in/frame_error [8])
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y19" ))
  \in/frame_error<8>/FFY/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\in/frame_error<8>/FFY/RSTAND_4867 )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCA ),
    .LOC ( "SLICE_X15Y33" ))
  \out/shift_out_mux0000<6>1  (
    .ADR0(\out/to_shift [5]),
    .ADR1(\out/shift_out [7]),
    .ADR2(\out/pstate_FSM_FFd2_1423 ),
    .ADR3(\out/empty ),
    .O(\out/shift_out_mux0000 [6])
  );
  X_LUT4 #(
    .INIT ( 16'hAAB8 ),
    .LOC ( "SLICE_X15Y33" ))
  \out/shift_out_mux0000<7>1  (
    .ADR0(\out/shift_out [8]),
    .ADR1(\out/empty ),
    .ADR2(\out/to_shift [6]),
    .ADR3(\out/pstate_FSM_FFd2_1423 ),
    .O(\out/shift_out_mux0000 [7])
  );
  X_LUT4 #(
    .INIT ( 16'hDDDD ),
    .LOC ( "SLICE_X14Y19" ))
  \in/frame_error_8_or00001  (
    .ADR0(\in/shift [9]),
    .ADR1(\in/shift [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\in/frame_error_8_or0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFC ),
    .LOC ( "SLICE_X15Y32" ))
  \out/shift_out_mux0000<8>1  (
    .ADR0(VCC),
    .ADR1(\out/empty ),
    .ADR2(\out/pstate_FSM_FFd2_1423 ),
    .ADR3(\out/to_shift [7]),
    .O(\out/shift_out_mux0000 [8])
  );
  X_LUT4 #(
    .INIT ( 16'h5AF0 ),
    .LOC ( "SLICE_X3Y30" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<2>11  (
    .ADR0(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR1(VCC),
    .ADR2(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR3(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\out/fifo1/Result [2])
  );
  X_LUT4 #(
    .INIT ( 16'h3CF0 ),
    .LOC ( "SLICE_X6Y2" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<2>11  (
    .ADR0(VCC),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR3(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\in/fifo1/Result<2>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y33" ),
    .INIT ( 1'b1 ))
  \out/shift_out_7  (
    .I(\out/shift_out<7>/DXMUX_4836 ),
    .CE(\out/shift_out<7>/CEINV_4812 ),
    .CLK(\out/shift_out<7>/CLKINV_4813 ),
    .SET(\out/shift_out<7>/SRINV_4814 ),
    .RST(GND),
    .O(\out/shift_out [7])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y33" ),
    .INIT ( 1'b1 ))
  \out/shift_out_6  (
    .I(\out/shift_out<7>/DYMUX_4822 ),
    .CE(\out/shift_out<7>/CEINV_4812 ),
    .CLK(\out/shift_out<7>/CLKINV_4813 ),
    .SET(\out/shift_out<7>/SRINV_4814 ),
    .RST(GND),
    .O(\out/shift_out [6])
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y0" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_2  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DYMUX_4959 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_4948 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_4949 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_4950 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y0" ),
    .INIT ( 1'b0 ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_3  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/DXMUX_4972 ),
    .CE(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CEINV_4948 ),
    .CLK(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/CLKINV_4949 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>/SRINV_4950 ),
    .O(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3])
  );
  X_LUT4 #(
    .INIT ( 16'h3CCC ),
    .LOC ( "SLICE_X8Y0" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<2>11  (
    .ADR0(VCC),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR3(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .O(\in/fifo1/Result [2])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y33" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DYMUX_5070 ),
    .CE(VCC),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_5061 ),
    .SET(GND),
    .RST(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_5062 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1532 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y33" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/DXMUX_5084 ),
    .CE(VCC),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/CLKINV_5061 ),
    .SET(GND),
    .RST(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2/SRINV_5062 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1533 )
  );
  X_LUT4 #(
    .INIT ( 16'h3CCC ),
    .LOC ( "SLICE_X22Y34" ))
  \out/Mcount_bittimer_xor<2>11  (
    .ADR0(VCC),
    .ADR1(\out/bittimer [2]),
    .ADR2(\out/bittimer [0]),
    .ADR3(\out/bittimer [1]),
    .O(\out/Result [2])
  );
  X_LUT4 #(
    .INIT ( 16'h3B33 ),
    .LOC ( "SLICE_X13Y33" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In1  (
    .ADR0(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1532 ),
    .ADR1(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_1488 ),
    .ADR2(\out/ld_shift ),
    .ADR3(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1533 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y30" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_2  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DYMUX_5001 ),
    .CE(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_4990 ),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_4991 ),
    .SET(GND),
    .RST(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_4992 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2])
  );
  X_LUT4 #(
    .INIT ( 16'h6CCC ),
    .LOC ( "SLICE_X3Y30" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<3>11  (
    .ADR0(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR1(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .ADR2(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR3(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\out/fifo1/Result [3])
  );
  X_FF #(
    .LOC ( "SLICE_X22Y34" ),
    .INIT ( 1'b0 ))
  \out/bittimer_2  (
    .I(\out/bittimer<3>/DYMUX_5114 ),
    .CE(\out/bittimer<3>/CEINV_5103 ),
    .CLK(\out/bittimer<3>/CLKINV_5104 ),
    .SET(GND),
    .RST(\out/bittimer<3>/SRINV_5105 ),
    .O(\out/bittimer [2])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y7" ),
    .INIT ( 1'b1 ))
  data_0 (
    .I(\data<0>/DYMUX_5042 ),
    .CE(\data<0>/CEINV_5031 ),
    .CLK(\data<0>/CLKINV_5032 ),
    .SET(\data<0>/FFY/SET ),
    .RST(GND),
    .O(data[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y7" ))
  \data<0>/FFY/SETOR  (
    .I(reset_IBUF_1366),
    .O(\data<0>/FFY/SET )
  );
  X_LUT4 #(
    .INIT ( 16'hFEAA ),
    .LOC ( "SLICE_X13Y33" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In1  (
    .ADR0(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1532 ),
    .ADR1(\out/pstate_FSM_FFd2_1423 ),
    .ADR2(\out/empty ),
    .ADR3(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1533 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2-In )
  );
  X_LUT4 #(
    .INIT ( 16'h7F80 ),
    .LOC ( "SLICE_X8Y0" ))
  \in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<3>11  (
    .ADR0(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR1(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .ADR2(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR3(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .O(\in/fifo1/Result [3])
  );
  X_FF #(
    .LOC ( "SLICE_X3Y30" ),
    .INIT ( 1'b0 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_3  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/DXMUX_5016 ),
    .CE(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CEINV_4990 ),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/CLKINV_4991 ),
    .SET(GND),
    .RST(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>/SRINV_4992 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3])
  );
  X_LUT4 #(
    .INIT ( 16'h3300 ),
    .LOC ( "SLICE_X21Y19" ))
  \in/pstate_mux0000<1>1  (
    .ADR0(VCC),
    .ADR1(\in/control [2]),
    .ADR2(VCC),
    .ADR3(\in/finish ),
    .O(\in/pstate_mux0000 [1])
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X16Y23" ))
  \in/Mshreg_in_two/SRL16E  (
    .A0(GND),
    .A1(GND),
    .A2(GND),
    .A3(GND),
    .D(\in/in_two/DIG_MUX_5174 ),
    .CE(\in/in_two/WSG ),
    .CLK(\in/in_two/CLKINV_5172 ),
    .Q(\in/Mshreg_in_two ),
    .Q15(\NLW_in/Mshreg_in_two/SRL16E_Q15_UNCONNECTED )
  );
  X_LUT4 #(
    .INIT ( 16'h78F0 ),
    .LOC ( "SLICE_X22Y34" ))
  \out/Mcount_bittimer_xor<3>11  (
    .ADR0(\out/bittimer [0]),
    .ADR1(\out/bittimer [2]),
    .ADR2(\out/bittimer [3]),
    .ADR3(\out/bittimer [1]),
    .O(\out/Result [3])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y10" ),
    .INIT ( 1'b0 ))
  trans_1 (
    .I(\trans<1>/DXMUX_5224 ),
    .CE(VCC),
    .CLK(\trans<1>/CLKINV_5200 ),
    .SET(GND),
    .RST(\trans<1>/SRINV_5201 ),
    .O(trans[1])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y10" ),
    .INIT ( 1'b0 ))
  trans_0 (
    .I(\trans<1>/DYMUX_5210 ),
    .CE(VCC),
    .CLK(\trans<1>/CLKINV_5200 ),
    .SET(GND),
    .RST(\trans<1>/SRINV_5201 ),
    .O(trans[0])
  );
  X_FF #(
    .LOC ( "SLICE_X22Y34" ),
    .INIT ( 1'b0 ))
  \out/bittimer_3  (
    .I(\out/bittimer<3>/DXMUX_5129 ),
    .CE(\out/bittimer<3>/CEINV_5103 ),
    .CLK(\out/bittimer<3>/CLKINV_5104 ),
    .SET(GND),
    .RST(\out/bittimer<3>/SRINV_5105 ),
    .O(\out/bittimer [3])
  );
  X_FF #(
    .LOC ( "SLICE_X21Y19" ),
    .INIT ( 1'b0 ))
  \in/frame_ready  (
    .I(\in/pstate<4>/DYMUX_5251 ),
    .CE(VCC),
    .CLK(\in/pstate<4>/CLKINV_5242 ),
    .SET(GND),
    .RST(\in/pstate<4>/SRINV_5243 ),
    .O(\in/frame_ready_1417 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y11" ),
    .INIT ( 1'b0 ))
  pstate_FSM_FFd3 (
    .I(\pstate_FSM_FFd3/DYMUX_5153 ),
    .CE(VCC),
    .CLK(\pstate_FSM_FFd3/CLKINV_5143 ),
    .SET(GND),
    .RST(\pstate_FSM_FFd3/FFY/RSTAND_5158 ),
    .O(pstate_FSM_FFd3_1543)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y11" ))
  \pstate_FSM_FFd3/FFY/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\pstate_FSM_FFd3/FFY/RSTAND_5158 )
  );
  X_LUT4 #(
    .INIT ( 16'h143C ),
    .LOC ( "SLICE_X14Y10" ))
  \Mcount_trans_xor<1>11  (
    .ADR0(dout[1]),
    .ADR1(trans[0]),
    .ADR2(trans[1]),
    .ADR3(pstate_FSM_FFd3_1543),
    .O(Mcount_trans1)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 1'b0 ))
  \in/in_two  (
    .I(\in/in_two/DYMUX_5185 ),
    .CE(VCC),
    .CLK(\in/in_two/CLKINV_5172 ),
    .SET(GND),
    .RST(GND),
    .O(\in/in_two_1395 )
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X21Y19" ))
  \in/bitcounter_not00011  (
    .ADR0(\in/bitcounter [1]),
    .ADR1(N27_0),
    .ADR2(\in/bitcounter [3]),
    .ADR3(\in/bitcounter [2]),
    .O(\in/finish_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h1133 ),
    .LOC ( "SLICE_X14Y10" ))
  \Mcount_trans_xor<0>11  (
    .ADR0(dout[1]),
    .ADR1(trans[0]),
    .ADR2(VCC),
    .ADR3(pstate_FSM_FFd3_1543),
    .O(Mcount_trans)
  );
  X_LUT4 #(
    .INIT ( 16'hF3F0 ),
    .LOC ( "SLICE_X19Y11" ))
  \pstate_FSM_FFd3-In1  (
    .ADR0(VCC),
    .ADR1(dout[1]),
    .ADR2(pstate_FSM_FFd4_1516),
    .ADR3(pstate_FSM_FFd3_1543),
    .O(\pstate_FSM_FFd3-In )
  );
  X_LUT4 #(
    .INIT ( 16'h3C00 ),
    .LOC ( "SLICE_X30Y23" ))
  \in/baud1/timer_mux0000<6>1  (
    .ADR0(VCC),
    .ADR1(\in/baud1/timer [1]),
    .ADR2(\in/baud1/timer [0]),
    .ADR3(\in/baud1/N01 ),
    .O(\in/baud1/timer_mux0000 [6])
  );
  X_FF #(
    .LOC ( "SLICE_X21Y19" ),
    .INIT ( 1'b0 ))
  \in/pstate_4  (
    .I(\in/pstate<4>/DXMUX_5267 ),
    .CE(VCC),
    .CLK(\in/pstate<4>/CLKINV_5242 ),
    .SET(GND),
    .RST(\in/pstate<4>/SRINV_5243 ),
    .O(\in/pstate [4])
  );
  X_FF #(
    .LOC ( "SLICE_X30Y22" ),
    .INIT ( 1'b0 ))
  \in/baud1/timer_2  (
    .I(\in/baud1/timer<3>/DYMUX_5387 ),
    .CE(VCC),
    .CLK(\in/baud1/timer<3>/CLKINV_5378 ),
    .SET(GND),
    .RST(\in/baud1/timer<3>/SRINV_5379 ),
    .O(\in/baud1/timer [2])
  );
  X_LUT4 #(
    .INIT ( 16'h60A0 ),
    .LOC ( "SLICE_X30Y22" ))
  \in/baud1/timer_mux0000<4>  (
    .ADR0(\in/baud1/timer [3]),
    .ADR1(\in/baud1/timer [2]),
    .ADR2(\in/baud1/N01 ),
    .ADR3(N31_0),
    .O(\in/baud1/timer_mux0000 [4])
  );
  X_FF #(
    .LOC ( "SLICE_X30Y22" ),
    .INIT ( 1'b0 ))
  \in/baud1/timer_3  (
    .I(\in/baud1/timer<3>/DXMUX_5401 ),
    .CE(VCC),
    .CLK(\in/baud1/timer<3>/CLKINV_5378 ),
    .SET(GND),
    .RST(\in/baud1/timer<3>/SRINV_5379 ),
    .O(\in/baud1/timer [3])
  );
  X_LUT4 #(
    .INIT ( 16'h4C80 ),
    .LOC ( "SLICE_X30Y22" ))
  \in/baud1/timer_mux0000<5>1  (
    .ADR0(\in/baud1/timer [1]),
    .ADR1(\in/baud1/N01 ),
    .ADR2(\in/baud1/timer [0]),
    .ADR3(\in/baud1/timer [2]),
    .O(\in/baud1/timer_mux0000 [5])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y35" ),
    .INIT ( 1'b1 ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/DYMUX_5337 ),
    .CE(VCC),
    .CLK(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/CLKINV_5328 ),
    .SET(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SET ),
    .RST(GND),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_1610 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y35" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SETOR  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb/FFY/SET )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y24" ),
    .INIT ( 1'b0 ))
  \in/load  (
    .I(\in/load/DYMUX_5291 ),
    .CE(VCC),
    .CLK(\in/load/CLKINV_5282 ),
    .SET(GND),
    .RST(\in/load/FFY/RSTAND_5296 ),
    .O(\in/load_1503 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y24" ))
  \in/load/FFY/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\in/load/FFY/RSTAND_5296 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y15" ),
    .INIT ( 1'b1 ))
  \in/pstate_0  (
    .I(\in/pstate<0>/DYMUX_5314 ),
    .CE(VCC),
    .CLK(\in/pstate<0>/CLKINV_5305 ),
    .SET(\in/pstate<0>/FFY/SET ),
    .RST(GND),
    .O(\in/pstate [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y15" ))
  \in/pstate<0>/FFY/SETOR  (
    .I(reset_IBUF_1366),
    .O(\in/pstate<0>/FFY/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h3302 ),
    .LOC ( "SLICE_X16Y15" ))
  \in/pstate_mux0000<5>1  (
    .ADR0(\in/pstate [0]),
    .ADR1(\in/control [2]),
    .ADR2(\in/control [0]),
    .ADR3(\in/pstate [5]),
    .O(\in/pstate_mux0000 [5])
  );
  X_LUT4 #(
    .INIT ( 16'hAF08 ),
    .LOC ( "SLICE_X13Y35" ))
  \out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or00001  (
    .ADR0(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd2_1533 ),
    .ADR1(\out/ld_shift ),
    .ADR2(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1532 ),
    .ADR3(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_fb_1610 ),
    .O(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_or0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ),
    .LOC ( "SLICE_X21Y24" ))
  \in/ld_shift  (
    .ADR0(\in/loaded_1548 ),
    .ADR1(\in/pstate [3]),
    .ADR2(\in/bittimer [3]),
    .ADR3(N25),
    .O(\in/ld_shift_5288 )
  );
  X_FF #(
    .LOC ( "SLICE_X30Y23" ),
    .INIT ( 1'b0 ))
  \in/baud1/timer_1  (
    .I(\in/baud1/timer<1>/DYMUX_5359 ),
    .CE(VCC),
    .CLK(\in/baud1/timer<1>/CLKINV_5349 ),
    .SET(GND),
    .RST(\in/baud1/timer<1>/FFY/RSTAND_5364 ),
    .O(\in/baud1/timer [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y23" ))
  \in/baud1/timer<1>/FFY/RSTAND  (
    .I(reset_IBUF_1366),
    .O(\in/baud1/timer<1>/FFY/RSTAND_5364 )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y22" ),
    .INIT ( 1'b0 ))
  \in/baud1/timer_4  (
    .I(\in/baud1/timer<5>/DYMUX_5429 ),
    .CE(VCC),
    .CLK(\in/baud1/timer<5>/CLKINV_5419 ),
    .SET(GND),
    .RST(\in/baud1/timer<5>/SRINV_5420 ),
    .O(\in/baud1/timer [4])
  );
  X_FF #(
    .LOC ( "SLICE_X28Y22" ),
    .INIT ( 1'b0 ))
  \in/baud1/timer_5  (
    .I(\in/baud1/timer<5>/DXMUX_5443 ),
    .CE(VCC),
    .CLK(\in/baud1/timer<5>/CLKINV_5419 ),
    .SET(GND),
    .RST(\in/baud1/timer<5>/SRINV_5420 ),
    .O(\in/baud1/timer [5])
  );
  X_LUT4 #(
    .INIT ( 16'h6C00 ),
    .LOC ( "SLICE_X28Y22" ))
  \in/baud1/timer_mux0000<2>1  (
    .ADR0(\in/baud1/timer [4]),
    .ADR1(\in/baud1/timer [5]),
    .ADR2(\in/baud1/Madd_timer_addsub0000_cy[3] ),
    .ADR3(\in/baud1/N01 ),
    .O(\in/baud1/timer_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'h5A00 ),
    .LOC ( "SLICE_X28Y22" ))
  \in/baud1/timer_mux0000<3>1  (
    .ADR0(\in/baud1/timer [4]),
    .ADR1(VCC),
    .ADR2(\in/baud1/Madd_timer_addsub0000_cy[3] ),
    .ADR3(\in/baud1/N01 ),
    .O(\in/baud1/timer_mux0000 [3])
  );
  X_BUF #(
    .LOC ( "PAD69" ))
  \Led<0>/OUTPUT/OFF/OMUX  (
    .I(data[0]),
    .O(\Led<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD108" ))
  \tx/OUTPUT/OFF/OMUX  (
    .I(\out/shift_out [0]),
    .O(\tx/O )
  );
  X_BUF #(
    .LOC ( "PAD58" ))
  \Led<1>/OUTPUT/OFF/OMUX  (
    .I(data[1]),
    .O(\Led<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \Led<7>/OUTPUT/OFF/OMUX  (
    .I(data[7]),
    .O(\Led<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD70" ))
  \Led<6>/OUTPUT/OFF/OMUX  (
    .I(data[6]),
    .O(\Led<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD71" ))
  \Led<5>/OUTPUT/OFF/OMUX  (
    .I(data[5]),
    .O(\Led<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD65" ))
  \Led<3>/OUTPUT/OFF/OMUX  (
    .I(data[3]),
    .O(\Led<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD68" ))
  \Led<4>/OUTPUT/OFF/OMUX  (
    .I(data[4]),
    .O(\Led<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD64" ))
  \Led<2>/OUTPUT/OFF/OMUX  (
    .I(data[2]),
    .O(\Led<2>/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y23" ))
  \in/Mshreg_in_two/SRL16E.CE/WSGAND  (
    .I(\in/in_two/SRINV_5168 ),
    .O(\in/in_two/WSG )
  );
  X_BUF 
  \NlwBufferBlock_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3>  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .O
(\NlwBufferSignal_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> )

  );
  X_BUF 
  \NlwBufferBlock_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2>  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .O
(\NlwBufferSignal_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> )

  );
  X_BUF 
  \NlwBufferBlock_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1>  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .O
(\NlwBufferSignal_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> )

  );
  X_BUF 
  \NlwBufferBlock_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0>  (
    .I(\out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .O
(\NlwBufferSignal_out/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3>  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<3> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2>  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<2> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1>  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<1> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0>  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRA<0> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3>  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<3> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2>  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<2> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1>  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<1> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0>  (
    .I(\in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/ADDRB<0> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0>  (
    .I(\in/frame_error [0]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<0> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1>  (
    .I(\in/frame_error [1]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<1> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<2>  (
    .I(\in/frame_error [2]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<2> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8>  (
    .I(\in/frame_error [3]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<8> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9>  (
    .I(\in/frame_error [4]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<9> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16>  (
    .I(\in/frame_error [5]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<16> )

  );
  X_BUF 
  \NlwBufferBlock_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25>  (
    .I(\in/frame_error [8]),
    .O
(\NlwBufferSignal_in/fifo1/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/s3_noinit.ram/dpram.dp36x36.ram/DIA<25> )

  );
  X_ONE   NlwBlock_uart_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_uart_GND (
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

