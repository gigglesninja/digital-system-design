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
static const char *ng0 = "C:/Users/James/Desktop/iDriveSync/IDrive-Sync/DSD LAB/Lab5/tb_lab5dpath.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static const char *ng3 = "multadd_vectors.txt";
static const char *ng4 = "r";
static const char *ng5 = "%x %x %x %x";
static const char *ng6 = "FAIL: ORDY is not asserted\n";
static const char *ng7 = "%d PASS, a: %d, b: %d, c: %d, dout: %d\n";
static const char *ng8 = "%d FAIL, a: %d, b: %d, c: %d, y (actual): %d, dout (expected): %d\n";



static void Initial_52_0(char *t0)
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

LAB0:    t1 = (t0 + 4288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);

LAB4:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(55, ng0);

LAB6:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 4096);
    xsi_process_wait(t3, 25000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(55, ng0);
    t5 = (t0 + 1768);
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
    t25 = (t0 + 1768);
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

static void Initial_58_1(char *t0)
{
    char t5[8];
    char t19[8];
    char t23[8];
    char t27[8];
    char t31[8];
    char t35[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;

LAB0:    t1 = (t0 + 4536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);

LAB4:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 4344);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 10);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(67, ng0);
    *((int *)t5) = xsi_vlogfile_file_open_of_cname_ctype(ng3, ng4);
    t2 = (t5 + 4);
    *((int *)t2) = 0;
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t5, 0, 0, 32);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4344);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 4856);
    *((int *)t2) = 1;
    t3 = (t0 + 4568);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(73, ng0);

LAB8:    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2408);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t5) = xsi_vlogfile_fgets(t4, 800, *((unsigned int *)t8));
    t9 = (t5 + 4);
    *((int *)t9) = 0;
    t10 = (t5 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t5);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB9;

LAB10:    goto LAB1;

LAB9:    xsi_set_current_line(73, ng0);

LAB11:    xsi_set_current_line(74, ng0);
    t16 = (t0 + 2248);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t20 = (t0 + 2888);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    xsi_vlog_bit_copy(t19, 0, t22, 0, 32);
    t24 = (t0 + 3048);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_bit_copy(t23, 0, t26, 0, 32);
    t28 = (t0 + 3208);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    xsi_vlog_bit_copy(t27, 0, t30, 0, 32);
    t32 = (t0 + 3368);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    xsi_vlog_bit_copy(t31, 0, t34, 0, 32);
    *((int *)t35) = xsi_vlogfile_sscanf(t18, 800, ng5, 5, t0, (char)119, t19, 32, (char)119, t23, 32, (char)119, t27, 32, (char)119, t31, 32);
    t36 = (t35 + 4);
    *((int *)t36) = 0;
    t37 = (t0 + 2888);
    xsi_vlogvar_assign_value(t37, t19, 0, 0, 32);
    t38 = (t0 + 3048);
    xsi_vlogvar_assign_value(t38, t23, 0, 0, 32);
    t39 = (t0 + 3208);
    xsi_vlogvar_assign_value(t39, t27, 0, 0, 32);
    t40 = (t0 + 3368);
    xsi_vlogvar_assign_value(t40, t31, 0, 0, 32);
    t41 = (t0 + 2728);
    xsi_vlogvar_assign_value(t41, t35, 0, 0, 32);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t4, 32, t6, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 32);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2088);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 10);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 4872);
    *((int *)t2) = 1;
    t3 = (t0 + 4568);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2088);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 10);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 4888);
    *((int *)t2) = 1;
    t3 = (t0 + 4568);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2088);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 10);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 4904);
    *((int *)t2) = 1;
    t3 = (t0 + 4568);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 4920);
    *((int *)t2) = 1;
    t3 = (t0 + 4568);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t5, 0, 8);
    t4 = (t3 + 4);
    t6 = (t2 + 4);
    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t2);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t6);
    t42 = (t14 ^ t15);
    t43 = (t13 | t42);
    t44 = *((unsigned int *)t4);
    t45 = *((unsigned int *)t6);
    t46 = (t44 | t45);
    t47 = (~(t46));
    t48 = (t43 & t47);
    if (t48 != 0)
        goto LAB17;

LAB16:    if (t46 != 0)
        goto LAB18;

LAB19:    t8 = (t5 + 4);
    t49 = *((unsigned int *)t8);
    t50 = (~(t49));
    t51 = *((unsigned int *)t5);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(87, ng0);

