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
static const char *ng0 = "C:/Users/James/Desktop/iDriveSync/IDrive-Sync/DSD LAB/lab8_uart_tx/uart_tx.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {1023U, 0U};
static int ng4[] = {0, 0};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {10U, 0U};
static unsigned int ng8[] = {2U, 0U};



static void Cont_95_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;

LAB0:    t1 = (t0 + 7144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2304U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    xsi_vlogtype_concat(t3, 10, 10, 3U, t4, 1, t5, 8, t2, 1);
    t6 = (t0 + 9920);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memset(t10, 0, 8);
    t11 = 1023U;
    t12 = t11;
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t11 = (t11 & t14);
    t15 = *((unsigned int *)t13);
    t12 = (t12 & t15);
    t16 = (t10 + 4);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t17 | t11);
    t18 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t18 | t12);
    xsi_driver_vfirst_trans(t6, 0, 9);
    t19 = (t0 + 9696);
    *((int *)t19) = 1;

LAB1:    return;
}

static void Cont_96_1(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 7392U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 3824);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t5, 0, 8);
    t6 = (t5 + 4);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    t10 = (t9 & 1);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t6) = t13;
    t14 = (t0 + 9984);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memset(t18, 0, 8);
    t19 = 1U;
    t20 = t19;
    t21 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t21);
    t20 = (t20 & t23);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t25 | t19);
    t26 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t26 | t20);
    xsi_driver_vfirst_trans(t14, 0, 0);
    t27 = (t0 + 9712);
    *((int *)t27) = 1;

LAB1:    return;
}

static void Always_98_2(char *t0)
{
    char t13[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;

LAB0:    t1 = (t0 + 7640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 9728);
    *((int *)t2) = 1;
    t3 = (t0 + 7672);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(98, ng0);

LAB5:    xsi_set_current_line(99, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(101, ng0);

LAB9:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 5424);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 4784);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB14;

LAB15:
LAB16:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(100, ng0);
    t11 = ((char*)((ng3)));
    t12 = (t0 + 3824);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 10, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(102, ng0);

LAB13:    xsi_set_current_line(104, ng0);
    t11 = (t0 + 3824);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memset(t14, 0, 8);
    t16 = (t14 + 4);
    t17 = (t15 + 4);
    t18 = *((unsigned int *)t15);
    t19 = (t18 >> 1);
    *((unsigned int *)t14) = t19;
    t20 = *((unsigned int *)t17);
    t21 = (t20 >> 1);
    *((unsigned int *)t16) = t21;
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 & 511U);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 & 511U);
    t24 = ((char*)((ng2)));
    xsi_vlogtype_concat(t13, 10, 10, 2U, t24, 1, t14, 9);
    t25 = (t0 + 3824);
    xsi_vlogvar_wait_assign_value(t25, t13, 0, 0, 10, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(107, ng0);
    t11 = (t0 + 2624U);
    t12 = *((char **)t11);
    t11 = (t0 + 3824);
    xsi_vlogvar_wait_assign_value(t11, t12, 0, 0, 10, 0LL);
    goto LAB16;

}

static void Always_113_3(char *t0)
{
    char t13[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;

LAB0:    t1 = (t0 + 7888U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 9744);
    *((int *)t2) = 1;
    t3 = (t0 + 7920);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(113, ng0);

LAB5:    xsi_set_current_line(114, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(117, ng0);

LAB10:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 2944U);
    t3 = *((char **)t2);
    t2 = (t0 + 3664);
    t4 = (t0 + 3664);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t13, t11, 2, t12, 32, 1);
    t14 = (t13 + 4);
    t6 = *((unsigned int *)t14);
    t15 = (!(t6));
    if (t15 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 5264);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB13;

LAB14:
LAB15:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 4624);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB18;

LAB19:
LAB20:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(114, ng0);

LAB9:    xsi_set_current_line(115, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 3664);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 8);
    goto LAB8;

LAB11:    xsi_vlogvar_assign_value(t2, t3, 0, *((unsigned int *)t13), 1);
    goto LAB12;

LAB13:    xsi_set_current_line(120, ng0);
    t11 = ((char*)((ng5)));
    t12 = (t0 + 3664);
    t14 = (t0 + 3664);
    t16 = (t14 + 72U);
    t17 = *((char **)t16);
    t18 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t13, t17, 2, t18, 32, 1);
    t19 = (t13 + 4);
    t20 = *((unsigned int *)t19);
    t15 = (!(t20));
    if (t15 == 1)
        goto LAB16;

LAB17:    goto LAB15;

LAB16:    xsi_vlogvar_assign_value(t12, t11, 0, *((unsigned int *)t13), 1);
    goto LAB17;

