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
static const char *ng0 = "C:/Users/James/Desktop/iDriveSync/IDrive-Sync/spi/spi_bonus.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {24, 0};
static int ng4[] = {1, 0};
static int ng5[] = {25, 0};
static int ng6[] = {49, 0};
static int ng7[] = {50, 0};
static unsigned int ng8[] = {1U, 0U};
static unsigned int ng9[] = {2U, 0U};
static int ng10[] = {8, 0};
static unsigned int ng11[] = {8U, 0U};
static unsigned int ng12[] = {3U, 0U};



static void Cont_49_0(char *t0)
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

LAB0:    t1 = (t0 + 7488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t5, 0, 8);
    t6 = (t5 + 4);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 7);
    t10 = (t9 & 1);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 7);
    t13 = (t12 & 1);
    *((unsigned int *)t6) = t13;
    t14 = (t0 + 10528);
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
    t27 = (t0 + 10288);
    *((int *)t27) = 1;

LAB1:    return;
}

static void Cont_50_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 7736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10592);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 10304);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_73_2(char *t0)
{
    char t15[8];
    char t23[8];
    char t27[8];
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
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;

LAB0:    t1 = (t0 + 7984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 10320);
    *((int *)t2) = 1;
    t3 = (t0 + 8016);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(73, ng0);

LAB5:    xsi_set_current_line(74, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(78, ng0);

LAB10:    xsi_set_current_line(79, ng0);

LAB11:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 5448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(93, ng0);

LAB58:    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 7, 0LL);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB14:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(74, ng0);

LAB9:    xsi_set_current_line(75, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 7, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB12:    xsi_set_current_line(80, ng0);

LAB15:    xsi_set_current_line(81, ng0);
    t11 = (t0 + 5928);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng2)));
    memset(t15, 0, 8);
    t16 = (t13 + 4);
    if (*((unsigned int *)t16) != 0)
        goto LAB17;

LAB16:    t17 = (t14 + 4);
    if (*((unsigned int *)t17) != 0)
        goto LAB17;

LAB20:    if (*((unsigned int *)t13) < *((unsigned int *)t14))
        goto LAB19;

LAB18:    *((unsigned int *)t15) = 1;

LAB19:    t19 = (t0 + 5928);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = ((char*)((ng3)));
    memset(t23, 0, 8);
    t24 = (t21 + 4);
    if (*((unsigned int *)t24) != 0)
        goto LAB22;

LAB21:    t25 = (t22 + 4);
    if (*((unsigned int *)t25) != 0)
        goto LAB22;

LAB25:    if (*((unsigned int *)t21) > *((unsigned int *)t22))
        goto LAB24;

LAB23:    *((unsigned int *)t23) = 1;

LAB24:    t28 = *((unsigned int *)t15);
    t29 = *((unsigned int *)t23);
    t30 = (t28 & t29);
    *((unsigned int *)t27) = t30;
    t31 = (t15 + 4);
    t32 = (t23 + 4);
    t33 = (t27 + 4);
    t34 = *((unsigned int *)t31);
    t35 = *((unsigned int *)t32);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB26;

LAB27:
LAB28:    t59 = (t27 + 4);
    t60 = *((unsigned int *)t59);
    t61 = (~(t60));
    t62 = *((unsigned int *)t27);
    t63 = (t62 & t61);
    t64 = (t63 != 0);
    if (t64 > 0)
        goto LAB29;

