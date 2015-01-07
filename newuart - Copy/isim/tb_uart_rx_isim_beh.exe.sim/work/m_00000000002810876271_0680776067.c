/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/James/Desktop/iDriveSync/IDrive-Sync/DSD LAB/lab9_uart_rx/tb_uart_rx.v";
static int ng1[] = {1, 0};
static int ng2[] = {1024, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {1U, 0U};
static int ng6[] = {10, 0};
static int ng7[] = {9, 0};
static int ng8[] = {7, 0};
static int ng9[] = {5, 0};
static int ng10[] = {8, 0};
static const char *ng11 = "%t: FAIL,did not receive expected framing error";
static const char *ng12 = "%t: PASS,received expected framing error";
static const char *ng13 = "%t: FAIL,expected serial out of %h, found: %h";
static const char *ng14 = "%t: PASS,got expected serial out of %h";
static const char *ng15 = "%t: FAIL, writing UART RXEN bit = %h failed.";
static const char *ng16 = "%t: PASS, writing UART RXEN bit = %h.";
static const char *ng17 = "%t: FAIL, reading UART OVERRUN bit, expected: %h, actual: %h.";
static const char *ng18 = "%t: PASS, reading UART OVERRUN bit: %h.";
static const char *ng19 = "%t: FAIL, reading UART DATARDY bit, expected: %h, actual: %h.";
static const char *ng20 = "%t: PASS, reading UART DATARDY bit.";
static const char *ng21 = "%t: TIMEOUT, not all characters processed.";
static const char *ng22 = "The timeout is probably due to the DATARDY bit never going high.";
static unsigned int ng23[] = {12U, 0U};
static int ng24[] = {4, 0};
static const char *ng25 = "%t: FAIL, PERIOD register write/read failed: %h, expected: %h";
static const char *ng26 = "%t: PASS, Period register read/write";
static unsigned int ng27[] = {57U, 0U};
static unsigned int ng28[] = {18U, 0U};
static unsigned int ng29[] = {211U, 0U};
static unsigned int ng30[] = {183U, 0U};
static const char *ng31 = "Testing bad stop bit";
static unsigned int ng32[] = {341U, 0U};
static const char *ng33 = "Testing bad start bit";
static unsigned int ng34[] = {426U, 0U};
static unsigned int ng35[] = {132U, 0U};
static int ng36[] = {18, 0};
static unsigned int ng37[] = {48U, 0U};
static unsigned int ng38[] = {167U, 0U};
static const char *ng39 = "%t: All vectors done.";
static const char *ng40 = "%t: FAIL, had %d errors during simulation.";
static const char *ng41 = "%t: PASS, no errors during simulation.";



static int sp_putserialdata(char *t1, char *t2)
{
    char t8[8];
    char t10[8];
    char t11[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    int t23;
    char *t24;
    unsigned int t25;
    int t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1392);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(89, ng0);

LAB5:    xsi_set_current_line(91, ng0);
    t5 = (t1 + 7848);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t8, t7, 8);
    t9 = (t1 + 6568);
    t12 = (t1 + 6568);
    t13 = (t12 + 72U);
    t14 = *((char **)t13);
    t15 = (t1 + 6568);
    t16 = (t15 + 64U);
    t17 = *((char **)t16);
    t18 = (t1 + 6728);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    xsi_vlog_generic_convert_array_indices(t10, t11, t14, t17, 1, 1, t20, 32, 1);
    t21 = (t10 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (!(t22));
    t24 = (t11 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (!(t25));
    t27 = (t23 && t26);
    if (t27 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(92, ng0);
    t4 = (t1 + 6728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t9 = (t1 + 6728);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    xsi_set_current_line(93, ng0);
    t4 = (t1 + 6728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_signed_equal(t8, 32, t6, 32, t7, 32);
    t9 = (t8 + 4);
    t22 = *((unsigned int *)t9);
    t25 = (~(t22));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t25);
    t32 = (t29 != 0);
    if (t32 > 0)
        goto LAB8;

LAB9:
LAB10:    xsi_set_current_line(95, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t1 + 7848);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t10, 0, 8);
    t9 = (t10 + 4);
    t12 = (t7 + 4);
    t22 = *((unsigned int *)t7);
    t25 = (t22 >> 0);
    *((unsigned int *)t10) = t25;
    t28 = *((unsigned int *)t12);
    t29 = (t28 >> 0);
    *((unsigned int *)t9) = t29;
    t32 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t32 & 255U);
    t33 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t33 & 255U);
    t13 = ((char*)((ng5)));
    xsi_vlogtype_concat(t8, 10, 10, 3U, t13, 1, t10, 8, t4, 1);
    t14 = (t1 + 7208);
    xsi_vlogvar_assign_value(t14, t8, 0, 0, 10);
    xsi_set_current_line(96, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 7368);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(97, ng0);

LAB11:    t4 = (t1 + 7368);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng6)));
    memset(t8, 0, 8);
    xsi_vlog_signed_not_equal(t8, 32, t6, 32, t7, 32);
    t9 = (t8 + 4);
    t22 = *((unsigned int *)t9);
    t25 = (~(t22));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t25);
    t32 = (t29 != 0);
    if (t32 > 0)
        goto LAB12;

LAB13:
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB6:    t28 = *((unsigned int *)t10);
    t29 = *((unsigned int *)t11);
    t30 = (t28 - t29);
    t31 = (t30 + 1);
    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t11), t31);
    goto LAB7;

LAB8:    xsi_set_current_line(93, ng0);
    t12 = ((char*)((ng3)));
    t13 = (t1 + 6728);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    goto LAB10;

LAB12:    xsi_set_current_line(97, ng0);

LAB14:    xsi_set_current_line(98, ng0);
    t12 = (t1 + 7208);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t10, 0, 8);
    t15 = (t10 + 4);
    t16 = (t14 + 4);
    t33 = *((unsigned int *)t14);
    t34 = (t33 >> 0);
    t35 = (t34 & 1);
    *((unsigned int *)t10) = t35;
    t36 = *((unsigned int *)t16);
    t37 = (t36 >> 0);
    t38 = (t37 & 1);
    *((unsigned int *)t15) = t38;
    t17 = (t1 + 6248);
    xsi_vlogvar_assign_value(t17, t10, 0, 0, 1);
    xsi_set_current_line(99, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 8320000LL);
    *((char **)t3) = &&LAB15;
    t0 = 1;
    goto LAB1;

LAB15:    xsi_set_current_line(100, ng0);
    t6 = (t1 + 7368);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t12 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t9, 32, t12, 32);
    t13 = (t1 + 7368);
    xsi_vlogvar_assign_value(t13, t8, 0, 0, 32);
    xsi_set_current_line(101, ng0);
    t4 = (t1 + 7208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t10, 0, 8);
    t7 = (t10 + 4);
    t9 = (t6 + 4);
    t22 = *((unsigned int *)t6);
    t25 = (t22 >> 1);
    *((unsigned int *)t10) = t25;
    t28 = *((unsigned int *)t9);
    t29 = (t28 >> 1);
    *((unsigned int *)t7) = t29;
    t32 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t32 & 511U);
    t33 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t33 & 511U);
    t12 = ((char*)((ng5)));
    xsi_vlogtype_concat(t8, 10, 10, 2U, t12, 1, t10, 9);
    t13 = (t1 + 7208);
    xsi_vlogvar_assign_value(t13, t8, 0, 0, 10);
    goto LAB11;

}

