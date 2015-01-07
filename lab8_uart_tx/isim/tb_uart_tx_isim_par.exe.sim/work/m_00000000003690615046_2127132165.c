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
static const char *ng0 = "C:/Users/James/Desktop/iDriveSync/IDrive-Sync/DSD LAB/lab8/tb_uart_tx.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {1, 0};
static const char *ng4 = "%t: FAIL, expected startbit=0, found startbit =1!";
static int ng5[] = {8, 0};
static int ng6[] = {7, 0};
static const char *ng7 = "%t: FAIL, expected stopbit=1, found stopbit =1!";
static const char *ng8 = "%t: FAIL,expected serial out of %h, found: %h";
static const char *ng9 = "%t: Pass,got expected serial out of %h";
static unsigned int ng10[] = {3U, 0U};
static const char *ng11 = "%t: PASS,found TXDONE = '1'";
static unsigned int ng12[] = {0U, 0U};
static const char *ng13 = "%t: FAIL,failed to clear TXDONE bit to 0";
static const char *ng14 = "%t: PASS,cleared TXDONE bit";
static const char *ng15 = "Checking if FIFO FULL bit is %h";
static const char *ng16 = "%t: FAIL, TXFULL bit is: %h, expected: %h";
static const char *ng17 = "%t: PASS, TXFULL bit is expected value";
static int ng18[] = {1024, 0};
static unsigned int ng19[] = {26U, 0U};
static const char *ng20 = "%t: FAIL, PERIOD register write/read failed: %h, expected: %h";
static const char *ng21 = "%t: PASS, Period register read/write";
static unsigned int ng22[] = {85U, 0U};
static unsigned int ng23[] = {226U, 0U};
static unsigned int ng24[] = {57U, 0U};
static int ng25[] = {19, 0};
static int ng26[] = {48, 0};
static const char *ng27 = "%t: All vectors done.";
static const char *ng28 = "%t: FAIL, had %d errors during simulation.";
static const char *ng29 = "%t: PASS, no errors during simulation.";
static const char *ng30 = "%t: TIMEOUT, not all characters processed.";
static const char *ng31 = "The timeout is probably due to the TXDONE bit never going high.";



static int sp_getserialdata(char *t1, char *t2)
{
    char t7[8];
    char t34[8];
    char t36[16];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
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
    char *t31;
    char *t32;
    char *t33;
    char *t35;
    int t37;
    char *t38;
    char *t39;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1392);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(78, ng0);

LAB5:    xsi_set_current_line(79, ng0);
    t5 = ((char*)((ng1)));
    t6 = (t1 + 5480);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);
    xsi_set_current_line(80, ng0);
    t4 = (t1 + 3480U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t7, 0, 8);
    t6 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t6);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t6);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t7) = 1;

LAB9:    t22 = (t7 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t7);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(84, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 8640000LL);
    *((char **)t3) = &&LAB15;
    t0 = 1;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB8:    t21 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(80, ng0);

LAB13:    xsi_set_current_line(81, ng0);
    t28 = (t2 + 88U);
    t29 = *((char **)t28);
    t30 = (t29 + 0U);
    xsi_wp_set_status(t30, 1);
    *((char **)t3) = &&LAB14;
    goto LAB1;

LAB14:    goto LAB12;

LAB15:    xsi_set_current_line(85, ng0);
    t6 = (t1 + 3480U);
    t8 = *((char **)t6);
    t6 = ((char*)((ng1)));
    memset(t7, 0, 8);
    t21 = (t8 + 4);
    t22 = (t6 + 4);
    t9 = *((unsigned int *)t8);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t21);
    t13 = *((unsigned int *)t22);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t21);
    t17 = *((unsigned int *)t22);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB16:    if (t18 != 0)
        goto LAB18;

LAB19:    t29 = (t7 + 4);
    t23 = *((unsigned int *)t29);
    t24 = (~(t23));
    t25 = *((unsigned int *)t7);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB20;

LAB21:
LAB22:    xsi_set_current_line(89, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 5640);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(90, ng0);

LAB24:    t4 = (t1 + 5640);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng5)));
    memset(t7, 0, 8);
    xsi_vlog_signed_not_equal(t7, 32, t6, 32, t8, 32);
    t21 = (t7 + 4);
    t9 = *((unsigned int *)t21);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB25;

