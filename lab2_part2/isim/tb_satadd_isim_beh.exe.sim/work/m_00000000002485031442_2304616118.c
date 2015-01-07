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
static const char *ng0 = "C:/Users/James/Desktop/iDriveSync/IDrive-Sync/DSD LAB/lab2_part2/tb_satadd.v";
static int ng1[] = {0, 0};
static const char *ng2 = "test_out.txt";
static const char *ng3 = "w";
static const char *ng4 = "satadd_vectors.txt";
static const char *ng5 = "r";
static const char *ng6 = "%x %x %x %x";
static const char *ng7 = "PASS, mode: %x, a: %x, b: %x, y: %x\n";
static const char *ng8 = "FAIL, mode: %x, a: %x, b: %x, y (actual): %x, y (expected): %x\n";
static int ng9[] = {1, 0};
static const char *ng10 = "PASS: All vectors pased.\n";
static const char *ng11 = "FAIL: %d vectors failed\n";



static void Initial_51_0(char *t0)
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

LAB0:    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);

LAB4:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(56, ng0);
    *((int *)t4) = xsi_vlogfile_file_open_of_cname_ctype(ng2, ng3);
    t2 = (t4 + 4);
    *((int *)t2) = 0;
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    xsi_vlogfile_fclose(*((unsigned int *)t5));
    xsi_set_current_line(59, ng0);
    *((int *)t4) = xsi_vlogfile_file_open_of_cname_ctype(ng4, ng5);
    t2 = (t4 + 4);
    *((int *)t2) = 0;
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3936);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(68, ng0);

LAB6:    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2088);
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

LAB8:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng1)));
    memset(t4, 0, 8);
    xsi_vlog_signed_equal(t4, 32, t5, 32, t6, 32);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng11, 2, t0, (char)119, t5, 32);

LAB22:    goto LAB1;

LAB7:    xsi_set_current_line(68, ng0);

LAB9:    xsi_set_current_line(69, ng0);
    t16 = (t0 + 1928);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t20 = (t0 + 2888);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    xsi_vlog_bit_copy(t19, 0, t22, 0, 32);
    t24 = (t0 + 2568);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_bit_copy(t23, 0, t26, 0, 32);
    t28 = (t0 + 2728);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    xsi_vlog_bit_copy(t27, 0, t30, 0, 32);
    t32 = (t0 + 3048);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    xsi_vlog_bit_copy(t31, 0, t34, 0, 32);
    *((int *)t35) = xsi_vlogfile_sscanf(t18, 800, ng6, 5, t0, (char)119, t19, 32, (char)119, t23, 32, (char)119, t27, 32, (char)119, t31, 32);
    t36 = (t35 + 4);
    *((int *)t36) = 0;
    t37 = (t0 + 2888);
    xsi_vlogvar_assign_value(t37, t19, 0, 0, 32);
    t38 = (t0 + 2568);
    xsi_vlogvar_assign_value(t38, t23, 0, 0, 32);
    t39 = (t0 + 2728);
    xsi_vlogvar_assign_value(t39, t27, 0, 0, 32);
    t40 = (t0 + 3048);
    xsi_vlogvar_assign_value(t40, t31, 0, 0, 32);
    t41 = (t0 + 2408);
    xsi_vlogvar_assign_value(t41, t35, 0, 0, 32);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 1448);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 12);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 1608);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 12);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 2);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 3936);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 3048);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t9 = (t8 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t8);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t7);
    t15 = *((unsigned int *)t9);
    t42 = (t14 ^ t15);
    t43 = (t13 | t42);
    t44 = *((unsigned int *)t7);
    t45 = *((unsigned int *)t9);
    t46 = (t44 | t45);
    t47 = (~(t46));
    t48 = (t43 & t47);
    if (t48 != 0)
        goto LAB14;

LAB11:    if (t46 != 0)
        goto LAB13;

LAB12:    *((unsigned int *)t4) = 1;

LAB14:    t16 = (t4 + 4);
    t49 = *((unsigned int *)t16);
    t50 = (~(t49));
    t51 = *((unsigned int *)t4);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(76, ng0);

LAB19:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 1448);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t0 + 1608);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    t17 = (t0 + 1048U);
    t18 = *((char **)t17);
    t17 = (t0 + 3048);
    t20 = (t17 + 56U);
    t21 = *((char **)t20);
    xsi_vlogfile_write(1, 0, 0, ng8, 6, t0, (char)118, t5, 2, (char)118, t8, 12, (char)118, t16, 12, (char)118, t18, 12, (char)119, t21, 32);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng9)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 3208);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);

LAB17:    goto LAB6;

LAB13:    t10 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB14;

LAB15:    xsi_set_current_line(74, ng0);

LAB18:    xsi_set_current_line(75, ng0);
    t17 = (t0 + 1768);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    t21 = (t0 + 1448);
    t22 = (t21 + 56U);
    t24 = *((char **)t22);
    t25 = (t0 + 1608);
    t26 = (t25 + 56U);
    t28 = *((char **)t26);
    t29 = (t0 + 1048U);
    t30 = *((char **)t29);
    xsi_vlogfile_write(1, 0, 0, ng7, 5, t0, (char)118, t20, 2, (char)118, t24, 12, (char)118, t28, 12, (char)118, t30, 12);
    goto LAB17;

LAB20:    xsi_set_current_line(83, ng0);
    xsi_vlogfile_write(1, 0, 0, ng10, 1, t0);
    goto LAB22;

}


extern void work_m_00000000002485031442_2304616118_init()
{
	static char *pe[] = {(void *)Initial_51_0};
	xsi_register_didat("work_m_00000000002485031442_2304616118", "isim/tb_satadd_isim_beh.exe.sim/work/m_00000000002485031442_2304616118.didat");
	xsi_register_executes(pe);
}