static int sp_putserialdata_badstop(char *t1, char *t2)
{
    char t8[8];
    char t10[8];
    char t11[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    int t23;
    char *t24;
    unsigned int t25;
    int t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1824);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(109, ng0);

LAB5:    xsi_set_current_line(111, ng0);
    t5 = (t1 + 8008);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t8, t7, 8);
    t9 = (t1 + 6568);
    t12 = (t1 + 6568);
    t13 = (t12 + 72U);
    t14 = *((char **)t13);
    t15 = (t1 + 6568);
    t16 = (t15 + 64U);
    t17 = *((char **)t16);
    t18 = (t1 + 6728);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    xsi_vlog_generic_convert_array_indices(t10, t11, t14, t17, 1, 1, t20, 32, 1);
    t21 = (t10 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (!(t22));
    t24 = (t11 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (!(t25));
    t27 = (t23 && t26);
    if (t27 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(112, ng0);
    t4 = (t1 + 6728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t9 = (t1 + 6728);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    xsi_set_current_line(113, ng0);
    t4 = (t1 + 6728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_signed_equal(t8, 32, t6, 32, t7, 32);
    t9 = (t8 + 4);
    t22 = *((unsigned int *)t9);
    t25 = (~(t22));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t25);
    t32 = (t29 != 0);
    if (t32 > 0)
        goto LAB8;

LAB9:
LAB10:    xsi_set_current_line(115, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t1 + 8008);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t10, 0, 8);
    t9 = (t10 + 4);
    t12 = (t7 + 4);
    t22 = *((unsigned int *)t7);
    t25 = (t22 >> 0);
    *((unsigned int *)t10) = t25;
    t28 = *((unsigned int *)t12);
    t29 = (t28 >> 0);
    *((unsigned int *)t9) = t29;
    t32 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t32 & 255U);
    t33 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t33 & 255U);
    t13 = ((char*)((ng5)));
    xsi_vlogtype_concat(t8, 10, 10, 3U, t13, 1, t10, 8, t4, 1);
    t14 = (t1 + 7208);
    xsi_vlogvar_assign_value(t14, t8, 0, 0, 10);
    xsi_set_current_line(116, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 7368);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(117, ng0);

LAB11:    t4 = (t1 + 7368);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng6)));
    memset(t8, 0, 8);
    xsi_vlog_signed_not_equal(t8, 32, t6, 32, t7, 32);
    t9 = (t8 + 4);
    t22 = *((unsigned int *)t9);
    t25 = (~(t22));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t25);
    t32 = (t29 != 0);
    if (t32 > 0)
        goto LAB12;

LAB13:
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB6:    t28 = *((unsigned int *)t10);
    t29 = *((unsigned int *)t11);
    t30 = (t28 - t29);
    t31 = (t30 + 1);
    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t11), t31);
    goto LAB7;

LAB8:    xsi_set_current_line(113, ng0);
    t12 = ((char*)((ng3)));
    t13 = (t1 + 6728);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    goto LAB10;

LAB12:    xsi_set_current_line(117, ng0);

LAB14:    xsi_set_current_line(118, ng0);
    t12 = (t1 + 7368);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = ((char*)((ng7)));
    memset(t10, 0, 8);
    xsi_vlog_signed_equal(t10, 32, t14, 32, t15, 32);
    t16 = (t10 + 4);
    t33 = *((unsigned int *)t16);
    t34 = (~(t33));
    t35 = *((unsigned int *)t10);
    t36 = (t35 & t34);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(119, ng0);
    t4 = (t1 + 7208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t8, 0, 8);
    t7 = (t8 + 4);
    t9 = (t6 + 4);
    t22 = *((unsigned int *)t6);
    t25 = (t22 >> 0);
    t28 = (t25 & 1);
    *((unsigned int *)t8) = t28;
    t29 = *((unsigned int *)t9);
    t32 = (t29 >> 0);
    t33 = (t32 & 1);
    *((unsigned int *)t7) = t33;
    t12 = (t1 + 6248);
    xsi_vlogvar_assign_value(t12, t8, 0, 0, 1);

LAB17:    xsi_set_current_line(120, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 8320000LL);
    *((char **)t3) = &&LAB18;
    t0 = 1;
    goto LAB1;

LAB15:    xsi_set_current_line(118, ng0);
    t17 = ((char*)((ng3)));
    t18 = (t1 + 6248);
    xsi_vlogvar_assign_value(t18, t17, 0, 0, 1);
    goto LAB17;

LAB18:    xsi_set_current_line(121, ng0);
    t6 = (t1 + 7368);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t12 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t9, 32, t12, 32);
    t13 = (t1 + 7368);
    xsi_vlogvar_assign_value(t13, t8, 0, 0, 32);
    xsi_set_current_line(122, ng0);
    t4 = (t1 + 7208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t10, 0, 8);
    t7 = (t10 + 4);
    t9 = (t6 + 4);
    t22 = *((unsigned int *)t6);
    t25 = (t22 >> 1);
    *((unsigned int *)t10) = t25;
    t28 = *((unsigned int *)t9);
    t29 = (t28 >> 1);
    *((unsigned int *)t7) = t29;
    t32 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t32 & 511U);
    t33 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t33 & 511U);
    t12 = ((char*)((ng5)));
    xsi_vlogtype_concat(t8, 10, 10, 2U, t12, 1, t10, 9);
    t13 = (t1 + 7208);
    xsi_vlogvar_assign_value(t13, t8, 0, 0, 10);
    goto LAB11;

}

static int sp_putserialdata_badstart(char *t1, char *t2)
{
    char t8[8];
    char t10[8];
    char t11[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    int t23;
    char *t24;
    unsigned int t25;
    int t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 2256);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(130, ng0);

LAB5:    xsi_set_current_line(132, ng0);
    t5 = (t1 + 8168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t8, t7, 8);
    t9 = (t1 + 6568);
    t12 = (t1 + 6568);
    t13 = (t12 + 72U);
    t14 = *((char **)t13);
    t15 = (t1 + 6568);
    t16 = (t15 + 64U);
    t17 = *((char **)t16);
    t18 = (t1 + 6728);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    xsi_vlog_generic_convert_array_indices(t10, t11, t14, t17, 1, 1, t20, 32, 1);
    t21 = (t10 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (!(t22));
    t24 = (t11 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (!(t25));
    t27 = (t23 && t26);
    if (t27 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(133, ng0);
    t4 = (t1 + 6728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t9 = (t1 + 6728);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    xsi_set_current_line(134, ng0);
    t4 = (t1 + 6728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_signed_equal(t8, 32, t6, 32, t7, 32);
    t9 = (t8 + 4);
    t22 = *((unsigned int *)t9);
    t25 = (~(t22));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t25);
    t32 = (t29 != 0);
    if (t32 > 0)
        goto LAB8;

LAB9:
LAB10:    xsi_set_current_line(136, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t1 + 8168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t10, 0, 8);
    t9 = (t10 + 4);
    t12 = (t7 + 4);
    t22 = *((unsigned int *)t7);
    t25 = (t22 >> 0);
    *((unsigned int *)t10) = t25;
    t28 = *((unsigned int *)t12);
    t29 = (t28 >> 0);
    *((unsigned int *)t9) = t29;
    t32 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t32 & 255U);
    t33 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t33 & 255U);
    t13 = ((char*)((ng5)));
    xsi_vlogtype_concat(t8, 10, 10, 3U, t13, 1, t10, 8, t4, 1);
    t14 = (t1 + 7208);
    xsi_vlogvar_assign_value(t14, t8, 0, 0, 10);
    xsi_set_current_line(137, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 7368);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(138, ng0);

LAB11:    t4 = (t1 + 7368);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng6)));
    memset(t8, 0, 8);
    xsi_vlog_signed_not_equal(t8, 32, t6, 32, t7, 32);
    t9 = (t8 + 4);
    t22 = *((unsigned int *)t9);
    t25 = (~(t22));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t25);
    t32 = (t29 != 0);
    if (t32 > 0)
        goto LAB12;