LAB26:    xsi_set_current_line(98, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 17280000LL);
    *((char **)t3) = &&LAB31;
    t0 = 1;
    goto LAB1;

LAB17:    *((unsigned int *)t7) = 1;
    goto LAB19;

LAB18:    t28 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(85, ng0);

LAB23:    xsi_set_current_line(86, ng0);
    t30 = (t1 + 5320);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = ((char*)((ng3)));
    memset(t34, 0, 8);
    xsi_vlog_signed_add(t34, 32, t32, 32, t33, 32);
    t35 = (t1 + 5320);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 32);
    xsi_set_current_line(87, ng0);
    t4 = xsi_vlog_time(t36, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 1392);
    xsi_vlogfile_write(1, 0, 0, ng4, 2, t5, (char)118, t36, 64);
    goto LAB22;

LAB25:    xsi_set_current_line(90, ng0);

LAB27:    xsi_set_current_line(91, ng0);
    t22 = (t1 + 5480);
    t28 = (t22 + 56U);
    t29 = *((char **)t28);
    t30 = ((char*)((ng3)));
    memset(t34, 0, 8);
    xsi_vlog_unsigned_rshift(t34, 8, t29, 8, t30, 32);
    t31 = (t1 + 5480);
    xsi_vlogvar_assign_value(t31, t34, 0, 0, 8);
    xsi_set_current_line(92, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 17280000LL);
    *((char **)t3) = &&LAB28;
    t0 = 1;
    goto LAB1;

LAB28:    xsi_set_current_line(93, ng0);
    t6 = (t1 + 3480U);
    t8 = *((char **)t6);
    t6 = (t1 + 5480);
    t21 = (t1 + 5480);
    t22 = (t21 + 72U);
    t28 = *((char **)t22);
    t29 = ((char*)((ng6)));
    xsi_vlog_generic_convert_bit_index(t7, t28, 2, t29, 32, 1);
    t30 = (t7 + 4);
    t9 = *((unsigned int *)t30);
    t37 = (!(t9));
    if (t37 == 1)
        goto LAB29;

LAB30:    xsi_set_current_line(94, ng0);
    t4 = (t1 + 5640);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = ((char*)((ng3)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t6, 32, t8, 32);
    t21 = (t1 + 5640);
    xsi_vlogvar_assign_value(t21, t7, 0, 0, 32);
    goto LAB24;

LAB29:    xsi_vlogvar_assign_value(t6, t8, 0, *((unsigned int *)t7), 1);
    goto LAB30;

LAB31:    xsi_set_current_line(99, ng0);
    t6 = (t1 + 3480U);
    t8 = *((char **)t6);
    t6 = ((char*)((ng3)));
    memset(t7, 0, 8);
    t21 = (t8 + 4);
    t22 = (t6 + 4);
    t9 = *((unsigned int *)t8);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t21);
    t13 = *((unsigned int *)t22);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t21);
    t17 = *((unsigned int *)t22);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB33;

LAB32:    if (t18 != 0)
        goto LAB34;

LAB35:    t29 = (t7 + 4);
    t23 = *((unsigned int *)t29);
    t24 = (~(t23));
    t25 = *((unsigned int *)t7);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB36;

LAB37:
LAB38:    xsi_set_current_line(104, ng0);
    t4 = (t1 + 5480);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t1 + 6280);
    t21 = (t8 + 56U);
    t22 = *((char **)t21);
    memset(t7, 0, 8);
    t28 = (t6 + 4);
    t29 = (t22 + 4);
    t9 = *((unsigned int *)t6);
    t10 = *((unsigned int *)t22);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t28);
    t13 = *((unsigned int *)t29);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t28);
    t17 = *((unsigned int *)t29);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB41;

LAB40:    if (t18 != 0)
        goto LAB42;

LAB43:    t31 = (t7 + 4);
    t23 = *((unsigned int *)t31);
    t24 = (~(t23));
    t25 = *((unsigned int *)t7);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB44;

LAB45:    xsi_set_current_line(107, ng0);

LAB48:    xsi_set_current_line(108, ng0);
    t4 = xsi_vlog_time(t36, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 6280);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t21 = (t1 + 1392);
    xsi_vlogfile_write(1, 0, 0, ng9, 3, t21, (char)118, t36, 64, (char)118, t8, 8);