LAB30:
LAB31:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 5928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t15, 0, 8);
    t11 = (t4 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB34;

LAB33:    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB34;

LAB37:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB36;

LAB35:    *((unsigned int *)t15) = 1;

LAB36:    t14 = (t0 + 5928);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t18 = ((char*)((ng6)));
    memset(t23, 0, 8);
    t19 = (t17 + 4);
    if (*((unsigned int *)t19) != 0)
        goto LAB39;

LAB38:    t20 = (t18 + 4);
    if (*((unsigned int *)t20) != 0)
        goto LAB39;

LAB42:    if (*((unsigned int *)t17) > *((unsigned int *)t18))
        goto LAB41;

LAB40:    *((unsigned int *)t23) = 1;

LAB41:    t6 = *((unsigned int *)t15);
    t7 = *((unsigned int *)t23);
    t8 = (t6 & t7);
    *((unsigned int *)t27) = t8;
    t22 = (t15 + 4);
    t24 = (t23 + 4);
    t25 = (t27 + 4);
    t9 = *((unsigned int *)t22);
    t10 = *((unsigned int *)t24);
    t28 = (t9 | t10);
    *((unsigned int *)t25) = t28;
    t29 = *((unsigned int *)t25);
    t30 = (t29 != 0);
    if (t30 == 1)
        goto LAB43;

LAB44:
LAB45:    t32 = (t27 + 4);
    t54 = *((unsigned int *)t32);
    t55 = (~(t54));
    t56 = *((unsigned int *)t27);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB46;

LAB47:
LAB48:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 5928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t15, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t28 = (t9 ^ t10);
    t29 = (t8 | t28);
    t30 = *((unsigned int *)t11);
    t34 = *((unsigned int *)t12);
    t35 = (t30 | t34);
    t36 = (~(t35));
    t37 = (t29 & t36);
    if (t37 != 0)
        goto LAB53;

LAB50:    if (t35 != 0)
        goto LAB52;

LAB51:    *((unsigned int *)t15) = 1;

LAB53:    t14 = (t15 + 4);
    t38 = *((unsigned int *)t14);
    t39 = (~(t38));
    t40 = *((unsigned int *)t15);
    t43 = (t40 & t39);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB54;

LAB55:
LAB56:    goto LAB14;

LAB17:    t18 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB19;

LAB22:    t26 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB24;

LAB26:    t39 = *((unsigned int *)t27);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t27) = (t39 | t40);
    t41 = (t15 + 4);
    t42 = (t23 + 4);
    t43 = *((unsigned int *)t15);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (~(t45));
    t47 = *((unsigned int *)t23);
    t48 = (~(t47));
    t49 = *((unsigned int *)t42);
    t50 = (~(t49));
    t51 = (t44 & t46);
    t52 = (t48 & t50);
    t53 = (~(t51));
    t54 = (~(t52));
    t55 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t55 & t53);
    t56 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t56 & t54);
    t57 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t57 & t53);
    t58 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t58 & t54);
    goto LAB28;

LAB29:    xsi_set_current_line(81, ng0);

LAB32:    xsi_set_current_line(82, ng0);
    t65 = ((char*)((ng4)));
    t66 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t66, t65, 0, 0, 1, 0LL);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 5928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 32, t4, 7, t5, 32);
    t11 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t11, t15, 0, 0, 7, 0LL);
    goto LAB31;

LAB34:    t13 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB36;

LAB39:    t21 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB41;

LAB43:    t34 = *((unsigned int *)t27);
    t35 = *((unsigned int *)t25);
    *((unsigned int *)t27) = (t34 | t35);
    t26 = (t15 + 4);
    t31 = (t23 + 4);
    t36 = *((unsigned int *)t15);
    t37 = (~(t36));
    t38 = *((unsigned int *)t26);
    t39 = (~(t38));
    t40 = *((unsigned int *)t23);
    t43 = (~(t40));
    t44 = *((unsigned int *)t31);
    t45 = (~(t44));
    t51 = (t37 & t39);
    t52 = (t43 & t45);
    t46 = (~(t51));
    t47 = (~(t52));
    t48 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t48 & t46);
    t49 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t49 & t47);
    t50 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t50 & t46);
    t53 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t53 & t47);
    goto LAB45;

LAB46:    xsi_set_current_line(85, ng0);

LAB49:    xsi_set_current_line(86, ng0);
    t33 = ((char*)((ng2)));
    t41 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t41, t33, 0, 0, 1, 0LL);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 5928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 32, t4, 7, t5, 32);
    t11 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t11, t15, 0, 0, 7, 0LL);
    goto LAB48;

LAB52:    t13 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB53;

LAB54:    xsi_set_current_line(89, ng0);

LAB57:    xsi_set_current_line(90, ng0);
    t16 = ((char*)((ng1)));
    t17 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t17, t16, 0, 0, 7, 0LL);
    goto LAB56;

}

static void Always_102_3(char *t0)
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

LAB0:    t1 = (t0 + 8232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 10336);
    *((int *)t2) = 1;
    t3 = (t0 + 8264);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(102, ng0);

LAB5:    xsi_set_current_line(103, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 3688);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:
LAB11:    goto LAB2;

LAB7:    xsi_set_current_line(106, ng0);

LAB12:    xsi_set_current_line(107, ng0);
    t4 = (t0 + 1528U);
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
LAB15:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 3128U);
    t4 = *((char **)t2);
    t2 = (t0 + 3688);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    goto LAB11;

LAB9:    xsi_set_current_line(111, ng0);

LAB16:    xsi_set_current_line(112, ng0);
    t4 = (t0 + 1528U);
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

LAB13:    xsi_set_current_line(108, ng0);
    t12 = ((char*)((ng4)));
    t13 = (t0 + 5768);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 1);
    goto LAB15;

