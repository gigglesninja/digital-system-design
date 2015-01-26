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
static const char *ng0 = "C:/Users/James/Desktop/iDriveSync/IDrive-Sync/DSD LAB/lab7/netgen/par/fifo_timesim.v";
static const char *ng1 = "netgen/par/fifo_timesim.sdf";
static const char *ng2 = "";
static const char *ng3 = "TYPICAL";
static const char *ng4 = "1.0:1.0:1.0";
static const char *ng5 = "FROM_MTM";
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {0U, 0U};



static void Initial_211_0(char *t0)
{

LAB0:    xsi_set_current_line(211, ng0);
    xsi_vlog_sdfAnnotate(t0, ng1, -1, ng2, ng2, ng2, ng3, ng4, ng5);

LAB1:    return;
}

static void implSig1_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 31256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng6)));
    t3 = (t0 + 33688);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig2_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 31504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng7)));
    t3 = (t0 + 33752);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig3_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 31752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng7)));
    t3 = (t0 + 33816);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig4_execute(char *t0)
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
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 32000U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 25848U);
    t4 = *((char **)t2);
    t2 = (t0 + 25688U);
    t5 = *((char **)t2);
    t2 = (t0 + 25528U);
    t6 = *((char **)t2);
    t2 = ((char*)((ng7)));
    t7 = ((char*)((ng7)));
    t8 = ((char*)((ng7)));
    t9 = ((char*)((ng7)));
    t10 = ((char*)((ng7)));
    t11 = ((char*)((ng7)));
    xsi_vlogtype_concat(t3, 9, 9, 9U, t11, 1, t10, 1, t9, 1, t8, 1, t7, 1, t2, 1, t6, 1, t5, 1, t4, 1);
    t12 = (t0 + 33880);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 511U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 8);
    t25 = (t0 + 33560);
    *((int *)t25) = 1;

LAB1:    return;
}

static void implSig5_execute(char *t0)
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
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 32248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 26328U);
    t4 = *((char **)t2);
    t2 = (t0 + 26168U);
    t5 = *((char **)t2);
    t2 = (t0 + 26008U);
    t6 = *((char **)t2);
    t2 = ((char*)((ng7)));
    t7 = ((char*)((ng7)));
    t8 = ((char*)((ng7)));
    t9 = ((char*)((ng7)));
    t10 = ((char*)((ng7)));
    t11 = ((char*)((ng7)));
    xsi_vlogtype_concat(t3, 9, 9, 9U, t11, 1, t10, 1, t9, 1, t8, 1, t7, 1, t2, 1, t6, 1, t5, 1, t4, 1);
    t12 = (t0 + 33944);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 511U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 8);
    t25 = (t0 + 33576);
    *((int *)t25) = 1;

LAB1:    return;
}

static void implSig6_execute(char *t0)
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
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    t1 = (t0 + 32496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 26488U);
    t4 = *((char **)t2);
    t2 = (t0 + 26648U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng7)));
    t6 = ((char*)((ng7)));
    t7 = ((char*)((ng7)));
    t8 = ((char*)((ng7)));
    t9 = ((char*)((ng7)));
    t10 = ((char*)((ng7)));
    t11 = (t0 + 26808U);
    t12 = *((char **)t11);
    t11 = (t0 + 26968U);
    t13 = *((char **)t11);
    t11 = ((char*)((ng7)));
    t14 = ((char*)((ng7)));
    t15 = ((char*)((ng7)));
    t16 = ((char*)((ng7)));
    t17 = ((char*)((ng7)));
    t18 = ((char*)((ng7)));
    t19 = (t0 + 27128U);
    t20 = *((char **)t19);
    t19 = (t0 + 27288U);
    t21 = *((char **)t19);
    t19 = ((char*)((ng7)));
    t22 = ((char*)((ng7)));
    t23 = ((char*)((ng7)));
    t24 = ((char*)((ng7)));
    t25 = ((char*)((ng7)));
    t26 = ((char*)((ng7)));
    t27 = (t0 + 27448U);
    t28 = *((char **)t27);
    t27 = (t0 + 27608U);
    t29 = *((char **)t27);
    t27 = ((char*)((ng7)));
    t30 = ((char*)((ng7)));
    t31 = ((char*)((ng7)));
    t32 = ((char*)((ng7)));
    t33 = ((char*)((ng7)));
    t34 = ((char*)((ng7)));
    xsi_vlogtype_concat(t3, 32, 32, 32U, t34, 1, t33, 1, t32, 1, t31, 1, t30, 1, t27, 1, t29, 1, t28, 1, t26, 1, t25, 1, t24, 1, t23, 1, t22, 1, t19, 1, t21, 1, t20, 1, t18, 1, t17, 1, t16, 1, t15, 1, t14, 1, t11, 1, t13, 1, t12, 1, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t2, 1, t5, 1, t4, 1);
    t35 = (t0 + 34008);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t3, 8);
    xsi_driver_vfirst_trans(t35, 0, 31);
    t40 = (t0 + 33592);
    *((int *)t40) = 1;