LAB46:    goto LAB4;

LAB33:    *((unsigned int *)t7) = 1;
    goto LAB35;

LAB34:    t28 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB35;

LAB36:    xsi_set_current_line(99, ng0);

LAB39:    xsi_set_current_line(100, ng0);
    t30 = (t1 + 5320);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = ((char*)((ng3)));
    memset(t34, 0, 8);
    xsi_vlog_signed_add(t34, 32, t32, 32, t33, 32);
    t35 = (t1 + 5320);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 32);
    xsi_set_current_line(101, ng0);
    t4 = xsi_vlog_time(t36, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 1392);
    xsi_vlogfile_write(1, 0, 0, ng7, 2, t5, (char)118, t36, 64);
    goto LAB38;

LAB41:    *((unsigned int *)t7) = 1;
    goto LAB43;

LAB42:    t30 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB43;

LAB44:    xsi_set_current_line(104, ng0);

LAB47:    xsi_set_current_line(105, ng0);
    t32 = (t1 + 5320);
    t33 = (t32 + 56U);
    t35 = *((char **)t33);
    t38 = ((char*)((ng3)));
    memset(t34, 0, 8);
    xsi_vlog_signed_add(t34, 32, t35, 32, t38, 32);
    t39 = (t1 + 5320);
    xsi_vlogvar_assign_value(t39, t34, 0, 0, 32);
    xsi_set_current_line(106, ng0);
    t4 = xsi_vlog_time(t36, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 6280);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t21 = (t1 + 5480);
    t22 = (t21 + 56U);
    t28 = *((char **)t22);
    t29 = (t1 + 1392);
    xsi_vlogfile_write(1, 0, 0, ng8, 4, t29, (char)118, t36, 64, (char)118, t8, 8, (char)118, t28, 8);
    goto LAB46;

}

static int sp_checkTxDoneBit(char *t1, char *t2)
{
    char t8[8];
    char t15[8];
    char t40[16];
    char t42[8];
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
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t39;
    char *t41;
    char *t43;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1824);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(115, ng0);

LAB5:    xsi_set_current_line(117, ng0);
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

LAB6:    xsi_set_current_line(118, ng0);
    t4 = ((char*)((ng10)));
    t5 = (t1 + 4680);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(119, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 4360);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(121, ng0);

LAB7:    t4 = (t1 + 3320U);
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
    t7 = ((char*)((ng2)));
    memset(t15, 0, 8);
    t16 = (t8 + 4);
    t17 = (t7 + 4);
    t18 = *((unsigned int *)t8);
    t19 = *((unsigned int *)t7);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB9;

LAB8:    if (t27 != 0)
        goto LAB10;

