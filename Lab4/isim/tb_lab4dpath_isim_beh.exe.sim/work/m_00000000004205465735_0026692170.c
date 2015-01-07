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
static const char *ng0 = "C:/Users/James/Desktop/iDriveSync/IDrive-Sync/DSD LAB/Lab4/tb_lab4dpath.v";
static int ng1[] = {1, 0};
static int ng2[] = {1024, 0};
static int ng3[] = {0, 0};
static const char *ng4 = "multadd_vectors.txt";
static const char *ng5 = "r";
static const char *ng6 = "%x %x %x %x";
static int ng7[] = {3, 0};
static const char *ng8 = "%d PASS, x1: %x, x2: %x, x3: %x, y: %x\n";
static const char *ng9 = "%d FAIL, x1: %x, x2: %x, x3: %x, y (actual): %x, y (expected): %x\n";



static int sp_inc_head(char *t1, char *t2)
{
    char t9[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 848);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(105, ng0);

LAB5:    xsi_set_current_line(106, ng0);
    t5 = (t1 + 3272);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng1)));
    memset(t9, 0, 8);
    xsi_vlog_signed_add(t9, 32, t7, 32, t8, 32);
    t10 = (t1 + 3272);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 32);
    xsi_set_current_line(107, ng0);
    t4 = (t1 + 3272);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t9, 0, 8);
    xsi_vlog_signed_equal(t9, 32, t6, 32, t7, 32);
    t8 = (t9 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (~(t11));
    t13 = *((unsigned int *)t9);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB6;

LAB7:
LAB8:
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB6:    xsi_set_current_line(107, ng0);
    t10 = ((char*)((ng3)));
    t16 = (t1 + 3272);
    xsi_vlogvar_assign_value(t16, t10, 0, 0, 32);
    goto LAB8;

}

static int sp_inc_tail(char *t1, char *t2)
{
    char t9[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1280);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(112, ng0);

LAB5:    xsi_set_current_line(113, ng0);
    t5 = (t1 + 3432);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng1)));
    memset(t9, 0, 8);
    xsi_vlog_signed_add(t9, 32, t7, 32, t8, 32);
    t10 = (t1 + 3432);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 32);
    xsi_set_current_line(114, ng0);
    t4 = (t1 + 3432);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t9, 0, 8);
    xsi_vlog_signed_equal(t9, 32, t6, 32, t7, 32);
    t8 = (t9 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (~(t11));
    t13 = *((unsigned int *)t9);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB6;

LAB7:
LAB8:
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB6:    xsi_set_current_line(114, ng0);
    t10 = ((char*)((ng3)));
    t16 = (t1 + 3432);
    xsi_vlogvar_assign_value(t16, t10, 0, 0, 32);
    goto LAB8;

}

static void Initial_63_0(char *t0)
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

LAB0:    t1 = (t0 + 6432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);

LAB4:    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2792);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 6240);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(66, ng0);

LAB6:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 6240);
    xsi_process_wait(t3, 25000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(66, ng0);
    t5 = (t0 + 2792);
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
    t25 = (t0 + 2792);
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

static void Initial_69_1(char *t0)
{
    char t4[8];
    char t19[8];
    char t23[8];
    char t27[8];
    char t31[8];
    char t35[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
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
    int t42;
    int t43;
    int t44;
    int t45;
    int t46;

LAB0:    t1 = (t0 + 6680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(69, ng0);

LAB4:    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2312);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 10);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 10);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2632);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 10);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3272);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3432);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5512);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(79, ng0);
    *((int *)t4) = xsi_vlogfile_file_open_of_cname_ctype(ng4, ng5);
    t2 = (t4 + 4);
    *((int *)t2) = 0;
    t3 = (t0 + 3592);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3752);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 6488);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5352);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(88, ng0);

