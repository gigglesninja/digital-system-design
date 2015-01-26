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
static const char *ng0 = "C:/Users/James/Desktop/iDriveSync/IDrive-Sync/DSD LAB/Lab6bonus/timer32.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {6250000U, 0U};
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {1U, 0U};



static void Always_46_0(char *t0)
{
    char t13[8];
    char t25[8];
    char t56[8];
    char t65[8];
    char t103[8];
    char t107[8];
    char t134[8];
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
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
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
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    char *t55;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    int t89;
    int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    char *t104;
    char *t105;
    char *t106;
    char *t108;
    char *t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    char *t122;
    char *t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    char *t133;
    char *t135;
    char *t136;
    char *t137;
    char *t138;
    char *t139;
    unsigned int t140;
    int t141;

LAB0:    t1 = (t0 + 4240U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 5304);
    *((int *)t2) = 1;
    t3 = (t0 + 4272);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);

LAB5:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1480U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(54, ng0);

LAB16:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 0);
    t16 = (t10 & 1);
    *((unsigned int *)t5) = t16;
    t12 = (t13 + 4);
    t17 = *((unsigned int *)t12);
    t18 = (~(t17));
    t19 = *((unsigned int *)t13);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB17;

LAB18:
LAB19:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1800U);
    t3 = *((char **)t2);
    t2 = (t0 + 2280U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t11 = (t2 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t11);
    t16 = (t9 ^ t10);
    t17 = (t8 | t16);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t11);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t27 = (t17 & t21);
    if (t27 != 0)
        goto LAB24;

LAB21:    if (t20 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t13) = 1;

LAB24:    t28 = *((unsigned int *)t3);
    t29 = *((unsigned int *)t13);
    t30 = (t28 & t29);
    *((unsigned int *)t25) = t30;
    t14 = (t3 + 4);
    t22 = (t13 + 4);
    t23 = (t25 + 4);
    t31 = *((unsigned int *)t14);
    t32 = *((unsigned int *)t22);
    t33 = (t31 | t32);
    *((unsigned int *)t23) = t33;
    t34 = *((unsigned int *)t23);
    t35 = (t34 != 0);
    if (t35 == 1)
        goto LAB25;

LAB26:
LAB27:    t53 = (t0 + 3320);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    memset(t56, 0, 8);
    t57 = (t56 + 4);
    t58 = (t55 + 4);
    t59 = *((unsigned int *)t55);
    t60 = (t59 >> 1);
    t61 = (t60 & 1);
    *((unsigned int *)t56) = t61;
    t62 = *((unsigned int *)t58);
    t63 = (t62 >> 1);
    t64 = (t63 & 1);
    *((unsigned int *)t57) = t64;
    t66 = *((unsigned int *)t25);
    t67 = *((unsigned int *)t56);
    t68 = (t66 & t67);
    *((unsigned int *)t65) = t68;
    t69 = (t25 + 4);
    t70 = (t56 + 4);
    t71 = (t65 + 4);
    t72 = *((unsigned int *)t69);
    t73 = *((unsigned int *)t70);
    t74 = (t72 | t73);
    *((unsigned int *)t71) = t74;
    t75 = *((unsigned int *)t71);
    t76 = (t75 != 0);
    if (t76 == 1)
        goto LAB28;

LAB29:
LAB30:    t97 = (t65 + 4);
    t98 = *((unsigned int *)t97);
    t99 = (~(t98));
    t100 = *((unsigned int *)t65);
    t101 = (t100 & t99);
    t102 = (t101 != 0);
    if (t102 > 0)
        goto LAB31;

LAB32:
LAB33:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3160);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    memset(t13, 0, 8);
    t14 = (t4 + 4);
    t22 = (t12 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t12);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t14);
    t10 = *((unsigned int *)t22);
    t16 = (t9 ^ t10);
    t17 = (t8 | t16);
    t18 = *((unsigned int *)t14);
    t19 = *((unsigned int *)t22);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t27 = (t17 & t21);
    if (t27 != 0)
        goto LAB45;

LAB42:    if (t20 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t13) = 1;