LAB11:    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 != 0);
    if (t36 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(124, ng0);
    t4 = xsi_vlog_time(t40, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 1824);
    xsi_vlogfile_write(1, 0, 0, ng11, 2, t5, (char)118, t40, 64);
    xsi_set_current_line(127, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 4200);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(128, ng0);
    t4 = ((char*)((ng12)));
    t5 = (t1 + 4520);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(129, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB16;
    goto LAB1;

LAB9:    *((unsigned int *)t15) = 1;
    goto LAB11;

LAB10:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB11;

LAB12:    xsi_set_current_line(121, ng0);

LAB14:    xsi_set_current_line(122, ng0);
    t37 = (t2 + 88U);
    t38 = *((char **)t37);
    t39 = (t38 + 16U);
    xsi_wp_set_status(t39, 1);
    *((char **)t3) = &&LAB15;
    goto LAB1;

LAB15:    goto LAB7;

LAB16:    xsi_set_current_line(131, ng0);
    t4 = (t1 + 3320U);
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
    t7 = ((char*)((ng12)));
    memset(t15, 0, 8);
    t16 = (t8 + 4);
    t17 = (t7 + 4);
    t18 = *((unsigned int *)t8);
    t19 = *((unsigned int *)t7);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB18;

LAB17:    if (t27 != 0)
        goto LAB19;

LAB20:    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 != 0);
    if (t36 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(135, ng0);
    t4 = xsi_vlog_time(t40, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 1824);
    xsi_vlogfile_write(1, 0, 0, ng14, 2, t5, (char)118, t40, 64);

LAB23:    xsi_set_current_line(136, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 4200);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(137, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 4360);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(138, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 48U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB25;
    goto LAB1;

LAB18:    *((unsigned int *)t15) = 1;
    goto LAB20;

LAB19:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB20;

LAB21:    xsi_set_current_line(131, ng0);

LAB24:    xsi_set_current_line(132, ng0);
    t37 = (t1 + 5320);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t41 = ((char*)((ng3)));
    memset(t42, 0, 8);
    xsi_vlog_signed_add(t42, 32, t39, 32, t41, 32);
    t43 = (t1 + 5320);
    xsi_vlogvar_assign_value(t43, t42, 0, 0, 32);
    xsi_set_current_line(133, ng0);
    t4 = xsi_vlog_time(t40, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 1824);
    xsi_vlogfile_write(1, 0, 0, ng13, 2, t5, (char)118, t40, 64);
    goto LAB23;

LAB25:    goto LAB4;

}

static int sp_checkTxFullBit(char *t1, char *t2)
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

LAB2:    t4 = (t1 + 2256);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(148, ng0);

LAB5:    xsi_set_current_line(150, ng0);
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

LAB6:    xsi_set_current_line(151, ng0);
    t4 = ((char*)((ng10)));
    t5 = (t1 + 4680);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(152, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 4360);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(153, ng0);
    t4 = (t1 + 6440);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 2256);
    xsi_vlogfile_write(1, 0, 0, ng15, 2, t7, (char)118, t6, 1);
    xsi_set_current_line(154, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 16U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(155, ng0);
    t4 = (t1 + 3320U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t6 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t6);
    t13 = (t12 >> 0);
    t14 = (t13 & 1);
    *((unsigned int *)t4) = t14;
    t7 = (t1 + 6440);
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

LAB13:    xsi_set_current_line(159, ng0);
    t4 = xsi_vlog_time(t45, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 2256);
    xsi_vlogfile_write(1, 0, 0, ng17, 2, t5, (char)118, t45, 64);

LAB14:    goto LAB4;

LAB9:    *((unsigned int *)t17) = 1;
    goto LAB11;

LAB10:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB11;

LAB12:    xsi_set_current_line(155, ng0);

LAB15:    xsi_set_current_line(156, ng0);
    t39 = (t1 + 5320);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = ((char*)((ng3)));
    memset(t43, 0, 8);
    xsi_vlog_signed_add(t43, 32, t41, 32, t42, 32);
    t44 = (t1 + 5320);
    xsi_vlogvar_assign_value(t44, t43, 0, 0, 32);
    xsi_set_current_line(157, ng0);
    t4 = xsi_vlog_time(t45, 1000.0000000000000, 1000.0000000000000);
    t5 = (t1 + 3320U);
    t6 = *((char **)t5);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t7 = (t6 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 0);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 0);
    t14 = (t13 & 1);
    *((unsigned int *)t5) = t14;
    t15 = (t1 + 6440);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    t19 = (t1 + 2256);
    xsi_vlogfile_write(1, 0, 0, ng16, 4, t19, (char)118, t45, 64, (char)118, t8, 1, (char)118, t18, 1);
    goto LAB14;

}

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

LAB2:    t4 = (t1 + 2688);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(169, ng0);

LAB5:    xsi_set_current_line(170, ng0);
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

LAB6:    xsi_set_current_line(171, ng0);
    t4 = (t1 + 6600);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t8, t6, 8);
    t7 = (t1 + 4840);
    t11 = (t1 + 4840);
    t12 = (t11 + 72U);
    t13 = *((char **)t12);
    t14 = (t1 + 4840);
    t15 = (t14 + 64U);
    t16 = *((char **)t15);
    t17 = (t1 + 5000);
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

LAB8:    xsi_set_current_line(172, ng0);
    t4 = (t1 + 5000);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t11 = (t1 + 5000);
    xsi_vlogvar_assign_value(t11, t8, 0, 0, 32);
    xsi_set_current_line(173, ng0);
    t4 = (t1 + 5000);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng18)));
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
LAB11:    xsi_set_current_line(174, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 5800);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(176, ng0);
    t4 = (t1 + 6600);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 4520);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 8);
    xsi_set_current_line(177, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t1 + 4200);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(178, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 4680);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(179, ng0);
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