LAB1:    return;
}

static void implSig7_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 32744U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng7)));
    t3 = (t0 + 34072);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 15U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 3);

LAB1:    return;
}

static void implSig8_execute(char *t0)
{
    char t3[8];
    char t5[8];
    char t15[8];
    char t31[8];
    char t41[8];
    char t57[8];
    char t67[8];
    char t83[8];
    char t93[8];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    char *t102;
    char *t103;
    char *t104;
    char *t105;
    char *t106;
    char *t107;
    char *t108;
    char *t109;
    char *t110;
    char *t111;
    char *t112;

LAB0:    t1 = (t0 + 32992U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 28408U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t5 + 4);
    t6 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 0);
    t9 = (t8 & 1);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 0);
    t12 = (t11 & 1);
    *((unsigned int *)t2) = t12;
    t13 = (t0 + 28408U);
    t14 = *((char **)t13);
    memset(t15, 0, 8);
    t13 = (t15 + 4);
    t16 = (t14 + 4);
    t17 = *((unsigned int *)t14);
    t18 = (t17 >> 1);
    t19 = (t18 & 1);
    *((unsigned int *)t15) = t19;
    t20 = *((unsigned int *)t16);
    t21 = (t20 >> 1);
    t22 = (t21 & 1);
    *((unsigned int *)t13) = t22;
    t23 = ((char*)((ng7)));
    t24 = ((char*)((ng7)));
    t25 = ((char*)((ng7)));
    t26 = ((char*)((ng7)));
    t27 = ((char*)((ng7)));
    t28 = ((char*)((ng7)));
    t29 = (t0 + 28408U);
    t30 = *((char **)t29);
    memset(t31, 0, 8);
    t29 = (t31 + 4);
    t32 = (t30 + 4);
    t33 = *((unsigned int *)t30);
    t34 = (t33 >> 2);
    t35 = (t34 & 1);
    *((unsigned int *)t31) = t35;
    t36 = *((unsigned int *)t32);
    t37 = (t36 >> 2);
    t38 = (t37 & 1);
    *((unsigned int *)t29) = t38;
    t39 = (t0 + 28408U);
    t40 = *((char **)t39);
    memset(t41, 0, 8);
    t39 = (t41 + 4);
    t42 = (t40 + 4);
    t43 = *((unsigned int *)t40);
    t44 = (t43 >> 3);
    t45 = (t44 & 1);
    *((unsigned int *)t41) = t45;
    t46 = *((unsigned int *)t42);
    t47 = (t46 >> 3);
    t48 = (t47 & 1);
    *((unsigned int *)t39) = t48;
    t49 = ((char*)((ng7)));
    t50 = ((char*)((ng7)));
    t51 = ((char*)((ng7)));
    t52 = ((char*)((ng7)));
    t53 = ((char*)((ng7)));
    t54 = ((char*)((ng7)));
    t55 = (t0 + 28408U);
    t56 = *((char **)t55);
    memset(t57, 0, 8);
    t55 = (t57 + 4);
    t58 = (t56 + 4);
    t59 = *((unsigned int *)t56);
    t60 = (t59 >> 4);
    t61 = (t60 & 1);
    *((unsigned int *)t57) = t61;
    t62 = *((unsigned int *)t58);
    t63 = (t62 >> 4);
    t64 = (t63 & 1);
    *((unsigned int *)t55) = t64;
    t65 = (t0 + 28408U);
    t66 = *((char **)t65);
    memset(t67, 0, 8);
    t65 = (t67 + 4);
    t68 = (t66 + 4);
    t69 = *((unsigned int *)t66);
    t70 = (t69 >> 5);
    t71 = (t70 & 1);
    *((unsigned int *)t67) = t71;
    t72 = *((unsigned int *)t68);
    t73 = (t72 >> 5);
    t74 = (t73 & 1);
    *((unsigned int *)t65) = t74;
    t75 = ((char*)((ng7)));
    t76 = ((char*)((ng7)));
    t77 = ((char*)((ng7)));
    t78 = ((char*)((ng7)));
    t79 = ((char*)((ng7)));
    t80 = ((char*)((ng7)));
    t81 = (t0 + 28408U);
    t82 = *((char **)t81);
    memset(t83, 0, 8);
    t81 = (t83 + 4);
    t84 = (t82 + 4);
    t85 = *((unsigned int *)t82);
    t86 = (t85 >> 6);
    t87 = (t86 & 1);
    *((unsigned int *)t83) = t87;
    t88 = *((unsigned int *)t84);
    t89 = (t88 >> 6);
    t90 = (t89 & 1);
    *((unsigned int *)t81) = t90;
    t91 = (t0 + 28408U);
    t92 = *((char **)t91);
    memset(t93, 0, 8);
    t91 = (t93 + 4);
    t94 = (t92 + 4);
    t95 = *((unsigned int *)t92);
    t96 = (t95 >> 7);
    t97 = (t96 & 1);
    *((unsigned int *)t93) = t97;
    t98 = *((unsigned int *)t94);
    t99 = (t98 >> 7);
    t100 = (t99 & 1);
    *((unsigned int *)t91) = t100;
    t101 = ((char*)((ng7)));
    t102 = ((char*)((ng7)));
    t103 = ((char*)((ng7)));
    t104 = ((char*)((ng7)));
    t105 = ((char*)((ng7)));
    t106 = ((char*)((ng7)));
    xsi_vlogtype_concat(t3, 32, 32, 32U, t106, 1, t105, 1, t104, 1, t103, 1, t102, 1, t101, 1, t93, 1, t83, 1, t80, 1, t79, 1, t78, 1, t77, 1, t76, 1, t75, 1, t67, 1, t57, 1, t54, 1, t53, 1, t52, 1, t51, 1, t50, 1, t49, 1, t41, 1, t31, 1, t28, 1, t27, 1, t26, 1, t25, 1, t24, 1, t23, 1, t15, 1, t5, 1);
    t107 = (t0 + 34136);
    t108 = (t107 + 56U);
    t109 = *((char **)t108);
    t110 = (t109 + 56U);
    t111 = *((char **)t110);
    memcpy(t111, t3, 8);
    xsi_driver_vfirst_trans(t107, 0, 31);
    t112 = (t0 + 33608);
    *((int *)t112) = 1;

LAB1:    return;
}

static void implSig9_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 33240U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng7)));
    t3 = (t0 + 34200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 15U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 3);

LAB1:    return;
}


extern void work_m_00000000000497674549_0948142031_init()
{
	static char *pe[] = {(void *)Initial_211_0,(void *)implSig1_execute,(void *)implSig2_execute,(void *)implSig3_execute,(void *)implSig4_execute,(void *)implSig5_execute,(void *)implSig6_execute,(void *)implSig7_execute,(void *)implSig8_execute,(void *)implSig9_execute};
	xsi_register_didat("work_m_00000000000497674549_0948142031", "isim/tb_fifo_isim_par.exe.sim/work/m_00000000000497674549_0948142031.didat");
	xsi_register_executes(pe);
}
