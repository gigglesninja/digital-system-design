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
static const char *ng0 = "C:/Users/James/Desktop/iDriveSync/IDrive-Sync/spi/tb_spi_bonus.v";
static int ng1[] = {1, 0};
static int ng2[] = {1024, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {8, 0};
static const char *ng6 = "%t: FAIL,expected serial MOSI out of %h, found: %h";
static const char *ng7 = "%t: PASS,got expected serial MOSI out of %h";
static int ng8[] = {2, 0};
static const char *ng9 = "%t: FAIL, reading SPI DATARDY bit, expected: %h, actual: %h.";
static const char *ng10 = "%t: PASS, reading SPI DATARDY bit.";
static const char *ng11 = "%t: FAIL,expected serial RXFIFO out of %h, found: %h";
static const char *ng12 = "%t: PASS,got expected serial RXFIFO of %h";
static const char *ng13 = "%t: ERROR -- TIMEOUT, not all data processed.";
static const char *ng14 = "The timeout is probably due to the DATARDY bit never going high.";
static unsigned int ng15[] = {85U, 0U};
static unsigned int ng16[] = {98U, 0U};
static unsigned int ng17[] = {56U, 0U};
static unsigned int ng18[] = {169U, 0U};
static unsigned int ng19[] = {243U, 0U};
static unsigned int ng20[] = {44U, 0U};
static const char *ng21 = "%t: All vectors done.";
static const char *ng22 = "%t: FAIL, had %d errors during simulation.";
static const char *ng23 = "%t: PASS, no errors during simulation.";



static int sp_applydata(char *t1, char *t2)
{
    char t8[8];
    char t9[8];
    char t10[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    int t22;
    char *t23;
    unsigned int t24;
    int t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    int t29;
    int t30;
    unsigned int t31;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 848);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(81, ng0);

LAB5:    xsi_set_current_line(82, ng0);
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

LAB6:    xsi_set_current_line(83, ng0);
    t4 = (t1 + 6216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t8, t6, 8);
    t7 = (t1 + 4776);
    t11 = (t1 + 4776);
    t12 = (t11 + 72U);
    t13 = *((char **)t12);
    t14 = (t1 + 4776);
    t15 = (t14 + 64U);
    t16 = *((char **)t15);
    t17 = (t1 + 4936);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    xsi_vlog_generic_convert_array_indices(t9, t10, t13, t16, 1, 1, t19, 32, 1);
    t20 = (t9 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (!(t21));
    t23 = (t10 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (!(t24));
    t26 = (t22 && t25);
    if (t26 == 1)
        goto LAB7;

LAB8:    xsi_set_current_line(84, ng0);
    t4 = (t1 + 4936);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t11 = (t1 + 4936);
    xsi_vlogvar_assign_value(t11, t8, 0, 0, 32);
    xsi_set_current_line(85, ng0);
    t4 = (t1 + 4936);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_signed_equal(t8, 32, t6, 32, t7, 32);
    t11 = (t8 + 4);
    t21 = *((unsigned int *)t11);
    t24 = (~(t21));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t24);
    t31 = (t28 != 0);
    if (t31 > 0)
        goto LAB9;

LAB10:
LAB11:    xsi_set_current_line(86, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 5896);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t4 = (t1 + 6216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 3816);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 8);
    xsi_set_current_line(89, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 3976);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(90, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t1 + 4296);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 2);
    xsi_set_current_line(91, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 16U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB12;
    goto LAB1;

LAB7:    t27 = *((unsigned int *)t9);
    t28 = *((unsigned int *)t10);
    t29 = (t27 - t28);
    t30 = (t29 + 1);
    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t10), t30);
    goto LAB8;

LAB9:    xsi_set_current_line(85, ng0);
    t12 = ((char*)((ng3)));
    t13 = (t1 + 4936);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    goto LAB11;

LAB12:    xsi_set_current_line(92, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 3976);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(93, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 5896);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(94, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB13;
    goto LAB1;

LAB13:    goto LAB4;

}

static int sp_getserialdata(char *t1, char *t2)
{
    char t8[8];
    char t19[8];
    char t39[16];
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
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    int t21;
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
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1280);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(101, ng0);