LAB45:    t24 = (t13 + 4);
    t28 = *((unsigned int *)t24);
    t29 = (~(t28));
    t30 = *((unsigned int *)t13);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB46;

LAB47:
LAB48:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    t2 = (t0 + 2280U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t11 = (t2 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t11);
    t16 = (t9 ^ t10);
    t17 = (t8 | t16);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t11);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t27 = (t17 & t21);
    if (t27 != 0)
        goto LAB63;

LAB60:    if (t20 != 0)
        goto LAB62;

LAB61:    *((unsigned int *)t13) = 1;

LAB63:    t28 = *((unsigned int *)t3);
    t29 = *((unsigned int *)t13);
    t30 = (t28 & t29);
    *((unsigned int *)t25) = t30;
    t14 = (t3 + 4);
    t22 = (t13 + 4);
    t23 = (t25 + 4);
    t31 = *((unsigned int *)t14);
    t32 = *((unsigned int *)t22);
    t33 = (t31 | t32);
    *((unsigned int *)t23) = t33;
    t34 = *((unsigned int *)t23);
    t35 = (t34 != 0);
    if (t35 == 1)
        goto LAB64;

LAB65:
LAB66:    t53 = (t25 + 4);
    t59 = *((unsigned int *)t53);
    t60 = (~(t59));
    t61 = *((unsigned int *)t25);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB67;

LAB68:
LAB69:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    t2 = (t0 + 2280U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t11 = (t2 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t11);
    t16 = (t9 ^ t10);
    t17 = (t8 | t16);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t11);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t27 = (t17 & t21);
    if (t27 != 0)
        goto LAB73;

LAB70:    if (t20 != 0)
        goto LAB72;

LAB71:    *((unsigned int *)t13) = 1;

LAB73:    t28 = *((unsigned int *)t3);
    t29 = *((unsigned int *)t13);
    t30 = (t28 & t29);
    *((unsigned int *)t25) = t30;
    t14 = (t3 + 4);
    t22 = (t13 + 4);
    t23 = (t25 + 4);
    t31 = *((unsigned int *)t14);
    t32 = *((unsigned int *)t22);
    t33 = (t31 | t32);
    *((unsigned int *)t23) = t33;
    t34 = *((unsigned int *)t23);
    t35 = (t34 != 0);
    if (t35 == 1)
        goto LAB74;

LAB75:
LAB76:    t53 = (t25 + 4);
    t59 = *((unsigned int *)t53);
    t60 = (~(t59));
    t61 = *((unsigned int *)t25);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB77;

LAB78:
LAB79:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(47, ng0);

LAB9:    xsi_set_current_line(48, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t2 = (t0 + 3320);
    t4 = (t0 + 3320);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t13, t11, 2, t12, 32, 1);
    t14 = (t13 + 4);
    t6 = *((unsigned int *)t14);
    t15 = (!(t6));
    if (t15 == 1)
        goto LAB10;

LAB11:    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3320);
    t4 = (t0 + 3320);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t13, t11, 2, t12, 32, 1);
    t14 = (t13 + 4);
    t6 = *((unsigned int *)t14);
    t15 = (!(t6));
    if (t15 == 1)
        goto LAB12;

LAB13:    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3320);
    t4 = (t0 + 3320);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t13, t11, 2, t12, 32, 1);
    t14 = (t13 + 4);
    t6 = *((unsigned int *)t14);
    t15 = (!(t6));
    if (t15 == 1)
        goto LAB14;

LAB15:    goto LAB8;

LAB10:    xsi_vlogvar_assign_value(t2, t3, 0, *((unsigned int *)t13), 1);
    goto LAB11;

LAB12:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t13), 1);
    goto LAB13;

LAB14:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t13), 1);
    goto LAB15;

LAB17:    xsi_set_current_line(57, ng0);

LAB20:    xsi_set_current_line(58, ng0);
    t14 = (t0 + 3000);
    t22 = (t14 + 56U);
    t23 = *((char **)t22);
    t24 = ((char*)((ng4)));
    memset(t25, 0, 8);
    xsi_vlog_unsigned_add(t25, 32, t23, 32, t24, 32);
    t26 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t26, t25, 0, 0, 32, 0LL);
    goto LAB19;

