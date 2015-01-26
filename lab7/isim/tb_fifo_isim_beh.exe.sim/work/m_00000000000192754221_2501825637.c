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
static const char *ng0 = "C:/Users/James/Desktop/iDriveSync/IDrive-Sync/DSD LAB/lab7/tb_fifo.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static const char *ng3 = "fifo_vectors.txt";
static const char *ng4 = "r";
static const char *ng5 = "%x %x %x %x %x %x %x";
static const char *ng6 = "%d Pass: dout: %x";
static const char *ng7 = "%d FAIL: dout: %x(%x)";
static const char *ng8 = "%d Pass: full: %x";
static const char *ng9 = "%d FAIL: full: %x (%x)";
static const char *ng10 = "%d Pass: empty: %x";
static const char *ng11 = "%d FAIL: empty: %x (%x)";
static const char *ng12 = "(%t)PASSED: All vectors passed";
static const char *ng13 = "(%t)FAILED: %d vectors failed";



static void Initial_53_0(char *t0)
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

LAB0:    t1 = (t0 + 5568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);

LAB4:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 5376);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(56, ng0);

LAB6:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 5376);
    xsi_process_wait(t3, 30000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(56, ng0);
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

static void Initial_67_1(char *t0)
{
    char t5[8];
    char t20[8];
    char t30[8];
    char t34[8];
    char t38[8];
    char t42[8];
    char t46[8];
    char t50[8];
    char t54[8];
    char t58[8];
    char t80[16];
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
    char *t19;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t35;
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
    char *t45;
    char *t47;
    char *t48;
    char *t49;
    char *t51;
    char *t52;
    char *t53;
    char *t55;
    char *t56;
    char *t57;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;

LAB0:    t1 = (t0 + 5816U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);

LAB4:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 5624);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(78, ng0);
    *((int *)t5) = xsi_vlogfile_file_open_of_cname_ctype(ng3, ng4);
    t2 = (t5 + 4);
    *((int *)t2) = 0;
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t5, 0, 0, 32);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 5624);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 6136);
    *((int *)t2) = 1;
    t3 = (t0 + 5848);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(84, ng0);

LAB8:    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 3048);
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

LAB10:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = ((char*)((ng1)));
    memset(t5, 0, 8);
    xsi_vlog_signed_equal(t5, 32, t4, 32, t6, 32);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t5);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB46;

LAB47:    xsi_set_current_line(124, ng0);

LAB50:    xsi_set_current_line(125, ng0);
    t2 = xsi_vlog_time(t80, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 2728);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    xsi_vlogfile_write(1, 0, 0, ng13, 3, t0, (char)118, t80, 64, (char)119, t6, 32);

LAB48:    goto LAB1;

LAB9:    xsi_set_current_line(84, ng0);

LAB11:    xsi_set_current_line(85, ng0);
    t16 = (t0 + 3208);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng1)));
    memset(t20, 0, 8);
    xsi_vlog_signed_not_equal(t20, 32, t18, 32, t19, 32);
    t21 = (t20 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t20);
    t25 = (t24 & t23);
    t26 = (t25 != 0);
    if (t26 > 0)
        goto LAB12;

LAB13:
LAB14:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t4, 32, t6, 32);
    t7 = (t0 + 3208);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 32);
    goto LAB8;

LAB12:    xsi_set_current_line(85, ng0);

LAB15:    xsi_set_current_line(86, ng0);
    t27 = (t0 + 3528);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t31 = (t0 + 3688);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    xsi_vlog_bit_copy(t30, 0, t33, 0, 32);
    t35 = (t0 + 3848);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    xsi_vlog_bit_copy(t34, 0, t37, 0, 32);
    t39 = (t0 + 4008);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    xsi_vlog_bit_copy(t38, 0, t41, 0, 32);
    t43 = (t0 + 4168);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    xsi_vlog_bit_copy(t42, 0, t45, 0, 32);
    t47 = (t0 + 4328);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    xsi_vlog_bit_copy(t46, 0, t49, 0, 32);
    t51 = (t0 + 4488);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    xsi_vlog_bit_copy(t50, 0, t53, 0, 32);
    t55 = (t0 + 4648);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    xsi_vlog_bit_copy(t54, 0, t57, 0, 32);
    *((int *)t58) = xsi_vlogfile_sscanf(t29, 800, ng5, 8, t0, (char)119, t30, 32, (char)119, t34, 32, (char)119, t38, 32, (char)119, t42, 32, (char)119, t46, 32, (char)119, t50, 32, (char)119, t54, 32);
    t59 = (t58 + 4);
    *((int *)t59) = 0;
    t60 = (t0 + 3688);
    xsi_vlogvar_assign_value(t60, t30, 0, 0, 32);
    t61 = (t0 + 3848);
    xsi_vlogvar_assign_value(t61, t34, 0, 0, 32);
    t62 = (t0 + 4008);
    xsi_vlogvar_assign_value(t62, t38, 0, 0, 32);
    t63 = (t0 + 4168);
    xsi_vlogvar_assign_value(t63, t42, 0, 0, 32);
    t64 = (t0 + 4328);
    xsi_vlogvar_assign_value(t64, t46, 0, 0, 32);
    t65 = (t0 + 4488);
    xsi_vlogvar_assign_value(t65, t50, 0, 0, 32);
    t66 = (t0 + 4648);
    xsi_vlogvar_assign_value(t66, t54, 0, 0, 32);
    t67 = (t0 + 3368);
    xsi_vlogvar_assign_value(t67, t58, 0, 0, 32);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2088);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2248);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 1);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 4008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2568);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 8);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2408);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 1);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 6152);
    *((int *)t2) = 1;
    t3 = (t0 + 5848);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 4);
    t11 = *((unsigned int *)t6);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB17;