LAB18:    xsi_set_current_line(122, ng0);
    t11 = ((char*)((ng4)));
    t12 = (t0 + 3664);
    t14 = (t0 + 3664);
    t16 = (t14 + 72U);
    t17 = *((char **)t16);
    t18 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t13, t17, 2, t18, 32, 1);
    t19 = (t13 + 4);
    t20 = *((unsigned int *)t19);
    t15 = (!(t20));
    if (t15 == 1)
        goto LAB21;

LAB22:    goto LAB20;

LAB21:    xsi_vlogvar_assign_value(t12, t11, 0, *((unsigned int *)t13), 1);
    goto LAB22;

}

static void Always_127_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;

LAB0:    t1 = (t0 + 8136U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 9760);
    *((int *)t2) = 1;
    t3 = (t0 + 8168);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(127, ng0);

LAB5:    xsi_set_current_line(128, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 3984);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4304);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4624);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 2144U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:
LAB13:    goto LAB2;

LAB7:    xsi_set_current_line(131, ng0);

LAB14:    xsi_set_current_line(132, ng0);
    t4 = (t0 + 1504U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB15;

LAB16:
LAB17:    goto LAB13;

LAB9:    xsi_set_current_line(135, ng0);

LAB18:    xsi_set_current_line(136, ng0);
    t4 = (t0 + 1504U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB19;

LAB20:
LAB21:    goto LAB13;

LAB11:    xsi_set_current_line(139, ng0);

LAB22:    xsi_set_current_line(140, ng0);
    t4 = (t0 + 1504U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB23;

LAB24:
LAB25:    goto LAB13;

LAB15:    xsi_set_current_line(133, ng0);
    t12 = ((char*)((ng5)));
    t13 = (t0 + 3984);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 1);
    goto LAB17;

LAB19:    xsi_set_current_line(137, ng0);
    t12 = ((char*)((ng5)));
    t13 = (t0 + 4304);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 1);
    goto LAB21;

LAB23:    xsi_set_current_line(141, ng0);
    t12 = ((char*)((ng5)));
    t13 = (t0 + 4624);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 1);
    goto LAB25;

}

static void Always_147_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 8384U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 9776);
    *((int *)t2) = 1;
    t3 = (t0 + 8416);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(147, ng0);

LAB5:    xsi_set_current_line(148, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 4144);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(149, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3504);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(150, ng0);
    t2 = (t0 + 2144U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:
LAB11:    goto LAB2;

LAB7:    xsi_set_current_line(151, ng0);

LAB12:    xsi_set_current_line(152, ng0);
    t4 = (t0 + 1664U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB13;

LAB14:
LAB15:    xsi_set_current_line(154, ng0);
    t2 = (t0 + 2464U);
    t4 = *((char **)t2);
    t2 = (t0 + 3504);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    goto LAB11;

LAB9:    xsi_set_current_line(156, ng0);

LAB16:    xsi_set_current_line(157, ng0);
    t4 = (t0 + 1664U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB17;

LAB18:
LAB19:    goto LAB11;

LAB13:    xsi_set_current_line(153, ng0);
    t12 = ((char*)((ng5)));
    t13 = (t0 + 4144);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 1);
    goto LAB15;

LAB17:    xsi_set_current_line(158, ng0);
    t12 = (t0 + 3664);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t0 + 3504);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 8);
    goto LAB19;

}

static void Always_164_6(char *t0)
{
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;

LAB0:    t1 = (t0 + 8632U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(164, ng0);
    t2 = (t0 + 9792);
    *((int *)t2) = 1;
    t3 = (t0 + 8664);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(164, ng0);

LAB5:    xsi_set_current_line(165, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(167, ng0);

LAB9:    xsi_set_current_line(168, ng0);
    t2 = (t0 + 5584);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(166, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 5744);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(169, ng0);
    t11 = (t0 + 5744);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng5)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 32, t13, 4, t14, 32);
    t16 = (t0 + 5744);
    xsi_vlogvar_wait_assign_value(t16, t15, 0, 0, 4, 0LL);
    goto LAB12;

}

static void Always_174_7(char *t0)
{
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;

LAB0:    t1 = (t0 + 8880U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(174, ng0);
    t2 = (t0 + 9808);
    *((int *)t2) = 1;
    t3 = (t0 + 8912);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(174, ng0);

LAB5:    xsi_set_current_line(175, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(178, ng0);

LAB10:    xsi_set_current_line(179, ng0);
    t2 = (t0 + 5104);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:
LAB13:    xsi_set_current_line(181, ng0);
    t2 = (t0 + 5264);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB14;

LAB15:
LAB16:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(175, ng0);

LAB9:    xsi_set_current_line(176, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 5904);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    goto LAB8;

LAB11:    xsi_set_current_line(180, ng0);
    t11 = (t0 + 5904);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng5)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 32, t13, 4, t14, 32);
    t16 = (t0 + 5904);
    xsi_vlogvar_wait_assign_value(t16, t15, 0, 0, 4, 0LL);
    goto LAB13;

LAB14:    xsi_set_current_line(182, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 5904);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    goto LAB16;

}