LAB13:
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB6:    t28 = *((unsigned int *)t10);
    t29 = *((unsigned int *)t11);
    t30 = (t28 - t29);
    t31 = (t30 + 1);
    xsi_vlogvar_assign_value(t9, t8, 0, *((unsigned int *)t11), t31);
    goto LAB7;

LAB8:    xsi_set_current_line(134, ng0);
    t12 = ((char*)((ng3)));
    t13 = (t1 + 6728);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    goto LAB10;

LAB12:    xsi_set_current_line(138, ng0);

LAB14:    xsi_set_current_line(139, ng0);
    t12 = (t1 + 7368);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = ((char*)((ng3)));
    memset(t10, 0, 8);
    xsi_vlog_signed_equal(t10, 32, t14, 32, t15, 32);
    t16 = (t10 + 4);
    t33 = *((unsigned int *)t16);
    t34 = (~(t33));
    t35 = *((unsigned int *)t10);
    t36 = (t35 & t34);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(144, ng0);

LAB21:    xsi_set_current_line(145, ng0);
    t4 = (t1 + 7208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t8, 0, 8);
    t7 = (t8 + 4);
    t9 = (t6 + 4);
    t22 = *((unsigned int *)t6);
    t25 = (t22 >> 0);
    t28 = (t25 & 1);
    *((unsigned int *)t8) = t28;
    t29 = *((unsigned int *)t9);
    t32 = (t29 >> 0);
    t33 = (t32 & 1);
    *((unsigned int *)t7) = t33;
    t12 = (t1 + 6248);
    xsi_vlogvar_assign_value(t12, t8, 0, 0, 1);
    xsi_set_current_line(146, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 8320000LL);
    *((char **)t3) = &&LAB22;
    t0 = 1;
    goto LAB1;

LAB15:    xsi_set_current_line(139, ng0);

LAB18:    xsi_set_current_line(140, ng0);
    t17 = ((char*)((ng3)));
    t18 = (t1 + 6248);
    xsi_vlogvar_assign_value(t18, t17, 0, 0, 1);
    xsi_set_current_line(141, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 1040000LL);
    *((char **)t3) = &&LAB19;
    t0 = 1;
    goto LAB1;

LAB17:    xsi_set_current_line(148, ng0);
    t4 = (t1 + 7368);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t9 = (t1 + 7368);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    xsi_set_current_line(149, ng0);
    t4 = (t1 + 7208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t10, 0, 8);
    t7 = (t10 + 4);
    t9 = (t6 + 4);
    t22 = *((unsigned int *)t6);
    t25 = (t22 >> 1);
    *((unsigned int *)t10) = t25;
    t28 = *((unsigned int *)t9);
    t29 = (t28 >> 1);
    *((unsigned int *)t7) = t29;
    t32 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t32 & 511U);
    t33 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t33 & 511U);
    t12 = ((char*)((ng5)));
    xsi_vlogtype_concat(t8, 10, 10, 2U, t12, 1, t10, 9);
    t13 = (t1 + 7208);
    xsi_vlogvar_assign_value(t13, t8, 0, 0, 10);
    goto LAB11;

LAB19:    xsi_set_current_line(142, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 6248);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(143, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 7280000LL);
    *((char **)t3) = &&LAB20;
    t0 = 1;
    goto LAB1;

LAB20:    goto LAB17;

LAB22:    goto LAB17;

}

static int sp_readdata(char *t1, char *t2)
{
    char t8[8];
    char t11[8];
    char t37[8];
    char t42[8];
    char t68[8];
    char t70[16];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t69;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 2688);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(158, ng0);

LAB5:    xsi_set_current_line(160, ng0);
    t5 = (t2 + 88U);
    t6 = *((char **)t5);
    t7 = (t6 + 0U);
    xsi_wp_set_status(t7, 1);
    *((char **)t3) = &&LAB6;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_set_current_line(161, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 5928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(162, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t1 + 6408);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(163, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 16U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(164, ng0);

LAB8:    t4 = (t1 + 5048U);
    t5 = *((char **)t4);
    t4 = (t1 + 5008U);
    t6 = (t4 + 72U);
    t7 = *((char **)t6);
    t9 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t8, 32, t5, t7, 2, t9, 32, 1);
    t10 = ((char*)((ng3)));
    memset(t11, 0, 8);
    t12 = (t8 + 4);
    t13 = (t10 + 4);
    t14 = *((unsigned int *)t8);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t12);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB12;

LAB9:    if (t23 != 0)
        goto LAB11;

LAB10:    *((unsigned int *)t11) = 1;

LAB12:    t27 = (t11 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(167, ng0);
    t4 = ((char*)((ng9)));
    t5 = (t1 + 6408);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(168, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 48U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB17;
    goto LAB1;

LAB11:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB12;

LAB13:    xsi_set_current_line(164, ng0);

LAB15:    xsi_set_current_line(165, ng0);
    t33 = (t2 + 88U);
    t34 = *((char **)t33);
    t35 = (t34 + 32U);
    xsi_wp_set_status(t35, 1);
    *((char **)t3) = &&LAB16;
    goto LAB1;

LAB16:    goto LAB8;

LAB17:    xsi_set_current_line(169, ng0);
    t4 = (t1 + 7528);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 7528);
    t9 = (t7 + 72U);
    t10 = *((char **)t9);
    t12 = ((char*)((ng10)));
    xsi_vlog_generic_get_index_select_value(t8, 32, t6, t10, 2, t12, 32, 1);
    t13 = ((char*)((ng1)));
    memset(t11, 0, 8);
    t26 = (t8 + 4);
    t27 = (t13 + 4);
    t14 = *((unsigned int *)t8);
    t15 = *((unsigned int *)t13);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t26);
    t18 = *((unsigned int *)t27);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t26);
    t22 = *((unsigned int *)t27);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB21;

LAB18:    if (t23 != 0)
        goto LAB20;

LAB19:    *((unsigned int *)t11) = 1;

LAB21:    t34 = (t11 + 4);
    t28 = *((unsigned int *)t34);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB22;

LAB23:    xsi_set_current_line(177, ng0);

LAB35:    xsi_set_current_line(179, ng0);
    t4 = (t1 + 7528);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 5048U);
    t9 = *((char **)t7);
    memset(t8, 0, 8);
    t7 = (t6 + 4);
    t10 = (t9 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t9);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t10);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t10);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB37;

LAB36:    if (t23 != 0)
        goto LAB38;

LAB39:    t13 = (t8 + 4);
    t28 = *((unsigned int *)t13);
    t29 = (~(t28));
    t30 = *((unsigned int *)t8);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB40;

LAB41:    xsi_set_current_line(182, ng0);

LAB44:    xsi_set_current_line(183, ng0);
    t4 = xsi_vlog_time(t70, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 7528);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t1 + 2688);
    xsi_vlogfile_write(1, 0, 0, ng14, 3, t9, (char)118, t70, 64, (char)118, t7, 9);