LAB5:    xsi_set_current_line(102, ng0);
    t5 = ((char*)((ng3)));
    t6 = (t1 + 5576);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);
    xsi_set_current_line(103, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 5416);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(104, ng0);

LAB6:    t4 = (t1 + 5416);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng5)));
    memset(t8, 0, 8);
    xsi_vlog_signed_not_equal(t8, 32, t6, 32, t7, 32);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(111, ng0);
    t4 = (t1 + 5576);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 6376);
    t9 = (t7 + 56U);
    t15 = *((char **)t9);
    memset(t8, 0, 8);
    t16 = (t6 + 4);
    t17 = (t15 + 4);
    t10 = *((unsigned int *)t6);
    t11 = *((unsigned int *)t15);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t16);
    t14 = *((unsigned int *)t17);
    t22 = (t13 ^ t14);
    t23 = (t12 | t22);
    t24 = *((unsigned int *)t16);
    t25 = *((unsigned int *)t17);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t28 = (t23 & t27);
    if (t28 != 0)
        goto LAB14;

LAB13:    if (t26 != 0)
        goto LAB15;

LAB16:    t20 = (t8 + 4);
    t29 = *((unsigned int *)t20);
    t30 = (~(t29));
    t31 = *((unsigned int *)t8);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB17;

LAB18:    xsi_set_current_line(114, ng0);

LAB21:    xsi_set_current_line(115, ng0);
    t4 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 6376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t1 + 1280);
    xsi_vlogfile_write(1, 0, 0, ng7, 3, t9, (char)118, t39, 64, (char)118, t7, 8);

LAB19:
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB7:    xsi_set_current_line(104, ng0);

LAB9:    xsi_set_current_line(105, ng0);
    t15 = (t1 + 5576);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = ((char*)((ng1)));
    memset(t19, 0, 8);
    xsi_vlog_unsigned_lshift(t19, 8, t17, 8, t18, 32);
    t20 = (t1 + 5576);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 8);
    xsi_set_current_line(106, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 0U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(107, ng0);
    t4 = (t1 + 2936U);
    t5 = *((char **)t4);
    t4 = (t1 + 5576);
    t6 = (t1 + 5576);
    t7 = (t6 + 72U);
    t9 = *((char **)t7);
    t15 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t8, t9, 2, t15, 32, 1);
    t16 = (t8 + 4);
    t10 = *((unsigned int *)t16);
    t21 = (!(t10));
    if (t21 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(108, ng0);
    t4 = (t1 + 5416);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t9 = (t1 + 5416);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    goto LAB6;

LAB11:    xsi_vlogvar_assign_value(t4, t5, 0, *((unsigned int *)t8), 1);
    goto LAB12;

LAB14:    *((unsigned int *)t8) = 1;
    goto LAB16;

LAB15:    t18 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB16;

LAB17:    xsi_set_current_line(111, ng0);

LAB20:    xsi_set_current_line(112, ng0);
    t34 = (t1 + 5256);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = ((char*)((ng1)));
    memset(t19, 0, 8);
    xsi_vlog_signed_add(t19, 32, t36, 32, t37, 32);
    t38 = (t1 + 5256);
    xsi_vlogvar_assign_value(t38, t19, 0, 0, 32);
    xsi_set_current_line(113, ng0);
    t4 = xsi_vlog_time(t39, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 6376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t1 + 5576);
    t15 = (t9 + 56U);
    t16 = *((char **)t15);
    t17 = (t1 + 1280);
    xsi_vlogfile_write(1, 0, 0, ng6, 4, t17, (char)118, t39, 64, (char)118, t7, 8, (char)118, t16, 8);
    goto LAB19;

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

LAB2:    t4 = (t1 + 1712);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(123, ng0);

LAB5:    xsi_set_current_line(124, ng0);
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

LAB6:    xsi_set_current_line(125, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t1 + 4296);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 2);
    xsi_set_current_line(126, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 4136);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(127, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 16U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(128, ng0);
    t4 = (t1 + 2776U);
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
    t7 = (t1 + 6536);
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

LAB13:    xsi_set_current_line(131, ng0);

LAB16:    xsi_set_current_line(132, ng0);
    t4 = xsi_vlog_time(t45, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 1712);
    xsi_vlogfile_write(1, 0, 0, ng10, 2, t5, (char)118, t45, 64);

LAB14:    xsi_set_current_line(134, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 4136);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB4;

LAB9:    *((unsigned int *)t17) = 1;
    goto LAB11;

LAB10:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB11;

LAB12:    xsi_set_current_line(128, ng0);

LAB15:    xsi_set_current_line(129, ng0);
    t39 = (t1 + 5256);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = ((char*)((ng1)));
    memset(t43, 0, 8);
    xsi_vlog_signed_add(t43, 32, t41, 32, t42, 32);
    t44 = (t1 + 5256);
    xsi_vlogvar_assign_value(t44, t43, 0, 0, 32);
    xsi_set_current_line(130, ng0);
    t4 = xsi_vlog_time(t45, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 6536);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t15 = (t1 + 2776U);
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
    t19 = (t1 + 1712);
    xsi_vlogfile_write(1, 0, 0, ng9, 4, t19, (char)118, t45, 64, (char)118, t7, 1, (char)118, t8, 1);
    goto LAB14;

}