LAB9:    xsi_set_current_line(173, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t1 + 5000);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);
    goto LAB11;

LAB12:    xsi_set_current_line(180, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 4200);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(181, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 5800);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(182, ng0);
    t4 = (t2 + 88U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    xsi_wp_set_status(t6, 1);
    *((char **)t3) = &&LAB13;
    goto LAB1;

LAB13:    goto LAB4;

}

static void Initial_65_0(char *t0)
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

LAB0:    t1 = (t0 + 7520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);

LAB4:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 7328);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(68, ng0);

LAB6:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 7328);
    xsi_process_wait(t3, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(68, ng0);
    t5 = (t0 + 3880);
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
    t25 = (t0 + 3880);
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

static void Initial_192_1(char *t0)
{
    char t5[8];
    char t30[8];
    char t32[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t33;
    char *t34;
    int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    t1 = (t0 + 7768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(192, ng0);

LAB4:    xsi_set_current_line(194, ng0);
    t2 = (t0 + 7576);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(195, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3880);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(196, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4040);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(197, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(198, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(199, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(200, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(201, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(202, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5160);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(203, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5800);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(204, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5320);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(207, ng0);
    t2 = (t0 + 7576);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(208, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4040);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(210, ng0);
    t2 = (t0 + 8744);
    *((int *)t2) = 1;
    t3 = (t0 + 7800);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(211, ng0);
    t2 = (t0 + 8760);
    *((int *)t2) = 1;
    t3 = (t0 + 7800);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(212, ng0);
    t2 = (t0 + 8776);
    *((int *)t2) = 1;
    t3 = (t0 + 7800);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(213, ng0);
    t2 = (t0 + 8792);
    *((int *)t2) = 1;
    t3 = (t0 + 7800);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(214, ng0);
    t2 = (t0 + 8808);
    *((int *)t2) = 1;
    t3 = (t0 + 7800);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(216, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 4520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(217, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(218, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(219, ng0);
    t2 = (t0 + 8824);
    *((int *)t2) = 1;
    t3 = (t0 + 7800);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(220, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(221, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(222, ng0);
    t2 = (t0 + 8840);
    *((int *)t2) = 1;
    t3 = (t0 + 7800);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(223, ng0);
    t2 = (t0 + 8856);
    *((int *)t2) = 1;
    t3 = (t0 + 7800);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(224, ng0);
    t2 = (t0 + 3320U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng19)));
    memset(t5, 0, 8);
    t4 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB16;

LAB15:    if (t16 != 0)
        goto LAB17;

LAB18:    t20 = (t5 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t5);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(227, ng0);

LAB23:    xsi_set_current_line(228, ng0);
    t2 = xsi_vlog_time(t32, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng21, 2, t0, (char)118, t32, 64);

LAB21:    xsi_set_current_line(230, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(231, ng0);
    t2 = (t0 + 8872);
    *((int *)t2) = 1;
    t3 = (t0 + 7800);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB16:    *((unsigned int *)t5) = 1;
    goto LAB18;

LAB17:    t19 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(224, ng0);

LAB22:    xsi_set_current_line(225, ng0);
    t26 = (t0 + 5320);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = ((char*)((ng3)));
    memset(t30, 0, 8);
    xsi_vlog_signed_add(t30, 32, t28, 32, t29, 32);
    t31 = (t0 + 5320);
    xsi_vlogvar_assign_value(t31, t30, 0, 0, 32);
    xsi_set_current_line(226, ng0);
    t2 = xsi_vlog_time(t32, 1000.0000000000000, 1000.0000000000000);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 3320U);
    t6 = *((char **)t4);
    xsi_vlogfile_write(1, 0, 0, ng20, 4, t0, (char)118, t32, 64, (char)118, t3, 8, (char)118, t6, 8);
    goto LAB21;

LAB24:    xsi_set_current_line(233, ng0);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 7576);
    t4 = (t0 + 2688);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 6600);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 8);

LAB27:    t20 = (t0 + 7672);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB29:    if (t35 != 0)
        goto LAB30;

LAB25:    t26 = (t0 + 2688);
    xsi_vlog_subprogram_popinvocation(t26);

LAB26:    t36 = (t0 + 7672);
    t37 = *((char **)t36);
    t36 = (t0 + 2688);
    t38 = (t0 + 7576);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(235, ng0);
    t2 = (t0 + 7576);
    xsi_process_wait(t2, 172800000LL);
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB28:;
LAB30:    t20 = (t0 + 7768U);
    *((char **)t20) = &&LAB27;
    goto LAB1;

LAB31:    xsi_set_current_line(236, ng0);
    t2 = (t0 + 7576);
    xsi_process_wait(t2, 3240000LL);
    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB32:    xsi_set_current_line(239, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 7576);
    t4 = (t0 + 2688);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 6600);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 8);

LAB35:    t20 = (t0 + 7672);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB37:    if (t35 != 0)
        goto LAB38;

LAB33:    t26 = (t0 + 2688);
    xsi_vlog_subprogram_popinvocation(t26);

LAB34:    t36 = (t0 + 7672);
    t37 = *((char **)t36);
    t36 = (t0 + 2688);
    t38 = (t0 + 7576);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(240, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 7576);
    t4 = (t0 + 2688);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 6600);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 8);

LAB41:    t20 = (t0 + 7672);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB43:    if (t35 != 0)
        goto LAB44;

LAB39:    t26 = (t0 + 2688);
    xsi_vlog_subprogram_popinvocation(t26);

LAB40:    t36 = (t0 + 7672);
    t37 = *((char **)t36);
    t36 = (t0 + 2688);
    t38 = (t0 + 7576);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(241, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 7576);
    t4 = (t0 + 2688);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 6600);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 8);

LAB47:    t20 = (t0 + 7672);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB49:    if (t35 != 0)
        goto LAB50;

LAB45:    t26 = (t0 + 2688);
    xsi_vlog_subprogram_popinvocation(t26);

LAB46:    t36 = (t0 + 7672);
    t37 = *((char **)t36);
    t36 = (t0 + 2688);
    t38 = (t0 + 7576);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(244, ng0);
    t2 = (t0 + 7576);
    xsi_process_wait(t2, 518400000LL);
    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB36:;
LAB38:    t20 = (t0 + 7768U);
    *((char **)t20) = &&LAB35;
    goto LAB1;

LAB42:;
LAB44:    t20 = (t0 + 7768U);
    *((char **)t20) = &&LAB41;
    goto LAB1;

LAB48:;
LAB50:    t20 = (t0 + 7768U);
    *((char **)t20) = &&LAB47;
    goto LAB1;

LAB51:    xsi_set_current_line(245, ng0);
    t2 = (t0 + 7576);
    xsi_process_wait(t2, 3240000LL);
    *((char **)t1) = &&LAB52;
    goto LAB1;

LAB52:    xsi_set_current_line(250, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7576);
    t4 = (t0 + 2256);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 6440);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 1);

LAB55:    t20 = (t0 + 7672);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB57:    if (t35 != 0)
        goto LAB58;

LAB53:    t26 = (t0 + 2256);
    xsi_vlog_subprogram_popinvocation(t26);

LAB54:    t36 = (t0 + 7672);
    t37 = *((char **)t36);
    t36 = (t0 + 2256);
    t38 = (t0 + 7576);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(254, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5960);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(255, ng0);

LAB59:    t2 = (t0 + 5960);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = ((char*)((ng25)));
    memset(t5, 0, 8);
    xsi_vlog_signed_not_equal(t5, 32, t4, 32, t6, 32);
    t19 = (t5 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB60;

LAB61:    xsi_set_current_line(260, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7576);
    t4 = (t0 + 2256);
    t6 = xsi_create_subprogram_invocation(t3, 0, t0, t4, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t4, t6);
    t19 = (t0 + 6440);
    xsi_vlogvar_assign_value(t19, t2, 0, 0, 1);

LAB71:    t20 = (t0 + 7672);
    t26 = *((char **)t20);
    t27 = (t26 + 80U);
    t28 = *((char **)t27);
    t29 = (t28 + 272U);
    t31 = *((char **)t29);
    t33 = (t31 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t26);

LAB73:    if (t35 != 0)
        goto LAB74;

LAB69:    t26 = (t0 + 2256);
    xsi_vlog_subprogram_popinvocation(t26);

LAB70:    t36 = (t0 + 7672);
    t37 = *((char **)t36);
    t36 = (t0 + 2256);
    t38 = (t0 + 7576);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    xsi_set_current_line(262, ng0);
    t2 = (t0 + 7576);
    xsi_process_wait(t2, 3283200000LL);
    *((char **)t1) = &&LAB75;
    goto LAB1;

LAB56:;
LAB58:    t20 = (t0 + 7768U);
    *((char **)t20) = &&LAB55;
    goto LAB1;

LAB60:    xsi_set_current_line(255, ng0);

LAB62:    xsi_set_current_line(256, ng0);
    t20 = (t0 + 5960);
    t26 = (t20 + 56U);
    t27 = *((char **)t26);
    t28 = ((char*)((ng26)));
    memset(t30, 0, 8);
    xsi_vlog_signed_add(t30, 32, t27, 32, t28, 32);
    t29 = (t0 + 7576);
    t31 = (t0 + 2688);
    t33 = xsi_create_subprogram_invocation(t29, 0, t0, t31, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t31, t33);
    t34 = (t0 + 6600);
    xsi_vlogvar_assign_value(t34, t30, 0, 0, 8);

LAB65:    t36 = (t0 + 7672);
    t37 = *((char **)t36);
    t38 = (t37 + 80U);
    t39 = *((char **)t38);
    t40 = (t39 + 272U);
    t41 = *((char **)t40);
    t42 = (t41 + 0U);
    t43 = *((char **)t42);
    t35 = ((int  (*)(char *, char *))t43)(t0, t37);

LAB67:    if (t35 != 0)
        goto LAB68;

LAB63:    t37 = (t0 + 2688);
    xsi_vlog_subprogram_popinvocation(t37);

LAB64:    t44 = (t0 + 7672);
    t45 = *((char **)t44);
    t44 = (t0 + 2688);
    t46 = (t0 + 7576);
    t47 = 0;
    xsi_delete_subprogram_invocation(t44, t45, t0, t46, t47);
    xsi_set_current_line(257, ng0);
    t2 = (t0 + 5960);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t4, 32, t6, 32);
    t19 = (t0 + 5960);
    xsi_vlogvar_assign_value(t19, t5, 0, 0, 32);
    goto LAB59;

LAB66:;
LAB68:    t36 = (t0 + 7768U);
    *((char **)t36) = &&LAB65;
    goto LAB1;

LAB72:;
LAB74:    t20 = (t0 + 7768U);
    *((char **)t20) = &&LAB71;
    goto LAB1;

LAB75:    xsi_set_current_line(263, ng0);
    t2 = (t0 + 7576);
    xsi_process_wait(t2, 3240000LL);
    *((char **)t1) = &&LAB76;
    goto LAB1;

LAB76:    xsi_set_current_line(265, ng0);
    t2 = xsi_vlog_time(t32, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng27, 2, t0, (char)118, t32, 64);
    xsi_set_current_line(266, ng0);
    t2 = (t0 + 5320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = ((char*)((ng1)));
    memset(t5, 0, 8);
    xsi_vlog_signed_not_equal(t5, 32, t4, 32, t6, 32);
    t19 = (t5 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB77;

LAB78:    xsi_set_current_line(269, ng0);
    t2 = xsi_vlog_time(t32, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng29, 2, t0, (char)118, t32, 64);

LAB79:    goto LAB1;

LAB77:    xsi_set_current_line(267, ng0);
    t20 = xsi_vlog_time(t32, 1000.0000000000000, 1000.0000000000000);
    t26 = (t0 + 5320);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    xsi_vlogfile_write(1, 0, 0, ng28, 3, t0, (char)118, t32, 64, (char)119, t28, 32);
    goto LAB79;

}

static void Initial_274_2(char *t0)
{
    char t8[8];
    char t15[16];
    char *t1;
    char *t2;
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
    char *t16;

LAB0:    t1 = (t0 + 8016U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(274, ng0);

LAB4:    xsi_set_current_line(276, ng0);
    t2 = (t0 + 7824);
    xsi_process_wait(t2, 5184000000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(278, ng0);
    t2 = (t0 + 5000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5160);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t8, 0, 8);
    xsi_vlog_signed_not_equal(t8, 32, t4, 32, t7, 32);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB1;

LAB6:    xsi_set_current_line(278, ng0);

LAB9:    xsi_set_current_line(279, ng0);
    t16 = xsi_vlog_time(t15, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng30, 2, t0, (char)118, t15, 64);
    xsi_set_current_line(280, ng0);
    xsi_vlogfile_write(1, 0, 0, ng31, 1, t0);
    goto LAB8;

}

static void Always_288_3(char *t0)
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

LAB0:    t1 = (t0 + 8264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(288, ng0);
    t2 = (t0 + 8888);
    *((int *)t2) = 1;
    t3 = (t0 + 8296);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(288, ng0);

LAB5:    xsi_set_current_line(290, ng0);

LAB6:    t4 = (t0 + 5000);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 5160);
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

LAB7:    xsi_set_current_line(290, ng0);

LAB9:    xsi_set_current_line(291, ng0);
    t17 = (t0 + 4840);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = (t0 + 4840);
    t22 = (t21 + 72U);
    t23 = *((char **)t22);
    t24 = (t0 + 4840);
    t25 = (t24 + 64U);
    t26 = *((char **)t25);
    t27 = (t0 + 5160);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    xsi_vlog_generic_get_array_select_value(t20, 32, t19, t23, t26, 1, 1, t29, 32, 1);
    t30 = (t0 + 6120);
    xsi_vlogvar_assign_value(t30, t20, 0, 0, 8);
    xsi_set_current_line(292, ng0);
    t2 = (t0 + 5160);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t10, 0, 8);
    xsi_vlog_signed_add(t10, 32, t4, 32, t5, 32);
    t6 = (t0 + 5160);
    xsi_vlogvar_assign_value(t6, t10, 0, 0, 32);
    xsi_set_current_line(293, ng0);
    t2 = (t0 + 5160);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng18)));
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
LAB12:    xsi_set_current_line(294, ng0);
    t2 = (t0 + 6120);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 8072);
    t6 = (t0 + 1392);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 6280);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 8);