LAB42:
LAB24:    xsi_set_current_line(186, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t1 + 6408);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(187, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 5928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(188, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 64U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB45;
    goto LAB1;

LAB20:    t33 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB21;

LAB22:    xsi_set_current_line(169, ng0);

LAB25:    xsi_set_current_line(171, ng0);
    t35 = (t1 + 5048U);
    t36 = *((char **)t35);
    t35 = (t1 + 5008U);
    t38 = (t35 + 72U);
    t39 = *((char **)t38);
    t40 = ((char*)((ng10)));
    xsi_vlog_generic_get_index_select_value(t37, 32, t36, t39, 2, t40, 32, 1);
    t41 = ((char*)((ng1)));
    memset(t42, 0, 8);
    t43 = (t37 + 4);
    t44 = (t41 + 4);
    t45 = *((unsigned int *)t37);
    t46 = *((unsigned int *)t41);
    t47 = (t45 ^ t46);
    t48 = *((unsigned int *)t43);
    t49 = *((unsigned int *)t44);
    t50 = (t48 ^ t49);
    t51 = (t47 | t50);
    t52 = *((unsigned int *)t43);
    t53 = *((unsigned int *)t44);
    t54 = (t52 | t53);
    t55 = (~(t54));
    t56 = (t51 & t55);
    if (t56 != 0)
        goto LAB27;

LAB26:    if (t54 != 0)
        goto LAB28;

LAB29:    t58 = (t42 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t42);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB30;

LAB31:    xsi_set_current_line(174, ng0);

LAB34:    xsi_set_current_line(175, ng0);
    t4 = xsi_vlog_time(t70, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 2688);
    xsi_vlogfile_write(1, 0, 0, ng12, 2, t5, (char)118, t70, 64);

LAB32:    goto LAB24;

LAB27:    *((unsigned int *)t42) = 1;
    goto LAB29;

LAB28:    t57 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB29;

LAB30:    xsi_set_current_line(171, ng0);

LAB33:    xsi_set_current_line(172, ng0);
    t64 = (t1 + 7048);
    t65 = (t64 + 56U);
    t66 = *((char **)t65);
    t67 = ((char*)((ng1)));
    memset(t68, 0, 8);
    xsi_vlog_signed_add(t68, 32, t66, 32, t67, 32);
    t69 = (t1 + 7048);
    xsi_vlogvar_assign_value(t69, t68, 0, 0, 32);
    xsi_set_current_line(173, ng0);
    t4 = xsi_vlog_time(t70, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 2688);
    xsi_vlogfile_write(1, 0, 0, ng11, 2, t5, (char)118, t70, 64);
    goto LAB32;

LAB37:    *((unsigned int *)t8) = 1;
    goto LAB39;

LAB38:    t12 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB39;

LAB40:    xsi_set_current_line(179, ng0);

LAB43:    xsi_set_current_line(180, ng0);
    t26 = (t1 + 7048);
    t27 = (t26 + 56U);
    t33 = *((char **)t27);
    t34 = ((char*)((ng1)));
    memset(t11, 0, 8);
    xsi_vlog_signed_add(t11, 32, t33, 32, t34, 32);
    t35 = (t1 + 7048);
    xsi_vlogvar_assign_value(t35, t11, 0, 0, 32);
    xsi_set_current_line(181, ng0);
    t4 = xsi_vlog_time(t70, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 7528);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t1 + 5048U);
    t10 = *((char **)t9);
    t9 = (t1 + 2688);
    xsi_vlogfile_write(1, 0, 0, ng13, 4, t9, (char)118, t70, 64, (char)118, t7, 9, (char)118, t10, 9);
    goto LAB42;

LAB45:    goto LAB4;

}

static int sp_checkdata(char *t1, char *t2)
{
    char t11[8];
    char t21[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    int t32;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 3120);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(196, ng0);

LAB5:    xsi_set_current_line(197, ng0);

LAB6:    t5 = (t1 + 6728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t1 + 6888);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memset(t11, 0, 8);
    xsi_vlog_signed_not_equal(t11, 32, t7, 32, t10, 32);
    t12 = (t11 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (~(t13));
    t15 = *((unsigned int *)t11);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB7;

LAB8:
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB7:    xsi_set_current_line(197, ng0);

LAB9:    xsi_set_current_line(198, ng0);
    t18 = (t1 + 6568);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t22 = (t1 + 6568);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t1 + 6568);
    t26 = (t25 + 64U);
    t27 = *((char **)t26);
    t28 = (t1 + 6888);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    xsi_vlog_generic_get_array_select_value(t21, 32, t20, t24, t27, 1, 1, t30, 32, 1);
    t31 = (t1 + 7528);
    xsi_vlogvar_assign_value(t31, t21, 0, 0, 9);
    xsi_set_current_line(199, ng0);
    t4 = (t1 + 6888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t11, 0, 8);
    xsi_vlog_signed_add(t11, 32, t6, 32, t7, 32);
    t8 = (t1 + 6888);
    xsi_vlogvar_assign_value(t8, t11, 0, 0, 32);
    xsi_set_current_line(200, ng0);
    t4 = (t1 + 6888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t11, 0, 8);
    xsi_vlog_signed_equal(t11, 32, t6, 32, t7, 32);
    t8 = (t11 + 4);
    t13 = *((unsigned int *)t8);
    t14 = (~(t13));
    t15 = *((unsigned int *)t11);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(202, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    xsi_vlog_subprograminvocation_setJumpstate(t2, t7, &&LAB13);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t1 + 2688);
    t12 = xsi_create_subprogram_invocation(t9, 0, t1, t10, 0, t2);
    xsi_vlog_subprogram_pushinvocation(t10, t12);

LAB15:    t18 = (t2 + 64U);
    t19 = *((char **)t18);
    t20 = (t19 + 80U);
    t22 = *((char **)t20);
    t23 = (t22 + 272U);
    t24 = *((char **)t23);
    t25 = (t24 + 0U);
    t26 = *((char **)t25);
    t32 = ((int  (*)(char *, char *))t26)(t1, t19);
    if (t32 == -1)
        goto LAB16;

LAB17:    if (t32 != 0)
        goto LAB18;

LAB13:    t19 = (t1 + 2688);
    xsi_vlog_subprogram_popinvocation(t19);

LAB14:    t27 = (t2 + 64U);
    t28 = *((char **)t27);
    t27 = (t1 + 2688);
    t29 = (t2 + 56U);
    t30 = *((char **)t29);
    xsi_delete_subprogram_invocation(t27, t28, t1, t30, t2);
    goto LAB6;

LAB10:    xsi_set_current_line(200, ng0);
    t9 = ((char*)((ng3)));
    t10 = (t1 + 6888);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 32);
    goto LAB12;

LAB16:    t0 = -1;
    goto LAB1;

LAB18:    t18 = (t2 + 48U);
    *((char **)t18) = &&LAB15;
    goto LAB1;

}

static int sp_writerxen(char *t1, char *t2)
{
    char t8[8];
    char t17[8];
    char t43[8];
    char t45[16];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t44;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 3552);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(210, ng0);