static int sp_readdata(char *t1, char *t2)
{
    char t8[8];
    char t11[8];
    char t36[16];
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

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 2144);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(140, ng0);

LAB5:    xsi_set_current_line(142, ng0);
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

LAB6:    xsi_set_current_line(143, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 4136);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(144, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t1 + 4296);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 2);
    xsi_set_current_line(145, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 16U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(146, ng0);

LAB8:    t4 = (t1 + 2776U);
    t5 = *((char **)t4);
    t4 = (t1 + 2736U);
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

LAB14:    xsi_set_current_line(149, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 4136);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(150, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 4296);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 2);
    xsi_set_current_line(151, ng0);
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

LAB13:    xsi_set_current_line(146, ng0);

LAB15:    xsi_set_current_line(147, ng0);
    t33 = (t2 + 88U);
    t34 = *((char **)t33);
    t35 = (t34 + 32U);
    xsi_wp_set_status(t35, 1);
    *((char **)t3) = &&LAB16;
    goto LAB1;

LAB16:    goto LAB8;

LAB17:    xsi_set_current_line(153, ng0);
    t4 = (t1 + 6696);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 2776U);
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
        goto LAB19;

LAB18:    if (t23 != 0)
        goto LAB20;

LAB21:    t13 = (t8 + 4);
    t28 = *((unsigned int *)t13);
    t29 = (~(t28));
    t30 = *((unsigned int *)t8);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB22;

LAB23:    xsi_set_current_line(156, ng0);

LAB26:    xsi_set_current_line(157, ng0);
    t4 = xsi_vlog_time(t36, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 6696);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t1 + 2144);
    xsi_vlogfile_write(1, 0, 0, ng12, 3, t9, (char)118, t36, 64, (char)118, t7, 8);

LAB24:    xsi_set_current_line(159, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t1 + 4296);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 2);
    xsi_set_current_line(160, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 4136);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(161, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 64U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB27;
    goto LAB1;

LAB19:    *((unsigned int *)t8) = 1;
    goto LAB21;

LAB20:    t12 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB21;

LAB22:    xsi_set_current_line(153, ng0);

LAB25:    xsi_set_current_line(154, ng0);
    t26 = (t1 + 5256);
    t27 = (t26 + 56U);
    t33 = *((char **)t27);
    t34 = ((char*)((ng1)));
    memset(t11, 0, 8);
    xsi_vlog_signed_add(t11, 32, t33, 32, t34, 32);
    t35 = (t1 + 5256);
    xsi_vlogvar_assign_value(t35, t11, 0, 0, 32);
    xsi_set_current_line(155, ng0);
    t4 = xsi_vlog_time(t36, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 6696);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t1 + 2776U);
    t10 = *((char **)t9);
    t9 = (t1 + 2144);
    xsi_vlogfile_write(1, 0, 0, ng11, 4, t9, (char)118, t36, 64, (char)118, t7, 8, (char)118, t10, 8);
    goto LAB24;