static void Always_187_8(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 9128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(187, ng0);
    t2 = (t0 + 9824);
    *((int *)t2) = 1;
    t3 = (t0 + 9160);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(187, ng0);

LAB5:    xsi_set_current_line(188, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(191, ng0);
    t2 = (t0 + 6064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6224);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 2, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(189, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 6224);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 2, 0LL);
    goto LAB8;

}

static void Always_195_9(char *t0)
{
    char t9[8];
    char t34[8];
    char t43[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
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
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    char *t81;

LAB0:    t1 = (t0 + 9376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(195, ng0);
    t2 = (t0 + 9840);
    *((int *)t2) = 1;
    t3 = (t0 + 9408);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(195, ng0);

LAB5:    xsi_set_current_line(196, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 4464);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(196, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4784);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(197, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(197, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(197, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(198, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(198, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5424);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(199, ng0);
    t2 = (t0 + 6224);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6064);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 2);
    xsi_set_current_line(200, ng0);
    t2 = (t0 + 6224);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB6:    t5 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:
LAB13:    goto LAB2;

LAB7:    xsi_set_current_line(201, ng0);

LAB14:    xsi_set_current_line(202, ng0);
    t7 = ((char*)((ng5)));
    t8 = (t0 + 4944);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 1);
    xsi_set_current_line(203, ng0);
    t2 = (t0 + 3104U);
    t3 = *((char **)t2);
    memset(t9, 0, 8);
    t2 = (t3 + 4);
    t10 = *((unsigned int *)t2);
    t11 = (~(t10));
    t12 = *((unsigned int *)t3);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB18;

LAB16:    if (*((unsigned int *)t2) == 0)
        goto LAB15;

LAB17:    t5 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t5) = 1;

LAB18:    t7 = (t9 + 4);
    t8 = (t3 + 4);
    t15 = *((unsigned int *)t3);
    t16 = (~(t15));
    *((unsigned int *)t9) = t16;
    *((unsigned int *)t7) = 0;
    if (*((unsigned int *)t8) != 0)
        goto LAB20;

LAB19:    t21 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t21 & 1U);
    t22 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t22 & 1U);
    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB21;

LAB22:
LAB23:    goto LAB13;

LAB9:    xsi_set_current_line(210, ng0);

LAB25:    xsi_set_current_line(211, ng0);
    t3 = (t0 + 5904);
    t5 = (t3 + 56U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng7)));
    memset(t9, 0, 8);
    t23 = (t7 + 4);
    t29 = (t8 + 4);
    t10 = *((unsigned int *)t7);
    t11 = *((unsigned int *)t8);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t23);
    t14 = *((unsigned int *)t29);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t23);
    t18 = *((unsigned int *)t29);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB29;

LAB26:    if (t19 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t9) = 1;

LAB29:    t31 = (t9 + 4);
    t22 = *((unsigned int *)t31);
    t24 = (~(t22));
    t25 = *((unsigned int *)t9);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB30;

LAB31:    xsi_set_current_line(215, ng0);

LAB34:    xsi_set_current_line(216, ng0);
    t2 = (t0 + 2784U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t10 = *((unsigned int *)t2);
    t11 = (~(t10));
    t12 = *((unsigned int *)t3);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB35;

LAB36:
LAB37:    xsi_set_current_line(218, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB32:    goto LAB13;

LAB11:    xsi_set_current_line(221, ng0);

LAB38:    xsi_set_current_line(222, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 5584);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(223, ng0);
    t2 = (t0 + 2784U);
    t3 = *((char **)t2);
    memset(t9, 0, 8);
    t2 = (t3 + 4);
    t10 = *((unsigned int *)t2);
    t11 = (~(t10));
    t12 = *((unsigned int *)t3);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB42;

LAB40:    if (*((unsigned int *)t2) == 0)
        goto LAB39;

LAB41:    t5 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t5) = 1;

LAB42:    t7 = (t9 + 4);
    t8 = (t3 + 4);
    t15 = *((unsigned int *)t3);
    t16 = (~(t15));
    *((unsigned int *)t9) = t16;
    *((unsigned int *)t7) = 0;
    if (*((unsigned int *)t8) != 0)
        goto LAB44;

LAB43:    t21 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t21 & 1U);
    t22 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t22 & 1U);
    t23 = (t0 + 5744);
    t29 = (t23 + 56U);
    t30 = *((char **)t29);
    t31 = ((char*)((ng1)));
    memset(t34, 0, 8);
    t32 = (t30 + 4);
    t33 = (t31 + 4);
    t24 = *((unsigned int *)t30);
    t25 = *((unsigned int *)t31);
    t26 = (t24 ^ t25);
    t27 = *((unsigned int *)t32);
    t28 = *((unsigned int *)t33);
    t35 = (t27 ^ t28);
    t36 = (t26 | t35);
    t37 = *((unsigned int *)t32);
    t38 = *((unsigned int *)t33);
    t39 = (t37 | t38);
    t40 = (~(t39));
    t41 = (t36 & t40);
    if (t41 != 0)
        goto LAB48;