LAB5:    xsi_set_current_line(211, ng0);
    t5 = (t2 + 88U);
    t6 = *((char **)t5);
    t7 = (t6 + 0U);
    xsi_wp_set_status(t7, 1);
    *((char **)t3) = &&LAB6;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_set_current_line(212, ng0);
    t4 = (t1 + 8328);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng4)));
    xsi_vlogtype_concat(t8, 8, 8, 2U, t7, 7, t6, 1);
    t9 = (t1 + 6088);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 8);
    xsi_set_current_line(213, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 5768);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(214, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t1 + 6408);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(215, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 16U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(216, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 5768);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(217, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 5928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(218, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(219, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 48U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(220, ng0);
    t4 = (t1 + 5048U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t6 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 0);
    t15 = (t14 & 1);
    *((unsigned int *)t4) = t15;
    t7 = (t1 + 8328);
    t9 = (t7 + 56U);
    t16 = *((char **)t9);
    memset(t17, 0, 8);
    t18 = (t8 + 4);
    t19 = (t16 + 4);
    t20 = *((unsigned int *)t8);
    t21 = *((unsigned int *)t16);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t18);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t18);
    t28 = *((unsigned int *)t19);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB11;

LAB10:    if (t29 != 0)
        goto LAB12;

LAB13:    t33 = (t17 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (~(t34));
    t36 = *((unsigned int *)t17);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(223, ng0);

LAB18:    xsi_set_current_line(224, ng0);
    t4 = xsi_vlog_time(t45, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 8328);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t1 + 3552);
    xsi_vlogfile_write(1, 0, 0, ng16, 3, t9, (char)118, t45, 64, (char)118, t7, 1);

LAB16:    xsi_set_current_line(226, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 5928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(227, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 64U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB19;
    goto LAB1;

LAB11:    *((unsigned int *)t17) = 1;
    goto LAB13;

LAB12:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB13;

LAB14:    xsi_set_current_line(220, ng0);

LAB17:    xsi_set_current_line(221, ng0);
    t39 = (t1 + 7048);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = ((char*)((ng1)));
    memset(t43, 0, 8);
    xsi_vlog_signed_add(t43, 32, t41, 32, t42, 32);
    t44 = (t1 + 7048);
    xsi_vlogvar_assign_value(t44, t43, 0, 0, 32);
    xsi_set_current_line(222, ng0);
    t4 = xsi_vlog_time(t45, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 8328);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t1 + 3552);
    xsi_vlogfile_write(1, 0, 0, ng15, 3, t9, (char)118, t45, 64, (char)118, t7, 1);
    goto LAB16;

LAB19:    goto LAB4;

}

static int sp_rdoverrun(char *t1, char *t2)
{
    char t8[8];
    char t17[8];
    char t43[8];
    char t45[16];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t44;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 3984);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(233, ng0);

LAB5:    xsi_set_current_line(234, ng0);
    t5 = (t2 + 88U);
    t6 = *((char **)t5);
    t7 = (t6 + 0U);
    xsi_wp_set_status(t7, 1);
    *((char **)t3) = &&LAB6;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_set_current_line(235, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t1 + 6408);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(236, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 5928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(237, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 16U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(238, ng0);
    t4 = (t1 + 5048U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t6 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 2);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t6);
    t13 = (t12 >> 2);
    t14 = (t13 & 1);
    *((unsigned int *)t4) = t14;
    t7 = (t1 + 8488);
    t15 = (t7 + 56U);
    t16 = *((char **)t15);
    memset(t17, 0, 8);
    t18 = (t8 + 4);
    t19 = (t16 + 4);
    t20 = *((unsigned int *)t8);
    t21 = *((unsigned int *)t16);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t18);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t18);
    t28 = *((unsigned int *)t19);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB9;

LAB8:    if (t29 != 0)
        goto LAB10;

LAB11:    t33 = (t17 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (~(t34));
    t36 = *((unsigned int *)t17);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(241, ng0);

LAB16:    xsi_set_current_line(242, ng0);
    t4 = xsi_vlog_time(t45, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 8488);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t15 = (t1 + 3984);
    xsi_vlogfile_write(1, 0, 0, ng18, 3, t15, (char)118, t45, 64, (char)118, t7, 1);

LAB14:    xsi_set_current_line(244, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 5928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB4;

LAB9:    *((unsigned int *)t17) = 1;
    goto LAB11;

LAB10:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB11;

LAB12:    xsi_set_current_line(238, ng0);

LAB15:    xsi_set_current_line(239, ng0);
    t39 = (t1 + 7048);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = ((char*)((ng1)));
    memset(t43, 0, 8);
    xsi_vlog_signed_add(t43, 32, t41, 32, t42, 32);
    t44 = (t1 + 7048);
    xsi_vlogvar_assign_value(t44, t43, 0, 0, 32);
    xsi_set_current_line(240, ng0);
    t4 = xsi_vlog_time(t45, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 8488);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t15 = (t1 + 5048U);
    t16 = *((char **)t15);
    memset(t8, 0, 8);
    t15 = (t8 + 4);
    t18 = (t16 + 4);
    t9 = *((unsigned int *)t16);
    t10 = (t9 >> 2);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t18);
    t13 = (t12 >> 2);
    t14 = (t13 & 1);
    *((unsigned int *)t15) = t14;
    t19 = (t1 + 3984);
    xsi_vlogfile_write(1, 0, 0, ng17, 4, t19, (char)118, t45, 64, (char)118, t7, 1, (char)118, t8, 1);
    goto LAB14;

}

static int sp_rddatardy(char *t1, char *t2)
{
    char t8[8];
    char t17[8];
    char t43[8];
    char t45[16];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t44;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 4416);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(250, ng0);

LAB5:    xsi_set_current_line(251, ng0);
    t5 = (t2 + 88U);
    t6 = *((char **)t5);
    t7 = (t6 + 0U);
    xsi_wp_set_status(t7, 1);
    *((char **)t3) = &&LAB6;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_set_current_line(252, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t1 + 6408);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(253, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 5928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(254, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 16U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(255, ng0);
    t4 = (t1 + 5048U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t6 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 1);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t6);
    t13 = (t12 >> 1);
    t14 = (t13 & 1);
    *((unsigned int *)t4) = t14;
    t7 = (t1 + 8648);
    t15 = (t7 + 56U);
    t16 = *((char **)t15);
    memset(t17, 0, 8);
    t18 = (t8 + 4);
    t19 = (t16 + 4);
    t20 = *((unsigned int *)t8);
    t21 = *((unsigned int *)t16);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t18);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t18);
    t28 = *((unsigned int *)t19);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB9;

LAB8:    if (t29 != 0)
        goto LAB10;

LAB11:    t33 = (t17 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (~(t34));
    t36 = *((unsigned int *)t17);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(258, ng0);

LAB16:    xsi_set_current_line(259, ng0);
    t4 = xsi_vlog_time(t45, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 4416);
    xsi_vlogfile_write(1, 0, 0, ng20, 2, t5, (char)118, t45, 64);

LAB14:    xsi_set_current_line(261, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 5928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB4;

LAB9:    *((unsigned int *)t17) = 1;
    goto LAB11;

LAB10:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB11;

LAB12:    xsi_set_current_line(255, ng0);

LAB15:    xsi_set_current_line(256, ng0);
    t39 = (t1 + 7048);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = ((char*)((ng1)));
    memset(t43, 0, 8);
    xsi_vlog_signed_add(t43, 32, t41, 32, t42, 32);
    t44 = (t1 + 7048);
    xsi_vlogvar_assign_value(t44, t43, 0, 0, 32);
    xsi_set_current_line(257, ng0);
    t4 = xsi_vlog_time(t45, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 8648);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t15 = (t1 + 5048U);
    t16 = *((char **)t15);
    memset(t8, 0, 8);
    t15 = (t8 + 4);
    t18 = (t16 + 4);
    t9 = *((unsigned int *)t16);
    t10 = (t9 >> 1);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t18);
    t13 = (t12 >> 1);
    t14 = (t13 & 1);
    *((unsigned int *)t15) = t14;
    t19 = (t1 + 4416);
    xsi_vlogfile_write(1, 0, 0, ng19, 4, t19, (char)118, t45, 64, (char)118, t7, 1, (char)118, t8, 1);
    goto LAB14;

}

static void Initial_65_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 9568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);

LAB4:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 9376);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(68, ng0);

LAB6:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 9376);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(68, ng0);
    t5 = (t0 + 5448);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB11;