LAB27:    goto LAB4;

}

static void Always_56_0(char *t0)
{
    char t4[8];
    char t5[8];
    char t20[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;

LAB0:    t1 = (t0 + 7616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 8928);
    *((int *)t2) = 1;
    t3 = (t0 + 7648);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(56, ng0);

LAB5:    xsi_set_current_line(57, ng0);
    t6 = (t0 + 4616);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memset(t5, 0, 8);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t9) != 0)
        goto LAB8;

LAB9:    t16 = (t5 + 4);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t16);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB10;

LAB11:    t39 = *((unsigned int *)t5);
    t40 = (~(t39));
    t41 = *((unsigned int *)t16);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t16) > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t5) > 0)
        goto LAB16;

LAB17:    memcpy(t4, t44, 8);

LAB18:    t43 = (t0 + 4456);
    xsi_vlogvar_assign_value(t43, t4, 0, 0, 1);
    goto LAB2;

LAB6:    *((unsigned int *)t5) = 1;
    goto LAB9;

LAB8:    t15 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB9;

LAB10:    t21 = (t0 + 2936U);
    t22 = *((char **)t21);
    memset(t20, 0, 8);
    t21 = (t22 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t22);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB22;

LAB20:    if (*((unsigned int *)t21) == 0)
        goto LAB19;

LAB21:    t28 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t28) = 1;

LAB22:    t29 = (t20 + 4);
    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = (~(t31));
    *((unsigned int *)t20) = t32;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t30) != 0)
        goto LAB24;

LAB23:    t37 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t37 & 1U);
    t38 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t38 & 1U);
    goto LAB11;

LAB12:    t43 = (t0 + 2936U);
    t44 = *((char **)t43);
    goto LAB13;

LAB14:    xsi_vlog_unsigned_bit_combine(t4, 1, t20, 1, t44, 1);
    goto LAB18;

LAB16:    memcpy(t4, t20, 8);
    goto LAB18;

LAB19:    *((unsigned int *)t20) = 1;
    goto LAB22;

LAB24:    t33 = *((unsigned int *)t20);
    t34 = *((unsigned int *)t30);
    *((unsigned int *)t20) = (t33 | t34);
    t35 = *((unsigned int *)t29);
    t36 = *((unsigned int *)t30);
    *((unsigned int *)t29) = (t35 | t36);
    goto LAB23;

}

static void Initial_71_1(char *t0)
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

LAB0:    t1 = (t0 + 7864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);

LAB4:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 7672);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(74, ng0);

LAB6:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 7672);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(74, ng0);
    t5 = (t0 + 3496);
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
    t25 = (t0 + 3496);
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