LAB6:    t2 = (t0 + 2952);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3592);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t4) = xsi_vlogfile_fgets(t5, 800, *((unsigned int *)t8));
    t9 = (t4 + 4);
    *((int *)t9) = 0;
    t10 = (t4 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB7;

LAB8:    goto LAB1;

LAB7:    xsi_set_current_line(88, ng0);

LAB9:    xsi_set_current_line(89, ng0);
    t16 = (t0 + 2952);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t20 = (t0 + 4072);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    xsi_vlog_bit_copy(t19, 0, t22, 0, 32);
    t24 = (t0 + 4232);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_bit_copy(t23, 0, t26, 0, 32);
    t28 = (t0 + 4392);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    xsi_vlog_bit_copy(t27, 0, t30, 0, 32);
    t32 = (t0 + 4552);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    xsi_vlog_bit_copy(t31, 0, t34, 0, 32);
    *((int *)t35) = xsi_vlogfile_sscanf(t18, 800, ng6, 5, t0, (char)119, t19, 32, (char)119, t23, 32, (char)119, t27, 32, (char)119, t31, 32);
    t36 = (t35 + 4);
    *((int *)t36) = 0;
    t37 = (t0 + 4072);
    xsi_vlogvar_assign_value(t37, t19, 0, 0, 32);
    t38 = (t0 + 4232);
    xsi_vlogvar_assign_value(t38, t23, 0, 0, 32);
    t39 = (t0 + 4392);
    xsi_vlogvar_assign_value(t39, t27, 0, 0, 32);
    t40 = (t0 + 4552);
    xsi_vlogvar_assign_value(t40, t31, 0, 0, 32);
    t41 = (t0 + 3912);
    xsi_vlogvar_assign_value(t41, t35, 0, 0, 32);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 7248);
    *((int *)t2) = 1;
    t3 = (t0 + 6712);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 4072);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2312);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 10);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 4232);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2472);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 10);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 4392);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2632);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 10);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4072);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3112);
    t7 = (t0 + 3112);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 3112);
    t16 = (t10 + 64U);
    t17 = *((char **)t16);
    t18 = (t0 + 3272);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    xsi_vlog_generic_convert_array_indices(t4, t19, t9, t17, 1, 1, t21, 32, 1);
    t22 = (t4 + 4);
    t11 = *((unsigned int *)t22);
    t42 = (!(t11));
    t24 = (t19 + 4);
    t12 = *((unsigned int *)t24);
    t43 = (!(t12));
    t44 = (t42 && t43);
    if (t44 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 6488);
    t3 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t5);

LAB15:    t6 = (t0 + 6584);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t16 = *((char **)t10);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t42 = ((int  (*)(char *, char *))t18)(t0, t7);

LAB17:    if (t42 != 0)
        goto LAB18;

LAB13:    t7 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t7);

LAB14:    t20 = (t0 + 6584);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 6488);
    t24 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t24);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 4232);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3112);
    t7 = (t0 + 3112);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 3112);
    t16 = (t10 + 64U);
    t17 = *((char **)t16);
    t18 = (t0 + 3272);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    xsi_vlog_generic_convert_array_indices(t4, t19, t9, t17, 1, 1, t21, 32, 1);
    t22 = (t4 + 4);
    t11 = *((unsigned int *)t22);
    t42 = (!(t11));
    t24 = (t19 + 4);
    t12 = *((unsigned int *)t24);
    t43 = (!(t12));
    t44 = (t42 && t43);
    if (t44 == 1)
        goto LAB19;

LAB20:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 6488);
    t3 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t5);

LAB23:    t6 = (t0 + 6584);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t16 = *((char **)t10);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t42 = ((int  (*)(char *, char *))t18)(t0, t7);

LAB25:    if (t42 != 0)
        goto LAB26;

LAB21:    t7 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t7);

LAB22:    t20 = (t0 + 6584);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 6488);
    t24 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t24);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4392);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3112);
    t7 = (t0 + 3112);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 3112);
    t16 = (t10 + 64U);
    t17 = *((char **)t16);
    t18 = (t0 + 3272);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    xsi_vlog_generic_convert_array_indices(t4, t19, t9, t17, 1, 1, t21, 32, 1);
    t22 = (t4 + 4);
    t11 = *((unsigned int *)t22);
    t42 = (!(t11));
    t24 = (t19 + 4);
    t12 = *((unsigned int *)t24);
    t43 = (!(t12));
    t44 = (t42 && t43);
    if (t44 == 1)
        goto LAB27;