LAB17:    xsi_set_current_line(113, ng0);
    t12 = (t0 + 3848);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t0 + 3688);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 8);
    goto LAB19;

}

static void Always_119_4(char *t0)
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

LAB0:    t1 = (t0 + 8480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 10352);
    *((int *)t2) = 1;
    t3 = (t0 + 8512);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(119, ng0);

LAB5:    xsi_set_current_line(120, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 4328);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:
LAB9:    goto LAB2;

LAB7:    xsi_set_current_line(122, ng0);

LAB10:    xsi_set_current_line(123, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB11;

LAB12:
LAB13:    goto LAB9;

LAB11:    xsi_set_current_line(124, ng0);
    t12 = ((char*)((ng4)));
    t13 = (t0 + 4328);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 1);
    goto LAB13;

}

static void Always_131_5(char *t0)
{
    char t13[8];
    char t22[8];
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
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t28;
    int t29;

LAB0:    t1 = (t0 + 8728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 10368);
    *((int *)t2) = 1;
    t3 = (t0 + 8760);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(131, ng0);

LAB5:    xsi_set_current_line(132, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(134, ng0);

LAB9:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB13;

LAB11:    if (*((unsigned int *)t2) == 0)
        goto LAB10;

LAB12:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;

LAB13:    t5 = (t13 + 4);
    t11 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (~(t14));
    *((unsigned int *)t13) = t15;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t11) != 0)
        goto LAB15;

LAB14:    t20 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t20 & 1U);
    t21 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t21 & 1U);
    t12 = (t0 + 3848);
    t23 = (t0 + 3848);
    t24 = (t23 + 72U);
    t25 = *((char **)t24);
    t26 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t22, t25, 2, t26, 32, 1);
    t27 = (t22 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (!(t28));
    if (t29 == 1)
        goto LAB16;

LAB17:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 2648U);
    t3 = *((char **)t2);
    t2 = (t0 + 3848);
    t4 = (t0 + 3848);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t13, t11, 2, t12, 32, 1);
    t23 = (t13 + 4);
    t6 = *((unsigned int *)t23);
    t29 = (!(t6));
    if (t29 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 5288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB20;

LAB21:
LAB22:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(133, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 8, 0LL);
    goto LAB8;

LAB10:    *((unsigned int *)t13) = 1;
    goto LAB13;

LAB15:    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t13) = (t16 | t17);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t11);
    *((unsigned int *)t5) = (t18 | t19);
    goto LAB14;

LAB16:    xsi_vlogvar_wait_assign_value(t12, t13, 0, *((unsigned int *)t22), 1, 0LL);
    goto LAB17;

LAB18:    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t13), 1, 0LL);
    goto LAB19;

LAB20:    xsi_set_current_line(138, ng0);
    t11 = (t0 + 1688U);
    t12 = *((char **)t11);
    t11 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t11, t12, 0, 0, 8, 0LL);
    goto LAB22;

}

static void Always_143_6(char *t0)
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
    char *t17;

LAB0:    t1 = (t0 + 8976U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(143, ng0);
    t2 = (t0 + 10384);
    *((int *)t2) = 1;
    t3 = (t0 + 9008);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(143, ng0);

LAB5:    xsi_set_current_line(144, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(146, ng0);

LAB9:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 5448);
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
LAB12:    xsi_set_current_line(148, ng0);
    t2 = (t0 + 6568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng10)));
    memset(t15, 0, 8);
    t11 = (t4 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB14;

LAB13:    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB14;

LAB17:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB16;

LAB15:    *((unsigned int *)t15) = 1;

LAB16:    t14 = (t15 + 4);
    t6 = *((unsigned int *)t14);
    t7 = (~(t6));
    t8 = *((unsigned int *)t15);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB18;

LAB19:
LAB20:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(145, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 6568);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(147, ng0);
    t11 = (t0 + 6568);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng4)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 32, t13, 4, t14, 32);
    t16 = (t0 + 6568);
    xsi_vlogvar_wait_assign_value(t16, t15, 0, 0, 4, 0LL);
    goto LAB12;

LAB14:    t13 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB16;

LAB18:    xsi_set_current_line(148, ng0);
    t16 = ((char*)((ng8)));
    t17 = (t0 + 6568);
    xsi_vlogvar_wait_assign_value(t17, t16, 0, 0, 4, 0LL);
    goto LAB20;

}

static void Always_153_7(char *t0)
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
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 9224U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(153, ng0);
    t2 = (t0 + 10400);
    *((int *)t2) = 1;
    t3 = (t0 + 9256);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(153, ng0);