static void Initial_167_2(char *t0)
{
    char t6[8];
    char t13[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;

LAB0:    t1 = (t0 + 8112U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(167, ng0);

LAB4:    xsi_set_current_line(169, ng0);
    t2 = (t0 + 7920);
    xsi_process_wait(t2, 1000000000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(171, ng0);
    t2 = (t0 + 5736);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_equal(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB1;

LAB6:    xsi_set_current_line(171, ng0);

LAB9:    xsi_set_current_line(172, ng0);
    t14 = xsi_vlog_time(t13, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng13, 2, t0, (char)118, t13, 64);
    xsi_set_current_line(173, ng0);
    xsi_vlogfile_write(1, 0, 0, ng14, 1, t0);
    goto LAB8;

}

static void Initial_179_3(char *t0)
{
    char t20[8];
    char t31[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;

LAB0:    t1 = (t0 + 8360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(179, ng0);

LAB4:    xsi_set_current_line(181, ng0);
    t2 = (t0 + 8168);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(182, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3656);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(183, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3816);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(184, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3976);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(185, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4136);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(186, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4296);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(187, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4456);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(188, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4936);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(189, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5096);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(190, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5896);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(191, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5256);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(192, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4616);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(193, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5736);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(196, ng0);
    t2 = (t0 + 8168);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(197, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3656);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(199, ng0);
    t2 = (t0 + 9120);
    *((int *)t2) = 1;
    t3 = (t0 + 8392);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(200, ng0);
    t2 = (t0 + 9136);
    *((int *)t2) = 1;
    t3 = (t0 + 8392);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(201, ng0);
    t2 = (t0 + 9152);
    *((int *)t2) = 1;
    t3 = (t0 + 8392);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(202, ng0);
    t2 = (t0 + 9168);
    *((int *)t2) = 1;
    t3 = (t0 + 8392);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(203, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 8168);
    t4 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 6216);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB13:    t7 = (t0 + 8264);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB15:    if (t15 != 0)
        goto LAB16;

LAB11:    t8 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t8);

LAB12:    t16 = (t0 + 8264);
    t17 = *((char **)t16);
    t16 = (t0 + 848);
    t18 = (t0 + 8168);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(204, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 8168);
    t4 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 6216);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB19:    t7 = (t0 + 8264);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB21:    if (t15 != 0)
        goto LAB22;

LAB17:    t8 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t8);

LAB18:    t16 = (t0 + 8264);
    t17 = *((char **)t16);
    t16 = (t0 + 848);
    t18 = (t0 + 8168);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(205, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 8168);
    t4 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 6216);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB25:    t7 = (t0 + 8264);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB27:    if (t15 != 0)
        goto LAB28;

LAB23:    t8 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t8);

LAB24:    t16 = (t0 + 8264);
    t17 = *((char **)t16);
    t16 = (t0 + 848);
    t18 = (t0 + 8168);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(206, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 8168);
    t4 = (t0 + 2144);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 6696);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB31:    t7 = (t0 + 8264);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB33:    if (t15 != 0)
        goto LAB34;

LAB29:    t8 = (t0 + 2144);
    xsi_vlog_subprogram_popinvocation(t8);

LAB30:    t16 = (t0 + 8264);
    t17 = *((char **)t16);
    t16 = (t0 + 2144);
    t18 = (t0 + 8168);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(207, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 8168);
    t4 = (t0 + 2144);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 6696);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB37:    t7 = (t0 + 8264);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB39:    if (t15 != 0)
        goto LAB40;

LAB35:    t8 = (t0 + 2144);
    xsi_vlog_subprogram_popinvocation(t8);

LAB36:    t16 = (t0 + 8264);
    t17 = *((char **)t16);
    t16 = (t0 + 2144);
    t18 = (t0 + 8168);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(208, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 8168);
    t4 = (t0 + 2144);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 6696);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB43:    t7 = (t0 + 8264);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB45:    if (t15 != 0)
        goto LAB46;

LAB41:    t8 = (t0 + 2144);
    xsi_vlog_subprogram_popinvocation(t8);

LAB42:    t16 = (t0 + 8264);
    t17 = *((char **)t16);
    t16 = (t0 + 2144);
    t18 = (t0 + 8168);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(209, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8168);
    t4 = (t0 + 1712);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 6536);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 1);

LAB49:    t7 = (t0 + 8264);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB51:    if (t15 != 0)
        goto LAB52;

LAB47:    t8 = (t0 + 1712);
    xsi_vlog_subprogram_popinvocation(t8);

LAB48:    t16 = (t0 + 8264);
    t17 = *((char **)t16);
    t16 = (t0 + 1712);
    t18 = (t0 + 8168);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(211, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4616);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(212, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 8168);
    t4 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 6216);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB55:    t7 = (t0 + 8264);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB57:    if (t15 != 0)
        goto LAB58;

LAB53:    t8 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t8);

LAB54:    t16 = (t0 + 8264);
    t17 = *((char **)t16);
    t16 = (t0 + 848);
    t18 = (t0 + 8168);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(213, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 8168);
    t4 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 6216);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB61:    t7 = (t0 + 8264);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB63:    if (t15 != 0)
        goto LAB64;

LAB59:    t8 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t8);

LAB60:    t16 = (t0 + 8264);
    t17 = *((char **)t16);
    t16 = (t0 + 848);
    t18 = (t0 + 8168);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(214, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 8168);
    t4 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 6216);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 8);

LAB67:    t7 = (t0 + 8264);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB69:    if (t15 != 0)
        goto LAB70;