LAB9:    if (*((unsigned int *)t8) == 0)
        goto LAB8;

LAB10:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;

LAB11:    t15 = (t4 + 4);
    t16 = (t7 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    *((unsigned int *)t4) = t18;
    *((unsigned int *)t15) = 0;
    if (*((unsigned int *)t16) != 0)
        goto LAB13;

LAB12:    t23 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t23 & 1U);
    t24 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t24 & 1U);
    t25 = (t0 + 5448);
    xsi_vlogvar_assign_value(t25, t4, 0, 0, 1);
    goto LAB6;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB13:    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t16);
    *((unsigned int *)t4) = (t19 | t20);
    t21 = *((unsigned int *)t15);
    t22 = *((unsigned int *)t16);
    *((unsigned int *)t15) = (t21 | t22);
    goto LAB12;

LAB14:    goto LAB1;

}

static void Initial_72_1(char *t0)
{
    char t8[8];
    char t15[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t16;

LAB0:    t1 = (t0 + 9816U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(72, ng0);

LAB4:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 9624);
    xsi_process_wait(t2, 2912000000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 6728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6888);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t8, 0, 8);
    xsi_vlog_signed_not_equal(t8, 32, t4, 32, t7, 32);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB1;

LAB6:    xsi_set_current_line(76, ng0);

LAB9:    xsi_set_current_line(77, ng0);
    t16 = xsi_vlog_time(t15, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng21, 2, t0, (char)118, t15, 64);
    xsi_set_current_line(78, ng0);
    xsi_vlogfile_write(1, 0, 0, ng22, 1, t0);
    goto LAB8;

}

static void Initial_268_2(char *t0)
{
    char t5[8];
    char t30[8];
    char t32[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t33;
    char *t34;
    int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    t1 = (t0 + 10064U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(268, ng0);

LAB4:    xsi_set_current_line(270, ng0);
    t2 = (t0 + 9872);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(271, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 5448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(272, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(273, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(274, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(275, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(276, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(277, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(278, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(279, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(280, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(282, ng0);
    t2 = (t0 + 9872);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(285, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(287, ng0);
    t2 = (t0 + 10608);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(288, ng0);
    t2 = (t0 + 10624);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(289, ng0);
    t2 = (t0 + 10640);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(290, ng0);
    t2 = (t0 + 10656);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(291, ng0);
    t2 = (t0 + 10672);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(293, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 6088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(294, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(295, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 6408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(296, ng0);
    t2 = (t0 + 10688);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(297, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(298, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(299, ng0);
    t2 = (t0 + 10704);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(300, ng0);
    t2 = (t0 + 10720);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(301, ng0);
    t2 = (t0 + 5048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng23)));
    memset(t5, 0, 8);
    t4 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB16;

LAB15:    if (t16 != 0)
        goto LAB17;

LAB18:    t20 = (t5 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t5);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(304, ng0);

LAB23:    xsi_set_current_line(305, ng0);
    t2 = xsi_vlog_time(t32, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng26, 2, t0, (char)118, t32, 64);

LAB21:    xsi_set_current_line(307, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(308, ng0);
    t2 = (t0 + 10736);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB16:    *((unsigned int *)t5) = 1;
    goto LAB18;

LAB17:    t19 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(301, ng0);

LAB22:    xsi_set_current_line(302, ng0);
    t26 = (t0 + 7048);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = ((char*)((ng1)));
    memset(t30, 0, 8);
    xsi_vlog_signed_add(t30, 32, t28, 32, t29, 32);
    t31 = (t0 + 7048);
    xsi_vlogvar_assign_value(t31, t30, 0, 0, 32);
    xsi_set_current_line(303, ng0);
    t2 = xsi_vlog_time(t32, 1000.0000000000000, 1000.0000000000000);
    t3 = ((char*)((ng23)));
    t4 = (t0 + 5048U);
    t6 = *((char **)t4);
    xsi_vlogfile_write(1, 0, 0, ng25, 4, t0, (char)118, t32, 64, (char)118, t3, 8, (char)118, t6, 9);
    goto LAB21;

LAB24:    xsi_set_current_line(309, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9872);
    t4 = (t0 + 3552);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 8328);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 1);

LAB27:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB29:    if (t35 != 0)
        goto LAB30;

LAB25:    t26 = (t0 + 3552);
    xsi_vlog_subprogram_popinvocation(t26);

LAB26:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 3552);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(310, ng0);
    t2 = ((char*)((ng27)));
    t3 = (t0 + 9872);
    t4 = (t0 + 1392);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 7848);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 9);

LAB33:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB35:    if (t35 != 0)
        goto LAB36;

LAB31:    t26 = (t0 + 1392);
    xsi_vlog_subprogram_popinvocation(t26);

LAB32:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 1392);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(311, ng0);
    t2 = (t0 + 9872);
    t3 = (t0 + 3120);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB39:    t6 = (t0 + 9968);
    t19 = *((char **)t6);
    t20 = (t19 + 80U);
    t26 = *((char **)t20);
    t27 = (t26 + 272U);
    t28 = *((char **)t27);
    t29 = (t28 + 0U);
    t31 = *((char **)t29);
    t35 = ((int  (*)(char *, char *))t31)(t0, t19);

LAB41:    if (t35 != 0)
        goto LAB42;

LAB37:    t19 = (t0 + 3120);
    xsi_vlog_subprogram_popinvocation(t19);

LAB38:    t33 = (t0 + 9968);
    t34 = *((char **)t33);
    t33 = (t0 + 3120);
    t36 = (t0 + 9872);
    t37 = 0;
    xsi_delete_subprogram_invocation(t33, t34, t0, t36, t37);
    xsi_set_current_line(312, ng0);
    t2 = ((char*)((ng28)));
    t3 = (t0 + 9872);
    t4 = (t0 + 1392);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 7848);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 9);

LAB45:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB47:    if (t35 != 0)
        goto LAB48;

LAB43:    t26 = (t0 + 1392);
    xsi_vlog_subprogram_popinvocation(t26);

LAB44:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 1392);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(313, ng0);
    t2 = ((char*)((ng29)));
    t3 = (t0 + 9872);
    t4 = (t0 + 1392);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 7848);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 9);

LAB51:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB53:    if (t35 != 0)
        goto LAB54;

LAB49:    t26 = (t0 + 1392);
    xsi_vlog_subprogram_popinvocation(t26);

LAB50:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 1392);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(314, ng0);
    t2 = ((char*)((ng30)));
    t3 = (t0 + 9872);
    t4 = (t0 + 1392);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 7848);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 9);

LAB57:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB59:    if (t35 != 0)
        goto LAB60;

LAB55:    t26 = (t0 + 1392);
    xsi_vlog_subprogram_popinvocation(t26);

LAB56:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 1392);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(315, ng0);
    t2 = (t0 + 9872);
    xsi_process_wait(t2, 249600000LL);
    *((char **)t1) = &&LAB61;
    goto LAB1;

LAB28:;
LAB30:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB27;
    goto LAB1;

LAB34:;
LAB36:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB33;
    goto LAB1;

LAB40:;
LAB42:    t6 = (t0 + 10064U);
    *((char **)t6) = &&LAB39;
    goto LAB1;

LAB46:;
LAB48:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB45;
    goto LAB1;

LAB52:;
LAB54:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB51;
    goto LAB1;

LAB58:;
LAB60:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB57;
    goto LAB1;

LAB61:    xsi_set_current_line(316, ng0);
    t3 = (t0 + 9872);
    xsi_process_wait(t3, 8320000LL);
    *((char **)t1) = &&LAB62;
    goto LAB1;

LAB62:    xsi_set_current_line(317, ng0);
    t4 = (t0 + 9872);
    t6 = (t0 + 3120);
    t19 = xsi_create_subprogram_invocation(t4, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t19);

LAB65:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB67:    if (t35 != 0)
        goto LAB68;

LAB63:    t26 = (t0 + 3120);
    xsi_vlog_subprogram_popinvocation(t26);

LAB64:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 3120);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(318, ng0);
    xsi_vlogfile_write(1, 0, 0, ng31, 1, t0);
    xsi_set_current_line(319, ng0);
    t2 = ((char*)((ng32)));
    t3 = (t0 + 9872);
    t4 = (t0 + 1824);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 8008);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 9);