LAB24:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 3368);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    memset(t5, 0, 8);
    t7 = (t3 + 4);
    t8 = (t6 + 4);
    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t6);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t7);
    t15 = *((unsigned int *)t8);
    t42 = (t14 ^ t15);
    t43 = (t13 | t42);
    t44 = *((unsigned int *)t7);
    t45 = *((unsigned int *)t8);
    t46 = (t44 | t45);
    t47 = (~(t46));
    t48 = (t43 & t47);
    if (t48 != 0)
        goto LAB28;

LAB25:    if (t46 != 0)
        goto LAB27;

LAB26:    *((unsigned int *)t5) = 1;

LAB28:    t10 = (t5 + 4);
    t49 = *((unsigned int *)t10);
    t50 = (~(t49));
    t51 = *((unsigned int *)t5);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB29;

LAB30:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2888);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t0 + 3048);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    t17 = (t0 + 3208);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    t21 = (t0 + 1208U);
    t22 = *((char **)t21);
    t21 = (t0 + 3368);
    t24 = (t21 + 56U);
    t25 = *((char **)t24);
    xsi_vlogfile_write(1, 0, 0, ng8, 7, t0, (char)119, t4, 32, (char)119, t8, 32, (char)119, t16, 32, (char)119, t20, 32, (char)118, t22, 10, (char)119, t25, 32);

LAB31:
LAB22:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 4936);
    *((int *)t2) = 1;
    t3 = (t0 + 4568);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB17:    *((unsigned int *)t5) = 1;
    goto LAB19;

LAB18:    t7 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(85, ng0);

LAB23:    xsi_set_current_line(86, ng0);
    xsi_vlogfile_write(1, 0, 0, ng6, 1, t0);
    goto LAB22;

LAB27:    t9 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(89, ng0);
    t16 = (t0 + 2568);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t20 = (t0 + 2888);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t24 = (t0 + 3048);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t28 = (t0 + 3208);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t32 = (t0 + 1208U);
    t33 = *((char **)t32);
    xsi_vlogfile_write(1, 0, 0, ng7, 6, t0, (char)119, t18, 32, (char)119, t22, 32, (char)119, t26, 32, (char)119, t30, 32, (char)118, t33, 10);
    goto LAB31;

LAB32:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t5, 0, 8);
    t4 = (t3 + 4);
    t6 = (t2 + 4);
    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t2);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t6);
    t42 = (t14 ^ t15);
    t43 = (t13 | t42);
    t44 = *((unsigned int *)t4);
    t45 = *((unsigned int *)t6);
    t46 = (t44 | t45);
    t47 = (~(t46));
    t48 = (t43 & t47);
    if (t48 != 0)
        goto LAB34;

LAB33:    if (t46 != 0)
        goto LAB35;

LAB36:    t8 = (t5 + 4);
    t49 = *((unsigned int *)t8);
    t50 = (~(t49));
    t51 = *((unsigned int *)t5);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(97, ng0);

LAB41:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 3368);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    memset(t5, 0, 8);
    t7 = (t3 + 4);
    t8 = (t6 + 4);
    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t6);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t7);
    t15 = *((unsigned int *)t8);
    t42 = (t14 ^ t15);
    t43 = (t13 | t42);
    t44 = *((unsigned int *)t7);
    t45 = *((unsigned int *)t8);
    t46 = (t44 | t45);
    t47 = (~(t46));
    t48 = (t43 & t47);
    if (t48 != 0)
        goto LAB45;

LAB42:    if (t46 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t5) = 1;

LAB45:    t10 = (t5 + 4);
    t49 = *((unsigned int *)t10);
    t50 = (~(t49));
    t51 = *((unsigned int *)t5);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB46;

LAB47:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2888);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t0 + 3048);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    t17 = (t0 + 3208);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    t21 = (t0 + 1208U);
    t22 = *((char **)t21);
    t21 = (t0 + 3368);
    t24 = (t21 + 56U);
    t25 = *((char **)t24);
    xsi_vlogfile_write(1, 0, 0, ng8, 7, t0, (char)119, t4, 32, (char)119, t8, 32, (char)119, t16, 32, (char)119, t20, 32, (char)118, t22, 10, (char)119, t25, 32);