LAB65:    t8 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t8);

LAB66:    t16 = (t0 + 8264);
    t17 = *((char **)t16);
    t16 = (t0 + 848);
    t18 = (t0 + 8168);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    xsi_set_current_line(215, ng0);
    t2 = ((char*)((ng18)));
    memset(t20, 0, 8);
    t3 = (t20 + 4);
    t4 = (t2 + 4);
    t21 = *((unsigned int *)t2);
    t22 = (~(t21));
    *((unsigned int *)t20) = t22;
    *((unsigned int *)t3) = 0;
    if (*((unsigned int *)t4) != 0)
        goto LAB72;

LAB71:    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 255U);
    t28 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t28 & 255U);
    t5 = (t0 + 8168);
    t6 = (t0 + 2144);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 6696);
    xsi_vlogvar_assign_value(t8, t20, 0, 0, 8);

LAB75:    t9 = (t0 + 8264);
    t10 = *((char **)t9);
    t11 = (t10 + 80U);
    t12 = *((char **)t11);
    t13 = (t12 + 272U);
    t14 = *((char **)t13);
    t16 = (t14 + 0U);
    t17 = *((char **)t16);
    t15 = ((int  (*)(char *, char *))t17)(t0, t10);

LAB77:    if (t15 != 0)
        goto LAB78;

LAB73:    t10 = (t0 + 2144);
    xsi_vlog_subprogram_popinvocation(t10);

LAB74:    t18 = (t0 + 8264);
    t19 = *((char **)t18);
    t18 = (t0 + 2144);
    t29 = (t0 + 8168);
    t30 = 0;
    xsi_delete_subprogram_invocation(t18, t19, t0, t29, t30);
    xsi_set_current_line(216, ng0);
    t2 = ((char*)((ng19)));
    memset(t20, 0, 8);
    t3 = (t20 + 4);
    t4 = (t2 + 4);
    t21 = *((unsigned int *)t2);
    t22 = (~(t21));
    *((unsigned int *)t20) = t22;
    *((unsigned int *)t3) = 0;
    if (*((unsigned int *)t4) != 0)
        goto LAB80;

LAB79:    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 255U);
    t28 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t28 & 255U);
    t5 = (t0 + 8168);
    t6 = (t0 + 2144);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 6696);
    xsi_vlogvar_assign_value(t8, t20, 0, 0, 8);

LAB83:    t9 = (t0 + 8264);
    t10 = *((char **)t9);
    t11 = (t10 + 80U);
    t12 = *((char **)t11);
    t13 = (t12 + 272U);
    t14 = *((char **)t13);
    t16 = (t14 + 0U);
    t17 = *((char **)t16);
    t15 = ((int  (*)(char *, char *))t17)(t0, t10);

LAB85:    if (t15 != 0)
        goto LAB86;

LAB81:    t10 = (t0 + 2144);
    xsi_vlog_subprogram_popinvocation(t10);

LAB82:    t18 = (t0 + 8264);
    t19 = *((char **)t18);
    t18 = (t0 + 2144);
    t29 = (t0 + 8168);
    t30 = 0;
    xsi_delete_subprogram_invocation(t18, t19, t0, t29, t30);
    xsi_set_current_line(217, ng0);
    t2 = ((char*)((ng20)));
    memset(t20, 0, 8);
    t3 = (t20 + 4);
    t4 = (t2 + 4);
    t21 = *((unsigned int *)t2);
    t22 = (~(t21));
    *((unsigned int *)t20) = t22;
    *((unsigned int *)t3) = 0;
    if (*((unsigned int *)t4) != 0)
        goto LAB88;

LAB87:    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 255U);
    t28 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t28 & 255U);
    t5 = (t0 + 8168);
    t6 = (t0 + 2144);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 6696);
    xsi_vlogvar_assign_value(t8, t20, 0, 0, 8);

LAB91:    t9 = (t0 + 8264);
    t10 = *((char **)t9);
    t11 = (t10 + 80U);
    t12 = *((char **)t11);
    t13 = (t12 + 272U);
    t14 = *((char **)t13);
    t16 = (t14 + 0U);
    t17 = *((char **)t16);
    t15 = ((int  (*)(char *, char *))t17)(t0, t10);