LAB28:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 6488);
    t3 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t5);

LAB31:    t6 = (t0 + 6584);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t16 = *((char **)t10);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t42 = ((int  (*)(char *, char *))t18)(t0, t7);

LAB33:    if (t42 != 0)
        goto LAB34;

LAB29:    t7 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t7);

LAB30:    t20 = (t0 + 6584);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 6488);
    t24 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t24);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 4552);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3112);
    t7 = (t0 + 3112);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 3112);
    t16 = (t10 + 64U);
    t17 = *((char **)t16);
    t18 = (t0 + 3272);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    xsi_vlog_generic_convert_array_indices(t4, t19, t9, t17, 1, 1, t21, 32, 1);
    t22 = (t4 + 4);
    t11 = *((unsigned int *)t22);
    t42 = (!(t11));
    t24 = (t19 + 4);
    t12 = *((unsigned int *)t24);
    t43 = (!(t12));
    t44 = (t42 && t43);
    if (t44 == 1)
        goto LAB35;

LAB36:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 6488);
    t3 = (t0 + 848);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t5);

LAB39:    t6 = (t0 + 6584);
    t7 = *((char **)t6);
    t8 = (t7 + 80U);
    t9 = *((char **)t8);
    t10 = (t9 + 272U);
    t16 = *((char **)t10);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t42 = ((int  (*)(char *, char *))t18)(t0, t7);

LAB41:    if (t42 != 0)
        goto LAB42;

LAB37:    t7 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t7);

LAB38:    t20 = (t0 + 6584);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 6488);
    t24 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t24);
    goto LAB6;

LAB11:    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t19);
    t45 = (t13 - t14);
    t46 = (t45 + 1);
    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t19), t46);
    goto LAB12;

LAB16:;
LAB18:    t6 = (t0 + 6680U);
    *((char **)t6) = &&LAB15;
    goto LAB1;

LAB19:    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t19);
    t45 = (t13 - t14);
    t46 = (t45 + 1);
    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t19), t46);
    goto LAB20;

LAB24:;
LAB26:    t6 = (t0 + 6680U);
    *((char **)t6) = &&LAB23;
    goto LAB1;

LAB27:    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t19);
    t45 = (t13 - t14);
    t46 = (t45 + 1);
    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t19), t46);
    goto LAB28;

LAB32:;
LAB34:    t6 = (t0 + 6680U);
    *((char **)t6) = &&LAB31;
    goto LAB1;

LAB35:    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t19);
    t45 = (t13 - t14);
    t46 = (t45 + 1);
    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t19), t46);
    goto LAB36;

LAB40:;
LAB42:    t6 = (t0 + 6680U);
    *((char **)t6) = &&LAB39;
    goto LAB1;

}

static void Always_118_2(char *t0)
{
    char t8[8];
    char t10[8];
    char t18[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    int t29;
    unsigned int t30;
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
    char *t42;
    char *t43;
    char *t44;

LAB0:    t1 = (t0 + 6928U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 7264);
    *((int *)t2) = 1;
    t3 = (t0 + 6960);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(118, ng0);

LAB5:    xsi_set_current_line(119, ng0);
    t4 = (t0 + 5512);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t9 = (t0 + 5512);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 5512);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    t6 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t5, 32, t6, 32);
    memset(t10, 0, 8);
    xsi_vlog_signed_greater(t10, 32, t4, 32, t8, 32);
    t7 = (t10 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t10);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(121, ng0);