LAB45:    if (t39 != 0)
        goto LAB47;

LAB46:    *((unsigned int *)t34) = 1;

LAB48:    t44 = *((unsigned int *)t9);
    t45 = *((unsigned int *)t34);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t47 = (t9 + 4);
    t48 = (t34 + 4);
    t49 = (t43 + 4);
    t50 = *((unsigned int *)t47);
    t51 = *((unsigned int *)t48);
    t52 = (t50 | t51);
    *((unsigned int *)t49) = t52;
    t53 = *((unsigned int *)t49);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB49;

LAB50:
LAB51:    t74 = (t43 + 4);
    t75 = *((unsigned int *)t74);
    t76 = (~(t75));
    t77 = *((unsigned int *)t43);
    t78 = (t77 & t76);
    t79 = (t78 != 0);
    if (t79 > 0)
        goto LAB52;

LAB53:
LAB54:    goto LAB13;

LAB15:    *((unsigned int *)t9) = 1;
    goto LAB18;

LAB20:    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t9) = (t17 | t18);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t8);
    *((unsigned int *)t7) = (t19 | t20);
    goto LAB19;

LAB21:    xsi_set_current_line(203, ng0);

LAB24:    xsi_set_current_line(204, ng0);
    t29 = ((char*)((ng4)));
    t30 = (t0 + 4944);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 1);
    xsi_set_current_line(205, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4464);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(206, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4784);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(207, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB23;

LAB28:    t30 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB29;

LAB30:    xsi_set_current_line(211, ng0);

LAB33:    xsi_set_current_line(212, ng0);
    t32 = ((char*)((ng1)));
    t33 = (t0 + 6064);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 2);
    xsi_set_current_line(213, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB32;

LAB35:    xsi_set_current_line(217, ng0);
    t5 = ((char*)((ng8)));
    t7 = (t0 + 6064);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 2);
    goto LAB37;

LAB39:    *((unsigned int *)t9) = 1;
    goto LAB42;

LAB44:    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t9) = (t17 | t18);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t8);
    *((unsigned int *)t7) = (t19 | t20);
    goto LAB43;

LAB47:    t42 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB48;

LAB49:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t49);
    *((unsigned int *)t43) = (t55 | t56);
    t57 = (t9 + 4);
    t58 = (t34 + 4);
    t59 = *((unsigned int *)t9);
    t60 = (~(t59));
    t61 = *((unsigned int *)t57);
    t62 = (~(t61));
    t63 = *((unsigned int *)t34);
    t64 = (~(t63));
    t65 = *((unsigned int *)t58);
    t66 = (~(t65));
    t6 = (t60 & t62);
    t67 = (t64 & t66);
    t68 = (~(t6));
    t69 = (~(t67));
    t70 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t70 & t68);
    t71 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t71 & t69);
    t72 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t72 & t68);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    goto LAB51;

LAB52:    xsi_set_current_line(223, ng0);

LAB55:    xsi_set_current_line(224, ng0);
    t80 = ((char*)((ng5)));
    t81 = (t0 + 5104);
    xsi_vlogvar_assign_value(t81, t80, 0, 0, 1);
    xsi_set_current_line(225, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5424);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(226, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB54;

}


extern void work_m_00000000002286836824_2910696936_init()
{
	static char *pe[] = {(void *)Cont_95_0,(void *)Cont_96_1,(void *)Always_98_2,(void *)Always_113_3,(void *)Always_127_4,(void *)Always_147_5,(void *)Always_164_6,(void *)Always_174_7,(void *)Always_187_8,(void *)Always_195_9};
	xsi_register_didat("work_m_00000000002286836824_2910696936", "isim/uart_tx_isim_beh.exe.sim/work/m_00000000002286836824_2910696936.didat");
	xsi_register_executes(pe);
}
