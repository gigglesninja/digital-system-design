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
static const char *ng0 = "C:/Users/James/Desktop/iDriveSync/IDrive-Sync/DSD LAB/newuart/tb_uart.v";
static int ng1[] = {1, 0};
static int ng2[] = {1024, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {1U, 0U};
static int ng6[] = {10, 0};
static unsigned int ng7[] = {57U, 0U};



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
    xsi_set_current_line(63, ng0);

LAB5:    xsi_set_current_line(65, ng0);
    t5 = (t1 + 3864);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t8, t7, 8);
    t9 = (t1 + 2904);
    t12 = (t1 + 2904);
    t13 = (t12 + 72U);
    t14 = *((char **)t13);
    t15 = (t1 + 2904);
    t16 = (t15 + 64U);
    t17 = *((char **)t16);
    t18 = (t1 + 3064);
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

LAB7:    xsi_set_current_line(66, ng0);
    t4 = (t1 + 3064);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t9 = (t1 + 3064);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    xsi_set_current_line(67, ng0);
    t4 = (t1 + 3064);
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
LAB10:    xsi_set_current_line(69, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t1 + 3864);
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
    t14 = (t1 + 3544);
    xsi_vlogvar_assign_value(t14, t8, 0, 0, 10);
    xsi_set_current_line(70, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 3704);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(71, ng0);

LAB11:    t4 = (t1 + 3704);
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

LAB8:    xsi_set_current_line(67, ng0);
    t12 = ((char*)((ng3)));
    t13 = (t1 + 3064);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    goto LAB10;

LAB12:    xsi_set_current_line(71, ng0);

LAB14:    xsi_set_current_line(72, ng0);
    t12 = (t1 + 3544);
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
    t17 = (t1 + 2744);
    xsi_vlogvar_assign_value(t17, t10, 0, 0, 1);
    xsi_set_current_line(73, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 17280000LL);
    *((char **)t3) = &&LAB15;
    t0 = 1;
    goto LAB1;

LAB15:    xsi_set_current_line(74, ng0);
    t6 = (t1 + 3704);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t12 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t9, 32, t12, 32);
    t13 = (t1 + 3704);
    xsi_vlogvar_assign_value(t13, t8, 0, 0, 32);
    xsi_set_current_line(75, ng0);
    t4 = (t1 + 3544);
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
    t13 = (t1 + 3544);
    xsi_vlogvar_assign_value(t13, t8, 0, 0, 10);
    goto LAB11;

}

static void Initial_50_0(char *t0)
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

LAB0:    t1 = (t0 + 4784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);

LAB4:    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 4592);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(53, ng0);

LAB6:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 4592);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(53, ng0);
    t5 = (t0 + 2264);
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
    t25 = (t0 + 2264);
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

static void Initial_81_1(char *t0)
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

LAB0:    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);

LAB4:    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2424);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4840);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2424);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 5352);
    *((int *)t2) = 1;
    t3 = (t0 + 5064);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 5368);
    *((int *)t2) = 1;
    t3 = (t0 + 5064);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 5384);
    *((int *)t2) = 1;
    t3 = (t0 + 5064);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 5400);
    *((int *)t2) = 1;
    t3 = (t0 + 5064);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 5416);
    *((int *)t2) = 1;
    t3 = (t0 + 5064);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 4840);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 4840);
    t4 = (t0 + 1392);
    t5 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t5);
    t6 = (t0 + 3864);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 9);

LAB14:    t7 = (t0 + 4936);
    t8 = *((char **)t7);
    t9 = (t8 + 80U);
    t10 = *((char **)t9);
    t11 = (t10 + 272U);
    t12 = *((char **)t11);
    t13 = (t12 + 0U);
    t14 = *((char **)t13);
    t15 = ((int  (*)(char *, char *))t14)(t0, t8);

LAB16:    if (t15 != 0)
        goto LAB17;

LAB12:    t8 = (t0 + 1392);
    xsi_vlog_subprogram_popinvocation(t8);

LAB13:    t16 = (t0 + 4936);
    t17 = *((char **)t16);
    t16 = (t0 + 1392);
    t18 = (t0 + 4840);
    t19 = 0;
    xsi_delete_subprogram_invocation(t16, t17, t0, t18, t19);
    goto LAB1;

LAB15:;
LAB17:    t7 = (t0 + 5032U);
    *((char **)t7) = &&LAB14;
    goto LAB1;

}


extern void work_m_00000000003774059208_2104124181_init()
{
	static char *pe[] = {(void *)Initial_50_0,(void *)Initial_81_1};
	static char *se[] = {(void *)sp_putserialdata};
	xsi_register_didat("work_m_00000000003774059208_2104124181", "isim/tb_uart_isim_beh.exe.sim/work/m_00000000003774059208_2104124181.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