LAB9:    xsi_set_current_line(122, ng0);
    t9 = (t0 + 3112);
    t16 = (t9 + 56U);
    t17 = *((char **)t16);
    t19 = (t0 + 3112);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = (t0 + 3112);
    t23 = (t22 + 64U);
    t24 = *((char **)t23);
    t25 = (t0 + 3432);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    xsi_vlog_generic_get_array_select_value(t18, 32, t17, t21, t24, 1, 1, t27, 32, 1);
    t28 = (t0 + 4712);
    xsi_vlogvar_assign_value(t28, t18, 0, 0, 32);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 6736);
    t3 = (t0 + 1280);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB12:    t5 = (t0 + 6832);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t9 = *((char **)t7);
    t16 = (t9 + 272U);
    t17 = *((char **)t16);
    t19 = (t17 + 0U);
    t20 = *((char **)t19);
    t29 = ((int  (*)(char *, char *))t20)(t0, t6);

LAB14:    if (t29 != 0)
        goto LAB15;

LAB10:    t6 = (t0 + 1280);
    xsi_vlog_subprogram_popinvocation(t6);

LAB11:    t21 = (t0 + 6832);
    t22 = *((char **)t21);
    t21 = (t0 + 1280);
    t23 = (t0 + 6736);
    t24 = 0;
    xsi_delete_subprogram_invocation(t21, t22, t0, t23, t24);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3112);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t9 = (t0 + 3112);
    t16 = (t9 + 64U);
    t17 = *((char **)t16);
    t19 = (t0 + 3432);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    xsi_vlog_generic_get_array_select_value(t8, 32, t4, t7, t17, 1, 1, t21, 32, 1);
    t22 = (t0 + 4872);
    xsi_vlogvar_assign_value(t22, t8, 0, 0, 32);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 6736);
    t3 = (t0 + 1280);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB18:    t5 = (t0 + 6832);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t9 = *((char **)t7);
    t16 = (t9 + 272U);
    t17 = *((char **)t16);
    t19 = (t17 + 0U);
    t20 = *((char **)t19);
    t29 = ((int  (*)(char *, char *))t20)(t0, t6);

LAB20:    if (t29 != 0)
        goto LAB21;

LAB16:    t6 = (t0 + 1280);
    xsi_vlog_subprogram_popinvocation(t6);

LAB17:    t21 = (t0 + 6832);
    t22 = *((char **)t21);
    t21 = (t0 + 1280);
    t23 = (t0 + 6736);
    t24 = 0;
    xsi_delete_subprogram_invocation(t21, t22, t0, t23, t24);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3112);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t9 = (t0 + 3112);
    t16 = (t9 + 64U);
    t17 = *((char **)t16);
    t19 = (t0 + 3432);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    xsi_vlog_generic_get_array_select_value(t8, 32, t4, t7, t17, 1, 1, t21, 32, 1);
    t22 = (t0 + 5032);
    xsi_vlogvar_assign_value(t22, t8, 0, 0, 32);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 6736);
    t3 = (t0 + 1280);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB24:    t5 = (t0 + 6832);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t9 = *((char **)t7);
    t16 = (t9 + 272U);
    t17 = *((char **)t16);
    t19 = (t17 + 0U);
    t20 = *((char **)t19);
    t29 = ((int  (*)(char *, char *))t20)(t0, t6);

LAB26:    if (t29 != 0)
        goto LAB27;

LAB22:    t6 = (t0 + 1280);
    xsi_vlog_subprogram_popinvocation(t6);

LAB23:    t21 = (t0 + 6832);
    t22 = *((char **)t21);
    t21 = (t0 + 1280);
    t23 = (t0 + 6736);
    t24 = 0;
    xsi_delete_subprogram_invocation(t21, t22, t0, t23, t24);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3112);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t9 = (t0 + 3112);
    t16 = (t9 + 64U);
    t17 = *((char **)t16);
    t19 = (t0 + 3432);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    xsi_vlog_generic_get_array_select_value(t8, 32, t4, t7, t17, 1, 1, t21, 32, 1);
    t22 = (t0 + 5192);
    xsi_vlogvar_assign_value(t22, t8, 0, 0, 32);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 6736);
    t3 = (t0 + 1280);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB30:    t5 = (t0 + 6832);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t9 = *((char **)t7);
    t16 = (t9 + 272U);
    t17 = *((char **)t16);
    t19 = (t17 + 0U);
    t20 = *((char **)t19);
    t29 = ((int  (*)(char *, char *))t20)(t0, t6);