LAB23:    t12 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB24;

LAB25:    t36 = *((unsigned int *)t25);
    t37 = *((unsigned int *)t23);
    *((unsigned int *)t25) = (t36 | t37);
    t24 = (t3 + 4);
    t26 = (t13 + 4);
    t38 = *((unsigned int *)t3);
    t39 = (~(t38));
    t40 = *((unsigned int *)t24);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (~(t42));
    t44 = *((unsigned int *)t26);
    t45 = (~(t44));
    t15 = (t39 & t41);
    t46 = (t43 & t45);
    t47 = (~(t15));
    t48 = (~(t46));
    t49 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t49 & t47);
    t50 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t50 & t48);
    t51 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t51 & t47);
    t52 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t52 & t48);
    goto LAB27;

LAB28:    t77 = *((unsigned int *)t65);
    t78 = *((unsigned int *)t71);
    *((unsigned int *)t65) = (t77 | t78);
    t79 = (t25 + 4);
    t80 = (t56 + 4);
    t81 = *((unsigned int *)t25);
    t82 = (~(t81));
    t83 = *((unsigned int *)t79);
    t84 = (~(t83));
    t85 = *((unsigned int *)t56);
    t86 = (~(t85));
    t87 = *((unsigned int *)t80);
    t88 = (~(t87));
    t89 = (t82 & t84);
    t90 = (t86 & t88);
    t91 = (~(t89));
    t92 = (~(t90));
    t93 = *((unsigned int *)t71);
    *((unsigned int *)t71) = (t93 & t91);
    t94 = *((unsigned int *)t71);
    *((unsigned int *)t71) = (t94 & t92);
    t95 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t95 & t91);
    t96 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t96 & t92);
    goto LAB30;

LAB31:    xsi_set_current_line(63, ng0);
    t104 = (t0 + 3320);
    t105 = (t104 + 56U);
    t106 = *((char **)t105);
    memset(t107, 0, 8);
    t108 = (t107 + 4);
    t109 = (t106 + 4);
    t110 = *((unsigned int *)t106);
    t111 = (t110 >> 1);
    t112 = (t111 & 1);
    *((unsigned int *)t107) = t112;
    t113 = *((unsigned int *)t109);
    t114 = (t113 >> 1);
    t115 = (t114 & 1);
    *((unsigned int *)t108) = t115;
    memset(t103, 0, 8);
    t116 = (t107 + 4);
    t117 = *((unsigned int *)t116);
    t118 = (~(t117));
    t119 = *((unsigned int *)t107);
    t120 = (t119 & t118);
    t121 = (t120 & 1U);
    if (t121 != 0)
        goto LAB37;

LAB35:    if (*((unsigned int *)t116) == 0)
        goto LAB34;

LAB36:    t122 = (t103 + 4);
    *((unsigned int *)t103) = 1;
    *((unsigned int *)t122) = 1;

LAB37:    t123 = (t103 + 4);
    t124 = (t107 + 4);
    t125 = *((unsigned int *)t107);
    t126 = (~(t125));
    *((unsigned int *)t103) = t126;
    *((unsigned int *)t123) = 0;
    if (*((unsigned int *)t124) != 0)
        goto LAB39;

LAB38:    t131 = *((unsigned int *)t103);
    *((unsigned int *)t103) = (t131 & 1U);
    t132 = *((unsigned int *)t123);
    *((unsigned int *)t123) = (t132 & 1U);
    t133 = (t0 + 3320);
    t135 = (t0 + 3320);
    t136 = (t135 + 72U);
    t137 = *((char **)t136);
    t138 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t134, t137, 2, t138, 32, 1);
    t139 = (t134 + 4);
    t140 = *((unsigned int *)t139);
    t141 = (!(t140));
    if (t141 == 1)
        goto LAB40;

LAB41:    goto LAB33;

LAB34:    *((unsigned int *)t103) = 1;
    goto LAB37;