LAB18:
LAB19:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    memset(t5, 0, 8);
    t6 = (t4 + 4);
    t8 = (t7 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t8);
    t22 = (t14 ^ t15);
    t23 = (t13 | t22);
    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t8);
    t26 = (t24 | t25);
    t68 = (~(t26));
    t69 = (t23 & t68);
    if (t69 != 0)
        goto LAB33;

LAB30:    if (t26 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t5) = 1;

LAB33:    t10 = (t5 + 4);
    t70 = *((unsigned int *)t10);
    t71 = (~(t70));
    t72 = *((unsigned int *)t5);
    t73 = (t72 & t71);
    t74 = (t73 != 0);
    if (t74 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(102, ng0);

LAB37:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    t6 = (t0 + 4488);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    xsi_vlogfile_write(1, 0, 0, ng9, 4, t0, (char)119, t4, 32, (char)118, t7, 1, (char)119, t9, 32);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t4, 32, t6, 32);
    t7 = (t0 + 2728);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 32);

LAB36:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 4648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 1208U);
    t7 = *((char **)t6);
    memset(t5, 0, 8);
    t6 = (t4 + 4);
    t8 = (t7 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t8);
    t22 = (t14 ^ t15);
    t23 = (t13 | t22);
    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t8);
    t26 = (t24 | t25);
    t68 = (~(t26));
    t69 = (t23 & t68);
    if (t69 != 0)
        goto LAB41;

LAB38:    if (t26 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t5) = 1;

LAB41:    t10 = (t5 + 4);
    t70 = *((unsigned int *)t10);
    t71 = (~(t70));
    t72 = *((unsigned int *)t5);
    t73 = (t72 & t71);
    t74 = (t73 != 0);
    if (t74 > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(108, ng0);

LAB45:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 1208U);
    t7 = *((char **)t6);
    t6 = (t0 + 4648);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    xsi_vlogfile_write(1, 0, 0, ng11, 4, t0, (char)119, t4, 32, (char)118, t7, 1, (char)119, t9, 32);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t4, 32, t6, 32);
    t7 = (t0 + 2728);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 32);

LAB44:    goto LAB14;

LAB17:    xsi_set_current_line(92, ng0);

LAB20:    xsi_set_current_line(93, ng0);
    t7 = (t0 + 4328);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t0 + 1368U);
    t16 = *((char **)t10);
    memset(t5, 0, 8);
    t10 = (t9 + 4);
    t17 = (t16 + 4);
    t22 = *((unsigned int *)t9);
    t23 = *((unsigned int *)t16);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t10);
    t26 = *((unsigned int *)t17);
    t68 = (t25 ^ t26);
    t69 = (t24 | t68);
    t70 = *((unsigned int *)t10);
    t71 = *((unsigned int *)t17);
    t72 = (t70 | t71);
    t73 = (~(t72));
    t74 = (t69 & t73);
    if (t74 != 0)
        goto LAB24;

LAB21:    if (t72 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t5) = 1;

LAB24:    t19 = (t5 + 4);
    t75 = *((unsigned int *)t19);
    t76 = (~(t75));
    t77 = *((unsigned int *)t5);
    t78 = (t77 & t76);
    t79 = (t78 != 0);
    if (t79 > 0)
        goto LAB25;

LAB26:    xsi_set_current_line(95, ng0);

LAB29:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 1368U);
    t7 = *((char **)t6);
    t6 = (t0 + 4328);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    xsi_vlogfile_write(1, 0, 0, ng7, 4, t0, (char)119, t4, 32, (char)118, t7, 8, (char)119, t9, 32);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t4, 32, t6, 32);
    t7 = (t0 + 2728);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 32);

LAB27:    goto LAB19;

LAB23:    t18 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB24;

LAB25:    xsi_set_current_line(93, ng0);

LAB28:    xsi_set_current_line(94, ng0);
    t21 = (t0 + 3208);
    t27 = (t21 + 56U);
    t28 = *((char **)t27);
    t29 = (t0 + 1368U);
    t31 = *((char **)t29);
    xsi_vlogfile_write(1, 0, 0, ng6, 3, t0, (char)119, t28, 32, (char)118, t31, 8);
    goto LAB27;

LAB32:    t9 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB33;

LAB34:    xsi_set_current_line(101, ng0);
    t16 = (t0 + 3208);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 1048U);
    t21 = *((char **)t19);
    xsi_vlogfile_write(1, 0, 0, ng8, 3, t0, (char)119, t18, 32, (char)118, t21, 1);
    goto LAB36;

LAB40:    t9 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB41;

LAB42:    xsi_set_current_line(107, ng0);
    t16 = (t0 + 3208);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 1208U);
    t21 = *((char **)t19);
    xsi_vlogfile_write(1, 0, 0, ng10, 3, t0, (char)119, t18, 32, (char)118, t21, 1);
    goto LAB44;

LAB46:    xsi_set_current_line(122, ng0);

LAB49:    xsi_set_current_line(123, ng0);
    t8 = xsi_vlog_time(t80, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng12, 2, t0, (char)118, t80, 64);
    goto LAB48;

}


extern void work_m_00000000000192754221_2501825637_init()
{
	static char *pe[] = {(void *)Initial_53_0,(void *)Initial_67_1};
	xsi_register_didat("work_m_00000000000192754221_2501825637", "isim/tb_fifo_isim_beh.exe.sim/work/m_00000000000192754221_2501825637.didat");
	xsi_register_executes(pe);
}