LAB93:    if (t15 != 0)
        goto LAB94;

LAB89:    t10 = (t0 + 2144);
    xsi_vlog_subprogram_popinvocation(t10);

LAB90:    t18 = (t0 + 8264);
    t19 = *((char **)t18);
    t18 = (t0 + 2144);
    t29 = (t0 + 8168);
    t30 = 0;
    xsi_delete_subprogram_invocation(t18, t19, t0, t29, t30);
    xsi_set_current_line(218, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5736);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(219, ng0);
    t2 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng21, 2, t0, (char)118, t31, 64);
    xsi_set_current_line(220, ng0);
    t2 = (t0 + 5256);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t20, 0, 8);
    xsi_vlog_signed_not_equal(t20, 32, t4, 32, t5, 32);
    t6 = (t20 + 4);
    t21 = *((unsigned int *)t6);
    t22 = (~(t21));
    t23 = *((unsigned int *)t20);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB95;

LAB96:    xsi_set_current_line(223, ng0);
    t2 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng23, 2, t0, (char)118, t31, 64);

LAB97:    goto LAB1;

LAB14:;
LAB16:    t7 = (t0 + 8360U);
    *((char **)t7) = &&LAB13;
    goto LAB1;

LAB20:;
LAB22:    t7 = (t0 + 8360U);
    *((char **)t7) = &&LAB19;
    goto LAB1;

LAB26:;
LAB28:    t7 = (t0 + 8360U);
    *((char **)t7) = &&LAB25;
    goto LAB1;

LAB32:;
LAB34:    t7 = (t0 + 8360U);
    *((char **)t7) = &&LAB31;
    goto LAB1;

LAB38:;
LAB40:    t7 = (t0 + 8360U);
    *((char **)t7) = &&LAB37;
    goto LAB1;

LAB44:;
LAB46:    t7 = (t0 + 8360U);
    *((char **)t7) = &&LAB43;
    goto LAB1;

LAB50:;
LAB52:    t7 = (t0 + 8360U);
    *((char **)t7) = &&LAB49;
    goto LAB1;

LAB56:;
LAB58:    t7 = (t0 + 8360U);
    *((char **)t7) = &&LAB55;
    goto LAB1;

LAB62:;
LAB64:    t7 = (t0 + 8360U);
    *((char **)t7) = &&LAB61;
    goto LAB1;

LAB68:;
LAB70:    t7 = (t0 + 8360U);
    *((char **)t7) = &&LAB67;
    goto LAB1;

LAB72:    t23 = *((unsigned int *)t20);
    t24 = *((unsigned int *)t4);
    *((unsigned int *)t20) = (t23 | t24);
    t25 = *((unsigned int *)t3);
    t26 = *((unsigned int *)t4);
    *((unsigned int *)t3) = (t25 | t26);
    goto LAB71;

LAB76:;
LAB78:    t9 = (t0 + 8360U);
    *((char **)t9) = &&LAB75;
    goto LAB1;

LAB80:    t23 = *((unsigned int *)t20);
    t24 = *((unsigned int *)t4);
    *((unsigned int *)t20) = (t23 | t24);
    t25 = *((unsigned int *)t3);
    t26 = *((unsigned int *)t4);
    *((unsigned int *)t3) = (t25 | t26);
    goto LAB79;

LAB84:;
LAB86:    t9 = (t0 + 8360U);
    *((char **)t9) = &&LAB83;
    goto LAB1;

LAB88:    t23 = *((unsigned int *)t20);
    t24 = *((unsigned int *)t4);
    *((unsigned int *)t20) = (t23 | t24);
    t25 = *((unsigned int *)t3);
    t26 = *((unsigned int *)t4);
    *((unsigned int *)t3) = (t25 | t26);
    goto LAB87;

LAB92:;
LAB94:    t9 = (t0 + 8360U);
    *((char **)t9) = &&LAB91;
    goto LAB1;