LAB39:    t127 = *((unsigned int *)t103);
    t128 = *((unsigned int *)t124);
    *((unsigned int *)t103) = (t127 | t128);
    t129 = *((unsigned int *)t123);
    t130 = *((unsigned int *)t124);
    *((unsigned int *)t123) = (t129 | t130);
    goto LAB38;

LAB40:    xsi_vlogvar_assign_value(t133, t103, 0, *((unsigned int *)t134), 1);
    goto LAB41;

LAB44:    t23 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB45;

LAB46:    xsi_set_current_line(66, ng0);

LAB49:    xsi_set_current_line(67, ng0);
    t26 = ((char*)((ng4)));
    t53 = (t0 + 3320);
    t54 = (t0 + 3320);
    t55 = (t54 + 72U);
    t57 = *((char **)t55);
    t58 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t25, t57, 2, t58, 32, 1);
    t69 = (t25 + 4);
    t33 = *((unsigned int *)t69);
    t15 = (!(t33));
    if (t15 == 1)
        goto LAB50;

LAB51:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t25, 0, 8);
    t5 = (t25 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 2);
    t8 = (t7 & 1);
    *((unsigned int *)t25) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 2);
    t16 = (t10 & 1);
    *((unsigned int *)t5) = t16;
    memset(t13, 0, 8);
    t12 = (t25 + 4);
    t17 = *((unsigned int *)t12);
    t18 = (~(t17));
    t19 = *((unsigned int *)t25);
    t20 = (t19 & t18);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB55;

LAB53:    if (*((unsigned int *)t12) == 0)
        goto LAB52;

LAB54:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;

LAB55:    t22 = (t13 + 4);
    t23 = (t25 + 4);
    t27 = *((unsigned int *)t25);
    t28 = (~(t27));
    *((unsigned int *)t13) = t28;
    *((unsigned int *)t22) = 0;
    if (*((unsigned int *)t23) != 0)
        goto LAB57;

LAB56:    t33 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t33 & 1U);
    t34 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t34 & 1U);
    t24 = (t0 + 3320);
    t26 = (t0 + 3320);
    t53 = (t26 + 72U);
    t54 = *((char **)t53);
    t55 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t56, t54, 2, t55, 32, 1);
    t57 = (t56 + 4);
    t35 = *((unsigned int *)t57);
    t15 = (!(t35));
    if (t15 == 1)
        goto LAB58;

LAB59:    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB48;

LAB50:    xsi_vlogvar_assign_value(t53, t26, 0, *((unsigned int *)t25), 1);
    goto LAB51;

LAB52:    *((unsigned int *)t13) = 1;
    goto LAB55;

LAB57:    t29 = *((unsigned int *)t13);
    t30 = *((unsigned int *)t23);
    *((unsigned int *)t13) = (t29 | t30);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t23);
    *((unsigned int *)t22) = (t31 | t32);
    goto LAB56;

LAB58:    xsi_vlogvar_assign_value(t24, t13, 0, *((unsigned int *)t56), 1);
    goto LAB59;

LAB62:    t12 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB63;

LAB64:    t36 = *((unsigned int *)t25);
    t37 = *((unsigned int *)t23);
    *((unsigned int *)t25) = (t36 | t37);
    t24 = (t3 + 4);
    t26 = (t13 + 4);
    t38 = *((unsigned int *)t3);
    t39 = (~(t38));
    t40 = *((unsigned int *)t24);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (~(t42));
    t44 = *((unsigned int *)t26);
    t45 = (~(t44));
    t15 = (t39 & t41);
    t46 = (t43 & t45);
    t47 = (~(t15));
    t48 = (~(t46));
    t49 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t49 & t47);
    t50 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t50 & t48);
    t51 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t51 & t47);
    t52 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t52 & t48);
    goto LAB66;

LAB67:    xsi_set_current_line(75, ng0);
    t54 = (t0 + 1960U);
    t55 = *((char **)t54);
    t54 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t54, t55, 0, 0, 32, 0LL);
    goto LAB69;