LAB48:
LAB39:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 4952);
    *((int *)t2) = 1;
    t3 = (t0 + 4568);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB34:    *((unsigned int *)t5) = 1;
    goto LAB36;

LAB35:    t7 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB36;

LAB37:    xsi_set_current_line(95, ng0);

LAB40:    xsi_set_current_line(96, ng0);
    xsi_vlogfile_write(1, 0, 0, ng6, 1, t0);
    goto LAB39;

LAB44:    t9 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB45;

LAB46:    xsi_set_current_line(99, ng0);
    t16 = (t0 + 2568);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t20 = (t0 + 2888);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t24 = (t0 + 3048);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t28 = (t0 + 3208);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t32 = (t0 + 1208U);
    t33 = *((char **)t32);
    xsi_vlogfile_write(1, 0, 0, ng7, 6, t0, (char)119, t18, 32, (char)119, t22, 32, (char)119, t26, 32, (char)119, t30, 32, (char)118, t33, 10);
    goto LAB48;

LAB49:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t5, 0, 8);
    t4 = (t3 + 4);
    t6 = (t2 + 4);
    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t2);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t6);
    t42 = (t14 ^ t15);
    t43 = (t13 | t42);
    t44 = *((unsigned int *)t4);
    t45 = *((unsigned int *)t6);
    t46 = (t44 | t45);
    t47 = (~(t46));
    t48 = (t43 & t47);
    if (t48 != 0)
        goto LAB51;

LAB50:    if (t46 != 0)
        goto LAB52;

LAB53:    t8 = (t5 + 4);
    t49 = *((unsigned int *)t8);
    t50 = (~(t49));
    t51 = *((unsigned int *)t5);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB54;

LAB55:    xsi_set_current_line(107, ng0);

LAB58:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 3368);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    memset(t5, 0, 8);
    t7 = (t3 + 4);
    t8 = (t6 + 4);
    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t6);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t7);
    t15 = *((unsigned int *)t8);
    t42 = (t14 ^ t15);
    t43 = (t13 | t42);
    t44 = *((unsigned int *)t7);
    t45 = *((unsigned int *)t8);
    t46 = (t44 | t45);
    t47 = (~(t46));
    t48 = (t43 & t47);
    if (t48 != 0)
        goto LAB62;

LAB59:    if (t46 != 0)
        goto LAB61;

LAB60:    *((unsigned int *)t5) = 1;

LAB62:    t10 = (t5 + 4);
    t49 = *((unsigned int *)t10);
    t50 = (~(t49));
    t51 = *((unsigned int *)t5);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB63;

LAB64:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2888);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t0 + 3048);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    t17 = (t0 + 3208);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    t21 = (t0 + 1208U);
    t22 = *((char **)t21);
    t21 = (t0 + 3368);
    t24 = (t21 + 56U);
    t25 = *((char **)t24);
    xsi_vlogfile_write(1, 0, 0, ng8, 7, t0, (char)119, t4, 32, (char)119, t8, 32, (char)119, t16, 32, (char)119, t20, 32, (char)118, t22, 10, (char)119, t25, 32);

LAB65:
LAB56:    goto LAB8;

LAB51:    *((unsigned int *)t5) = 1;
    goto LAB53;

LAB52:    t7 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB53;

LAB54:    xsi_set_current_line(105, ng0);

LAB57:    xsi_set_current_line(106, ng0);
    xsi_vlogfile_write(1, 0, 0, ng6, 1, t0);
    goto LAB56;

LAB61:    t9 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB62;

LAB63:    xsi_set_current_line(109, ng0);
    t16 = (t0 + 2568);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t20 = (t0 + 2888);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t24 = (t0 + 3048);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t28 = (t0 + 3208);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t32 = (t0 + 1208U);
    t33 = *((char **)t32);
    xsi_vlogfile_write(1, 0, 0, ng7, 6, t0, (char)119, t18, 32, (char)119, t22, 32, (char)119, t26, 32, (char)119, t30, 32, (char)118, t33, 10);
    goto LAB65;

}


extern void work_m_00000000002673416188_3402340847_init()
{
	static char *pe[] = {(void *)Initial_52_0,(void *)Initial_58_1};
	xsi_register_didat("work_m_00000000002673416188_3402340847", "isim/tb_lab5dpath_isim_beh.exe.sim/work/m_00000000002673416188_3402340847.didat");
	xsi_register_executes(pe);
}