LAB5:    xsi_set_current_line(154, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(156, ng0);

LAB9:    xsi_set_current_line(157, ng0);
    t2 = (t0 + 4808);
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
LAB12:    xsi_set_current_line(159, ng0);
    t2 = (t0 + 4648);
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
LAB15:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(155, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 8, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(158, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 4168);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memset(t14, 0, 8);
    t17 = (t14 + 4);
    t18 = (t16 + 4);
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 0);
    *((unsigned int *)t14) = t20;
    t21 = *((unsigned int *)t18);
    t22 = (t21 >> 0);
    *((unsigned int *)t17) = t22;
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 127U);
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t24 & 127U);
    xsi_vlogtype_concat(t13, 8, 8, 2U, t14, 7, t11, 1);
    t25 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t25, t13, 0, 0, 8, 0LL);
    goto LAB12;

LAB13:    xsi_set_current_line(160, ng0);
    t11 = (t0 + 2968U);
    t12 = *((char **)t11);
    t11 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t11, t12, 0, 0, 8, 0LL);
    goto LAB15;

}

static void Always_165_8(char *t0)
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
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 9472U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(165, ng0);
    t2 = (t0 + 10416);
    *((int *)t2) = 1;
    t3 = (t0 + 9504);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(165, ng0);

LAB5:    xsi_set_current_line(166, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(168, ng0);

LAB9:    xsi_set_current_line(169, ng0);
    t2 = (t0 + 4968);
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

LAB6:    xsi_set_current_line(167, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 8, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(170, ng0);
    t11 = (t0 + 2168U);
    t12 = *((char **)t11);
    t11 = (t0 + 4008);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    memset(t14, 0, 8);
    t17 = (t14 + 4);
    t18 = (t16 + 4);
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 0);
    *((unsigned int *)t14) = t20;
    t21 = *((unsigned int *)t18);
    t22 = (t21 >> 0);
    *((unsigned int *)t17) = t22;
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 127U);
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t24 & 127U);
    xsi_vlogtype_concat(t13, 8, 8, 2U, t14, 7, t12, 1);
    t25 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t25, t13, 0, 0, 8, 0LL);
    goto LAB12;

}

static void Always_175_9(char *t0)
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

LAB0:    t1 = (t0 + 9720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(175, ng0);
    t2 = (t0 + 10432);
    *((int *)t2) = 1;
    t3 = (t0 + 9752);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(175, ng0);

LAB5:    xsi_set_current_line(176, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(177, ng0);
    t2 = (t0 + 6248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6088);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 2);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(176, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 6088);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 2);
    goto LAB8;

}