LAB32:    if (t29 != 0)
        goto LAB33;

LAB28:    t6 = (t0 + 1280);
    xsi_vlog_subprogram_popinvocation(t6);

LAB29:    t21 = (t0 + 6832);
    t22 = *((char **)t21);
    t21 = (t0 + 1280);
    t23 = (t0 + 6736);
    t24 = 0;
    xsi_delete_subprogram_invocation(t21, t22, t0, t23, t24);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 5192);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1912U);
    t6 = *((char **)t5);
    memset(t8, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t6);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t7);
    t30 = (t14 ^ t15);
    t31 = (t13 | t30);
    t32 = *((unsigned int *)t5);
    t33 = *((unsigned int *)t7);
    t34 = (t32 | t33);
    t35 = (~(t34));
    t36 = (t31 & t35);
    if (t36 != 0)
        goto LAB37;

LAB34:    if (t34 != 0)
        goto LAB36;

LAB35:    *((unsigned int *)t8) = 1;

LAB37:    t16 = (t8 + 4);
    t37 = *((unsigned int *)t16);
    t38 = (~(t37));
    t39 = *((unsigned int *)t8);
    t40 = (t39 & t38);
    t41 = (t40 != 0);
    if (t41 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(129, ng0);

LAB42:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 3752);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4712);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t0 + 4872);
    t16 = (t9 + 56U);
    t17 = *((char **)t16);
    t19 = (t0 + 5032);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t0 + 1912U);
    t23 = *((char **)t22);
    t22 = (t0 + 5192);
    t24 = (t22 + 56U);
    t25 = *((char **)t24);
    xsi_vlogfile_write(1, 0, 0, ng9, 7, t0, (char)119, t4, 32, (char)119, t7, 32, (char)119, t17, 32, (char)119, t21, 32, (char)118, t23, 10, (char)119, t25, 32);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 5352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t4, 32, t5, 32);
    t6 = (t0 + 5352);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 32);

LAB40:    goto LAB8;

LAB13:;
LAB15:    t5 = (t0 + 6928U);
    *((char **)t5) = &&LAB12;
    goto LAB1;

LAB19:;
LAB21:    t5 = (t0 + 6928U);
    *((char **)t5) = &&LAB18;
    goto LAB1;

LAB25:;
LAB27:    t5 = (t0 + 6928U);
    *((char **)t5) = &&LAB24;
    goto LAB1;

LAB31:;
LAB33:    t5 = (t0 + 6928U);
    *((char **)t5) = &&LAB30;
    goto LAB1;

LAB36:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB37;

LAB38:    xsi_set_current_line(127, ng0);

LAB41:    xsi_set_current_line(128, ng0);
    t17 = (t0 + 3752);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    t21 = (t0 + 4712);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t0 + 4872);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t0 + 5032);
    t28 = (t27 + 56U);
    t42 = *((char **)t28);
    t43 = (t0 + 1912U);
    t44 = *((char **)t43);
    xsi_vlogfile_write(1, 0, 0, ng8, 6, t0, (char)119, t20, 32, (char)119, t23, 32, (char)119, t26, 32, (char)119, t42, 32, (char)118, t44, 10);
    goto LAB40;

}


extern void work_m_00000000004205465735_0026692170_init()
{
	static char *pe[] = {(void *)Initial_63_0,(void *)Initial_69_1,(void *)Always_118_2};
	static char *se[] = {(void *)sp_inc_head,(void *)sp_inc_tail};
	xsi_register_didat("work_m_00000000004205465735_0026692170", "isim/tb_lab4dpath_isim_beh.exe.sim/work/m_00000000004205465735_0026692170.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