LAB95:    xsi_set_current_line(221, ng0);
    t7 = xsi_vlog_time(t31, 1000.0000000000000, 1000.0000000000000);
    t8 = (t0 + 5256);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    xsi_vlogfile_write(1, 0, 0, ng22, 3, t0, (char)118, t31, 64, (char)119, t10, 32);
    goto LAB97;

}

static void Always_230_4(char *t0)
{
    char t10[8];
    char t20[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    int t31;

LAB0:    t1 = (t0 + 8608U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(230, ng0);
    t2 = (t0 + 9184);
    *((int *)t2) = 1;
    t3 = (t0 + 8640);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(230, ng0);

LAB5:    xsi_set_current_line(232, ng0);

LAB6:    t4 = (t0 + 4936);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 5096);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t10, 0, 8);
    xsi_vlog_signed_not_equal(t10, 32, t6, 32, t9, 32);
    t11 = (t10 + 4);
    t12 = *((unsigned int *)t11);
    t13 = (~(t12));
    t14 = *((unsigned int *)t10);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB7;

LAB8:    goto LAB2;

LAB7:    xsi_set_current_line(232, ng0);

LAB9:    xsi_set_current_line(233, ng0);
    t17 = (t0 + 4776);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = (t0 + 4776);
    t22 = (t21 + 72U);
    t23 = *((char **)t22);
    t24 = (t0 + 4776);
    t25 = (t24 + 64U);
    t26 = *((char **)t25);
    t27 = (t0 + 5096);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    xsi_vlog_generic_get_array_select_value(t20, 32, t19, t23, t26, 1, 1, t29, 32, 1);
    t30 = (t0 + 6056);
    xsi_vlogvar_assign_value(t30, t20, 0, 0, 8);
    xsi_set_current_line(234, ng0);
    t2 = (t0 + 5096);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t10, 0, 8);
    xsi_vlog_signed_add(t10, 32, t4, 32, t5, 32);
    t6 = (t0 + 5096);
    xsi_vlogvar_assign_value(t6, t10, 0, 0, 32);
    xsi_set_current_line(235, ng0);
    t2 = (t0 + 5096);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t10, 0, 8);
    xsi_vlog_signed_equal(t10, 32, t4, 32, t5, 32);
    t6 = (t10 + 4);
    t12 = *((unsigned int *)t6);
    t13 = (~(t12));
    t14 = *((unsigned int *)t10);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(236, ng0);
    t2 = (t0 + 6056);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 8416);
    t6 = (t0 + 1280);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 6376);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 8);

LAB15:    t9 = (t0 + 8512);
    t11 = *((char **)t9);
    t17 = (t11 + 80U);
    t18 = *((char **)t17);
    t19 = (t18 + 272U);
    t21 = *((char **)t19);
    t22 = (t21 + 0U);
    t23 = *((char **)t22);
    t31 = ((int  (*)(char *, char *))t23)(t0, t11);

LAB17:    if (t31 != 0)
        goto LAB18;

LAB13:    t11 = (t0 + 1280);
    xsi_vlog_subprogram_popinvocation(t11);

LAB14:    t24 = (t0 + 8512);
    t25 = *((char **)t24);
    t24 = (t0 + 1280);
    t26 = (t0 + 8416);
    t27 = 0;
    xsi_delete_subprogram_invocation(t24, t25, t0, t26, t27);
    goto LAB6;

LAB10:    xsi_set_current_line(235, ng0);
    t7 = ((char*)((ng3)));
    t8 = (t0 + 5096);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB12;

LAB16:;
LAB18:    t9 = (t0 + 8608U);
    *((char **)t9) = &&LAB15;
    goto LAB1;

}


extern void work_m_00000000002197556236_3184742597_init()
{
	static char *pe[] = {(void *)Always_56_0,(void *)Initial_71_1,(void *)Initial_167_2,(void *)Initial_179_3,(void *)Always_230_4};
	static char *se[] = {(void *)sp_applydata,(void *)sp_getserialdata,(void *)sp_rddatardy,(void *)sp_readdata};
	xsi_register_didat("work_m_00000000002197556236_3184742597", "isim/tb_spi_bonus_isim_par.exe.sim/work/m_00000000002197556236_3184742597.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