LAB15:    t9 = (t0 + 8168);
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

LAB13:    t11 = (t0 + 1392);
    xsi_vlog_subprogram_popinvocation(t11);

LAB14:    t24 = (t0 + 8168);
    t25 = *((char **)t24);
    t24 = (t0 + 1392);
    t26 = (t0 + 8072);
    t27 = 0;
    xsi_delete_subprogram_invocation(t24, t25, t0, t26, t27);
    xsi_set_current_line(295, ng0);
    t2 = (t0 + 8072);
    t3 = (t0 + 1824);
    t4 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t4);

LAB21:    t5 = (t0 + 8168);
    t6 = *((char **)t5);
    t7 = (t6 + 80U);
    t8 = *((char **)t7);
    t9 = (t8 + 272U);
    t11 = *((char **)t9);
    t17 = (t11 + 0U);
    t18 = *((char **)t17);
    t31 = ((int  (*)(char *, char *))t18)(t0, t6);

LAB23:    if (t31 != 0)
        goto LAB24;

LAB19:    t6 = (t0 + 1824);
    xsi_vlog_subprogram_popinvocation(t6);

LAB20:    t19 = (t0 + 8168);
    t21 = *((char **)t19);
    t19 = (t0 + 1824);
    t22 = (t0 + 8072);
    t23 = 0;
    xsi_delete_subprogram_invocation(t19, t21, t0, t22, t23);
    goto LAB6;

LAB10:    xsi_set_current_line(293, ng0);
    t7 = ((char*)((ng1)));
    t8 = (t0 + 5160);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB12;

LAB16:;
LAB18:    t9 = (t0 + 8264U);
    *((char **)t9) = &&LAB15;
    goto LAB1;

LAB22:;
LAB24:    t5 = (t0 + 8264U);
    *((char **)t5) = &&LAB21;
    goto LAB1;

}


extern void work_m_00000000003690615046_2127132165_init()
{
	static char *pe[] = {(void *)Initial_65_0,(void *)Initial_192_1,(void *)Initial_274_2,(void *)Always_288_3};
	static char *se[] = {(void *)sp_getserialdata,(void *)sp_checkTxDoneBit,(void *)sp_checkTxFullBit,(void *)sp_applydata};
	xsi_register_didat("work_m_00000000003690615046_2127132165", "isim/tb_uart_tx_isim_par.exe.sim/work/m_00000000003690615046_2127132165.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