static void Always_181_10(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;

LAB0:    t1 = (t0 + 9968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(181, ng0);
    t2 = (t0 + 10448);
    *((int *)t2) = 1;
    t3 = (t0 + 10000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(181, ng0);

LAB5:    xsi_set_current_line(182, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 4648);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(182, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(183, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(183, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(184, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(184, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(185, ng0);
    t2 = (t0 + 6088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t6, t4, 8);
    t5 = (t0 + 6408);
    xsi_vlogvar_assign_value(t5, t6, 0, 0, 3);
    xsi_set_current_line(186, ng0);
    t2 = (t0 + 6088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6248);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 2);
    xsi_set_current_line(187, ng0);
    t2 = (t0 + 6088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB6:    t5 = ((char*)((ng1)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t7 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng8)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t7 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng9)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t7 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng12)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t7 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(188, ng0);

LAB16:    xsi_set_current_line(189, ng0);
    t8 = (t0 + 2808U);
    t9 = *((char **)t8);
    memset(t6, 0, 8);
    t8 = (t9 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (~(t10));
    t12 = *((unsigned int *)t9);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB20;

LAB18:    if (*((unsigned int *)t8) == 0)
        goto LAB17;

LAB19:    t15 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t15) = 1;

LAB20:    t16 = (t6 + 4);
    t17 = (t9 + 4);
    t18 = *((unsigned int *)t9);
    t19 = (~(t18));
    *((unsigned int *)t6) = t19;
    *((unsigned int *)t16) = 0;
    if (*((unsigned int *)t17) != 0)
        goto LAB22;

LAB21:    t24 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t24 & 1U);
    t25 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t25 & 1U);
    t26 = (t6 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (~(t27));
    t29 = *((unsigned int *)t6);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB23;

LAB24:
LAB25:    goto LAB15;

LAB9:    xsi_set_current_line(195, ng0);

LAB27:    xsi_set_current_line(196, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 5448);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(197, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t6, 0, 8);
    t8 = (t5 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB31;

LAB29:    if (*((unsigned int *)t8) == 0)
        goto LAB28;

LAB30:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;

LAB31:    t15 = (t6 + 4);
    t16 = (t5 + 4);
    t18 = *((unsigned int *)t5);
    t19 = (~(t18));
    *((unsigned int *)t6) = t19;
    *((unsigned int *)t15) = 0;
    if (*((unsigned int *)t16) != 0)
        goto LAB33;

LAB32:    t24 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t24 & 1U);
    t25 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t25 & 1U);
    t17 = (t6 + 4);
    t27 = *((unsigned int *)t17);
    t28 = (~(t27));
    t29 = *((unsigned int *)t6);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB34;

LAB35:
LAB36:    goto LAB15;

LAB11:    xsi_set_current_line(205, ng0);

LAB46:    xsi_set_current_line(206, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 5448);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(207, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t8 = (t5 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB47;

LAB48:
LAB49:    goto LAB15;

LAB13:    xsi_set_current_line(212, ng0);

LAB51:    xsi_set_current_line(213, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 4488);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(214, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB15;

LAB17:    *((unsigned int *)t6) = 1;
    goto LAB20;

LAB22:    t20 = *((unsigned int *)t6);
    t21 = *((unsigned int *)t17);
    *((unsigned int *)t6) = (t20 | t21);
    t22 = *((unsigned int *)t16);
    t23 = *((unsigned int *)t17);
    *((unsigned int *)t16) = (t22 | t23);
    goto LAB21;

LAB23:    xsi_set_current_line(189, ng0);

LAB26:    xsi_set_current_line(190, ng0);
    t32 = ((char*)((ng4)));
    t33 = (t0 + 4648);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 1);
    xsi_set_current_line(191, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(192, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 6248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB25;

LAB28:    *((unsigned int *)t6) = 1;
    goto LAB31;

LAB33:    t20 = *((unsigned int *)t6);
    t21 = *((unsigned int *)t16);
    *((unsigned int *)t6) = (t20 | t21);
    t22 = *((unsigned int *)t15);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t15) = (t22 | t23);
    goto LAB32;

LAB34:    xsi_set_current_line(197, ng0);

LAB37:    xsi_set_current_line(198, ng0);
    t26 = ((char*)((ng9)));
    t32 = (t0 + 6248);
    xsi_vlogvar_assign_value(t32, t26, 0, 0, 2);
    xsi_set_current_line(199, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(200, ng0);
    t2 = (t0 + 6568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t8 = ((char*)((ng11)));
    memset(t6, 0, 8);
    t9 = (t5 + 4);
    t15 = (t8 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t8);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t9);
    t14 = *((unsigned int *)t15);
    t18 = (t13 ^ t14);
    t19 = (t12 | t18);
    t20 = *((unsigned int *)t9);
    t21 = *((unsigned int *)t15);
    t22 = (t20 | t21);
    t23 = (~(t22));
    t24 = (t19 & t23);
    if (t24 != 0)
        goto LAB41;

LAB38:    if (t22 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t6) = 1;

LAB41:    t17 = (t6 + 4);
    t25 = *((unsigned int *)t17);
    t27 = (~(t25));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB42;

LAB43:
LAB44:    goto LAB36;

LAB40:    t16 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB41;

LAB42:    xsi_set_current_line(200, ng0);

LAB45:    xsi_set_current_line(201, ng0);
    t26 = ((char*)((ng12)));
    t32 = (t0 + 6248);
    xsi_vlogvar_assign_value(t32, t26, 0, 0, 2);
    goto LAB44;

LAB47:    xsi_set_current_line(207, ng0);

LAB50:    xsi_set_current_line(208, ng0);
    t9 = ((char*)((ng4)));
    t15 = (t0 + 4808);
    xsi_vlogvar_assign_value(t15, t9, 0, 0, 1);
    xsi_set_current_line(209, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 6248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB49;

}


extern void work_m_00000000003313760343_1938940840_init()
{
	static char *pe[] = {(void *)Cont_49_0,(void *)Cont_50_1,(void *)Always_73_2,(void *)Always_102_3,(void *)Always_119_4,(void *)Always_131_5,(void *)Always_143_6,(void *)Always_153_7,(void *)Always_165_8,(void *)Always_175_9,(void *)Always_181_10};
	xsi_register_didat("work_m_00000000003313760343_1938940840", "isim/spi_bonus_isim_beh.exe.sim/work/m_00000000003313760343_1938940840.didat");
	xsi_register_executes(pe);
}