LAB71:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB73:    if (t35 != 0)
        goto LAB74;

LAB69:    t26 = (t0 + 1824);
    xsi_vlog_subprogram_popinvocation(t26);

LAB70:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 1824);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(320, ng0);
    t2 = (t0 + 9872);
    t3 = (t0 + 3120);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB77:    t6 = (t0 + 9968);
    t19 = *((char **)t6);
    t20 = (t19 + 80U);
    t26 = *((char **)t20);
    t27 = (t26 + 272U);
    t28 = *((char **)t27);
    t29 = (t28 + 0U);
    t31 = *((char **)t29);
    t35 = ((int  (*)(char *, char *))t31)(t0, t19);

LAB79:    if (t35 != 0)
        goto LAB80;

LAB75:    t19 = (t0 + 3120);
    xsi_vlog_subprogram_popinvocation(t19);

LAB76:    t33 = (t0 + 9968);
    t34 = *((char **)t33);
    t33 = (t0 + 3120);
    t36 = (t0 + 9872);
    t37 = 0;
    xsi_delete_subprogram_invocation(t33, t34, t0, t36, t37);
    xsi_set_current_line(321, ng0);
    xsi_vlogfile_write(1, 0, 0, ng33, 1, t0);
    xsi_set_current_line(322, ng0);
    t2 = ((char*)((ng34)));
    t3 = (t0 + 9872);
    t4 = (t0 + 1824);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 8008);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 9);

LAB83:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB85:    if (t35 != 0)
        goto LAB86;

LAB81:    t26 = (t0 + 1824);
    xsi_vlog_subprogram_popinvocation(t26);

LAB82:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 1824);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(323, ng0);
    t2 = (t0 + 9872);
    t3 = (t0 + 3120);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB89:    t6 = (t0 + 9968);
    t19 = *((char **)t6);
    t20 = (t19 + 80U);
    t26 = *((char **)t20);
    t27 = (t26 + 272U);
    t28 = *((char **)t27);
    t29 = (t28 + 0U);
    t31 = *((char **)t29);
    t35 = ((int  (*)(char *, char *))t31)(t0, t19);

LAB91:    if (t35 != 0)
        goto LAB92;

LAB87:    t19 = (t0 + 3120);
    xsi_vlog_subprogram_popinvocation(t19);

LAB88:    t33 = (t0 + 9968);
    t34 = *((char **)t33);
    t33 = (t0 + 3120);
    t36 = (t0 + 9872);
    t37 = 0;
    xsi_delete_subprogram_invocation(t33, t34, t0, t36, t37);
    xsi_set_current_line(324, ng0);
    t2 = ((char*)((ng35)));
    t3 = (t0 + 9872);
    t4 = (t0 + 1392);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 7848);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 9);

LAB95:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB97:    if (t35 != 0)
        goto LAB98;

LAB93:    t26 = (t0 + 1392);
    xsi_vlog_subprogram_popinvocation(t26);

LAB94:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 1392);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(325, ng0);
    t2 = (t0 + 9872);
    t3 = (t0 + 3120);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB101:    t6 = (t0 + 9968);
    t19 = *((char **)t6);
    t20 = (t19 + 80U);
    t26 = *((char **)t20);
    t27 = (t26 + 272U);
    t28 = *((char **)t27);
    t29 = (t28 + 0U);
    t31 = *((char **)t29);
    t35 = ((int  (*)(char *, char *))t31)(t0, t19);

LAB103:    if (t35 != 0)
        goto LAB104;

LAB99:    t19 = (t0 + 3120);
    xsi_vlog_subprogram_popinvocation(t19);

LAB100:    t33 = (t0 + 9968);
    t34 = *((char **)t33);
    t33 = (t0 + 3120);
    t36 = (t0 + 9872);
    t37 = 0;
    xsi_delete_subprogram_invocation(t33, t34, t0, t36, t37);
    xsi_set_current_line(327, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(328, ng0);

LAB105:    t2 = (t0 + 7688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = ((char*)((ng36)));
    memset(t5, 0, 8);
    xsi_vlog_signed_not_equal(t5, 32, t4, 32, t6, 32);
    t19 = (t5 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB106;

LAB107:    xsi_set_current_line(333, ng0);
    t2 = (t0 + 10752);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB115;
    goto LAB1;

LAB66:;
LAB68:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB65;
    goto LAB1;

LAB72:;
LAB74:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB71;
    goto LAB1;

LAB78:;
LAB80:    t6 = (t0 + 10064U);
    *((char **)t6) = &&LAB77;
    goto LAB1;

LAB84:;
LAB86:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB83;
    goto LAB1;

LAB90:;
LAB92:    t6 = (t0 + 10064U);
    *((char **)t6) = &&LAB89;
    goto LAB1;

LAB96:;
LAB98:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB95;
    goto LAB1;

LAB102:;
LAB104:    t6 = (t0 + 10064U);
    *((char **)t6) = &&LAB101;
    goto LAB1;

LAB106:    xsi_set_current_line(328, ng0);

LAB108:    xsi_set_current_line(329, ng0);
    t20 = (t0 + 7688);
    t26 = (t20 + 56U);
    t27 = *((char **)t26);
    t28 = ((char*)((ng37)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_add(t30, 32, t27, 32, t28, 32);
    t29 = (t0 + 9872);
    t31 = (t0 + 1392);
    t33 = xsi_create_subprogram_invocation(t29, 0, t0, t31, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t31, t33);
    t34 = (t0 + 7848);
    xsi_vlogvar_assign_value(t34, t30, 0, 0, 9);

LAB111:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t38 = (t37 + 80U);
    t39 = *((char **)t38);
    t40 = (t39 + 272U);
    t41 = *((char **)t40);
    t42 = (t41 + 0U);
    t43 = *((char **)t42);
    t35 = ((int  (*)(char *, char *))t43)(t0, t37);

LAB113:    if (t35 != 0)
        goto LAB114;

LAB109:    t37 = (t0 + 1392);
    xsi_vlog_subprogram_popinvocation(t37);

LAB110:    t44 = (t0 + 9968);
    t45 = *((char **)t44);
    t44 = (t0 + 1392);
    t46 = (t0 + 9872);
    t47 = 0;
    xsi_delete_subprogram_invocation(t44, t45, t0, t46, t47);
    xsi_set_current_line(330, ng0);
    t2 = (t0 + 7688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = ((char*)((ng1)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t4, 32, t6, 32);
    t19 = (t0 + 7688);
    xsi_vlogvar_assign_value(t19, t5, 0, 0, 32);
    goto LAB105;

LAB112:;
LAB114:    t36 = (t0 + 10064U);
    *((char **)t36) = &&LAB111;
    goto LAB1;

LAB115:    xsi_set_current_line(334, ng0);
    t2 = (t0 + 10768);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB116;
    goto LAB1;

LAB116:    xsi_set_current_line(335, ng0);
    t2 = (t0 + 10784);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB117;
    goto LAB1;

LAB117:    xsi_set_current_line(336, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9872);
    t4 = (t0 + 3984);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 8488);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 1);

LAB120:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB122:    if (t35 != 0)
        goto LAB123;

LAB118:    t26 = (t0 + 3984);
    xsi_vlog_subprogram_popinvocation(t26);

LAB119:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 3984);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(338, ng0);
    t2 = (t0 + 7688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = ((char*)((ng37)));
    memset(t5, 0, 8);
    xsi_vlog_unsigned_add(t5, 32, t4, 32, t6, 32);
    t19 = (t0 + 9872);
    t20 = (t0 + 1392);
    t26 = xsi_create_subprogram_invocation(t19, 0, t0, t20, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t20, t26);
    t27 = (t0 + 7848);
    xsi_vlogvar_assign_value(t27, t5, 0, 0, 9);

LAB126:    t28 = (t0 + 9968);
    t29 = *((char **)t28);
    t31 = (t29 + 80U);
    t33 = *((char **)t31);
    t34 = (t33 + 272U);
    t36 = *((char **)t34);
    t37 = (t36 + 0U);
    t38 = *((char **)t37);
    t35 = ((int  (*)(char *, char *))t38)(t0, t29);

LAB128:    if (t35 != 0)
        goto LAB129;

LAB124:    t29 = (t0 + 1392);
    xsi_vlog_subprogram_popinvocation(t29);

LAB125:    t39 = (t0 + 9968);
    t40 = *((char **)t39);
    t39 = (t0 + 1392);
    t41 = (t0 + 9872);
    t42 = 0;
    xsi_delete_subprogram_invocation(t39, t40, t0, t41, t42);
    xsi_set_current_line(339, ng0);
    t2 = (t0 + 10800);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB130;
    goto LAB1;

LAB121:;
LAB123:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB120;
    goto LAB1;

LAB127:;
LAB129:    t28 = (t0 + 10064U);
    *((char **)t28) = &&LAB126;
    goto LAB1;

LAB130:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 10816);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB131;
    goto LAB1;

LAB131:    xsi_set_current_line(341, ng0);
    t2 = (t0 + 10832);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB132;
    goto LAB1;

LAB132:    xsi_set_current_line(342, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9872);
    t4 = (t0 + 3984);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 8488);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 1);

LAB135:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB137:    if (t35 != 0)
        goto LAB138;

LAB133:    t26 = (t0 + 3984);
    xsi_vlog_subprogram_popinvocation(t26);

LAB134:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 3984);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(344, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9872);
    t4 = (t0 + 3552);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 8328);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 1);