LAB72:    t12 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB73;

LAB74:    t36 = *((unsigned int *)t25);
    t37 = *((unsigned int *)t23);
    *((unsigned int *)t25) = (t36 | t37);
    t24 = (t3 + 4);
    t26 = (t13 + 4);
    t38 = *((unsigned int *)t3);
    t39 = (~(t38));
    t40 = *((unsigned int *)t24);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (~(t42));
    t44 = *((unsigned int *)t26);
    t45 = (~(t44));
    t15 = (t39 & t41);
    t46 = (t43 & t45);
    t47 = (~(t15));
    t48 = (~(t46));
    t49 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t49 & t47);
    t50 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t50 & t48);
    t51 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t51 & t47);
    t52 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t52 & t48);
    goto LAB76;

LAB77:    xsi_set_current_line(78, ng0);

LAB80:    xsi_set_current_line(79, ng0);
    t54 = (t0 + 3320);
    t55 = (t54 + 56U);
    t57 = *((char **)t55);
    memset(t65, 0, 8);
    t58 = (t65 + 4);
    t69 = (t57 + 4);
    t64 = *((unsigned int *)t57);
    t66 = (t64 >> 1);
    t67 = (t66 & 1);
    *((unsigned int *)t65) = t67;
    t68 = *((unsigned int *)t69);
    t72 = (t68 >> 1);
    t73 = (t72 & 1);
    *((unsigned int *)t58) = t73;
    memset(t56, 0, 8);
    t70 = (t65 + 4);
    t74 = *((unsigned int *)t70);
    t75 = (~(t74));
    t76 = *((unsigned int *)t65);
    t77 = (t76 & t75);
    t78 = (t77 & 1U);
    if (t78 != 0)
        goto LAB84;

LAB82:    if (*((unsigned int *)t70) == 0)
        goto LAB81;

LAB83:    t71 = (t56 + 4);
    *((unsigned int *)t56) = 1;
    *((unsigned int *)t71) = 1;

LAB84:    t79 = (t56 + 4);
    t80 = (t65 + 4);
    t81 = *((unsigned int *)t65);
    t82 = (~(t81));
    *((unsigned int *)t56) = t82;
    *((unsigned int *)t79) = 0;
    if (*((unsigned int *)t80) != 0)
        goto LAB86;

LAB85:    t87 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t87 & 1U);
    t88 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t88 & 1U);
    t97 = (t0 + 3320);
    t104 = (t0 + 3320);
    t105 = (t104 + 72U);
    t106 = *((char **)t105);
    t108 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t103, t106, 2, t108, 32, 1);
    t109 = (t103 + 4);
    t91 = *((unsigned int *)t109);
    t89 = (!(t91));
    if (t89 == 1)
        goto LAB87;

LAB88:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1960U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    t16 = (t10 & 1);
    *((unsigned int *)t2) = t16;
    t5 = (t0 + 3320);
    t11 = (t0 + 3320);
    t12 = (t11 + 72U);
    t14 = *((char **)t12);
    t22 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t25, t14, 2, t22, 32, 1);
    t23 = (t25 + 4);
    t17 = *((unsigned int *)t23);
    t15 = (!(t17));
    if (t15 == 1)
        goto LAB89;

LAB90:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1960U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 1);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 1);
    t16 = (t10 & 1);
    *((unsigned int *)t2) = t16;
    t5 = (t0 + 3320);
    t11 = (t0 + 3320);
    t12 = (t11 + 72U);
    t14 = *((char **)t12);
    t22 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t25, t14, 2, t22, 32, 1);
    t23 = (t25 + 4);
    t17 = *((unsigned int *)t23);
    t15 = (!(t17));
    if (t15 == 1)
        goto LAB91;

LAB92:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1960U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 2);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 2);
    t16 = (t10 & 1);
    *((unsigned int *)t2) = t16;
    t5 = (t0 + 3320);
    t11 = (t0 + 3320);
    t12 = (t11 + 72U);
    t14 = *((char **)t12);
    t22 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t25, t14, 2, t22, 32, 1);
    t23 = (t25 + 4);
    t17 = *((unsigned int *)t23);
    t15 = (!(t17));
    if (t15 == 1)
        goto LAB93;