LAB141:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB143:    if (t35 != 0)
        goto LAB144;

LAB139:    t26 = (t0 + 3552);
    xsi_vlog_subprogram_popinvocation(t26);

LAB140:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 3552);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(346, ng0);
    t2 = (t0 + 10848);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB145;
    goto LAB1;

LAB136:;
LAB138:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB135;
    goto LAB1;

LAB142:;
LAB144:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB141;
    goto LAB1;

LAB145:    xsi_set_current_line(347, ng0);
    t2 = (t0 + 10864);
    *((int *)t2) = 1;
    t3 = (t0 + 10096);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB146;
    goto LAB1;

LAB146:    xsi_set_current_line(348, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9872);
    t4 = (t0 + 3984);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 8488);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 1);

LAB149:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB151:    if (t35 != 0)
        goto LAB152;

LAB147:    t26 = (t0 + 3984);
    xsi_vlog_subprogram_popinvocation(t26);

LAB148:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 3984);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(350, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9872);
    t4 = (t0 + 4416);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 8648);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 1);

LAB155:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB157:    if (t35 != 0)
        goto LAB158;

LAB153:    t26 = (t0 + 4416);
    xsi_vlog_subprogram_popinvocation(t26);

LAB154:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 4416);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(352, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9872);
    t4 = (t0 + 3552);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 8328);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 1);

LAB161:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB163:    if (t35 != 0)
        goto LAB164;

LAB159:    t26 = (t0 + 3552);
    xsi_vlog_subprogram_popinvocation(t26);

LAB160:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 3552);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(354, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(354, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(356, ng0);
    t2 = ((char*)((ng38)));
    t3 = (t0 + 9872);
    t4 = (t0 + 1392);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 7848);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 9);

LAB167:    t20 = (t0 + 9968);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB169:    if (t35 != 0)
        goto LAB170;

LAB165:    t26 = (t0 + 1392);
    xsi_vlog_subprogram_popinvocation(t26);

LAB166:    t36 = (t0 + 9968);
    t37 = *((char **)t36);
    t36 = (t0 + 1392);
    t38 = (t0 + 9872);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(357, ng0);
    t2 = (t0 + 9872);
    t3 = (t0 + 3120);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB173:    t6 = (t0 + 9968);
    t19 = *((char **)t6);
    t20 = (t19 + 80U);
    t26 = *((char **)t20);
    t27 = (t26 + 272U);
    t28 = *((char **)t27);
    t29 = (t28 + 0U);
    t31 = *((char **)t29);
    t35 = ((int  (*)(char *, char *))t31)(t0, t19);

LAB175:    if (t35 != 0)
        goto LAB176;

LAB171:    t19 = (t0 + 3120);
    xsi_vlog_subprogram_popinvocation(t19);

LAB172:    t33 = (t0 + 9968);
    t34 = *((char **)t33);
    t33 = (t0 + 3120);
    t36 = (t0 + 9872);
    t37 = 0;
    xsi_delete_subprogram_invocation(t33, t34, t0, t36, t37);
    xsi_set_current_line(358, ng0);
    t2 = xsi_vlog_time(t32, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng39, 2, t0, (char)118, t32, 64);
    xsi_set_current_line(359, ng0);
    t2 = (t0 + 7048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_not_equal(t5, 32, t4, 32, t6, 32);
    t19 = (t5 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB177;

LAB178:    xsi_set_current_line(362, ng0);
    t2 = xsi_vlog_time(t32, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng41, 2, t0, (char)118, t32, 64);

LAB179:    goto LAB1;

LAB150:;
LAB152:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB149;
    goto LAB1;

LAB156:;
LAB158:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB155;
    goto LAB1;

LAB162:;
LAB164:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB161;
    goto LAB1;

LAB168:;
LAB170:    t20 = (t0 + 10064U);
    *((char **)t20) = &&LAB167;
    goto LAB1;

LAB174:;
LAB176:    t6 = (t0 + 10064U);
    *((char **)t6) = &&LAB173;
    goto LAB1;

LAB177:    xsi_set_current_line(360, ng0);
    t20 = xsi_vlog_time(t32, 1000.0000000000000, 1000.0000000000000);
    t26 = (t0 + 7048);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    xsi_vlogfile_write(1, 0, 0, ng40, 3, t0, (char)118, t32, 64, (char)119, t28, 32);
    goto LAB179;

}


extern void work_m_00000000002810876271_0680776067_init()
{
	static char *pe[] = {(void *)Initial_65_0,(void *)Initial_72_1,(void *)Initial_268_2};
	static char *se[] = {(void *)sp_putserialdata,(void *)sp_putserialdata_badstop,(void *)sp_putserialdata_badstart,(void *)sp_readdata,(void *)sp_checkdata,(void *)sp_writerxen,(void *)sp_rdoverrun,(void *)sp_rddatardy};
	xsi_register_didat("work_m_00000000002810876271_0680776067", "isim/tb_uart_rx_isim_beh.exe.sim/work/m_00000000002810876271_0680776067.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