LAB94:    goto LAB79;

LAB81:    *((unsigned int *)t56) = 1;
    goto LAB84;

LAB86:    t83 = *((unsigned int *)t56);
    t84 = *((unsigned int *)t80);
    *((unsigned int *)t56) = (t83 | t84);
    t85 = *((unsigned int *)t79);
    t86 = *((unsigned int *)t80);
    *((unsigned int *)t79) = (t85 | t86);
    goto LAB85;

LAB87:    xsi_vlogvar_assign_value(t97, t56, 0, *((unsigned int *)t103), 1);
    goto LAB88;

LAB89:    xsi_vlogvar_assign_value(t5, t13, 0, *((unsigned int *)t25), 1);
    goto LAB90;

LAB91:    xsi_vlogvar_assign_value(t5, t13, 0, *((unsigned int *)t25), 1);
    goto LAB92;

LAB93:    xsi_vlogvar_assign_value(t5, t13, 0, *((unsigned int *)t25), 1);
    goto LAB94;

}

static void Always_88_1(char *t0)
{
    char t9[8];
    char t10[8];
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    int t19;
    char *t20;
    unsigned int t21;
    int t22;
    int t23;
    char *t24;
    unsigned int t25;
    int t26;
    int t27;
    unsigned int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    int t32;
    int t33;

LAB0:    t1 = (t0 + 4488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 5320);
    *((int *)t2) = 1;
    t3 = (t0 + 4520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(88, ng0);

LAB5:    xsi_set_current_line(89, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2680);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2280U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:
LAB13:    goto LAB2;

LAB7:    xsi_set_current_line(92, ng0);
    t4 = (t0 + 3000);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t0 + 2680);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB13;

LAB9:    xsi_set_current_line(94, ng0);
    t4 = (t0 + 3160);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t0 + 2680);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB13;

LAB11:    xsi_set_current_line(96, ng0);
    t4 = (t0 + 3320);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t0 + 2680);
    t12 = (t0 + 2680);
    t13 = (t12 + 72U);
    t14 = *((char **)t13);
    t15 = ((char*)((ng5)));
    t16 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t9, t10, t11, ((int*)(t14)), 2, t15, 32, 1, t16, 32, 1);
    t17 = (t9 + 4);
    t18 = *((unsigned int *)t17);
    t19 = (!(t18));
    t20 = (t10 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (!(t21));
    t23 = (t19 && t22);
    t24 = (t11 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (!(t25));
    t27 = (t23 && t26);
    if (t27 == 1)
        goto LAB14;

LAB15:    goto LAB13;

LAB14:    t28 = *((unsigned int *)t11);
    t29 = (t28 + 0);
    t30 = *((unsigned int *)t9);
    t31 = *((unsigned int *)t10);
    t32 = (t30 - t31);
    t33 = (t32 + 1);
    xsi_vlogvar_assign_value(t8, t7, t29, *((unsigned int *)t10), t33);
    goto LAB15;

}

static void Always_101_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 4736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 5336);
    *((int *)t2) = 1;
    t3 = (t0 + 4768);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(101, ng0);

LAB5:    xsi_set_current_line(102, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2840);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1800U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 1, t2, 1);
    if (t6 == 1)
        goto LAB7;

LAB8:
LAB9:    goto LAB2;

LAB7:    xsi_set_current_line(105, ng0);
    t4 = (t0 + 2680);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB9;

}

static void Cont_109_3(char *t0)
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

LAB0:    t1 = (t0 + 4984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5432);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5352);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void work_m_00000000000760471976_0770627329_init()
{
	static char *pe[] = {(void *)Always_46_0,(void *)Always_88_1,(void *)Always_101_2,(void *)Cont_109_3};
	xsi_register_didat("work_m_00000000000760471976_0770627329", "isim/tb_ledtimer_isim_beh.exe.sim/work/m_00000000000760471976_0770627329.didat");
	xsi_register_executes(pe);
}
