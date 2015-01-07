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



static void Gate_29_0(char *t0)
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
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 2504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1344U);
    t3 = *((char **)t2);
    t2 = (t0 + 2904);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 4);
    t9 = (t3 + 4);
    if (*((unsigned int *)t9) == 1)
        goto LAB4;

LAB5:    t10 = *((unsigned int *)t3);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 & 1);
    *((unsigned int *)t8) = t13;

LAB6:    t14 = (t0 + 2904);
    xsi_driver_vfirst_trans(t14, 0, 0);
    t15 = (t0 + 2824);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t7) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB6;

}


extern void simprims_ver_m_00000000001255213976_2021654676_1947908098_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1947908098", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1947908098.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1464570683_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1464570683", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1464570683.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3385906380_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3385906380", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3385906380.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1696539008_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1696539008", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1696539008.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1642787261_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1642787261", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1642787261.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2480080801_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2480080801", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2480080801.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0672870741_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0672870741", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0672870741.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3953840930_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3953840930", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3953840930.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0364552441_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0364552441", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0364552441.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3555934787_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3555934787", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3555934787.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2028256418_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2028256418", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2028256418.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0352288433_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0352288433", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0352288433.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0278094030_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0278094030", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0278094030.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0943421491_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0943421491", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0943421491.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3192784444_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3192784444", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3192784444.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2969037637_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2969037637", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2969037637.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2282808777_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2282808777", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2282808777.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2211847606_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2211847606", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2211847606.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3328617293_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3328617293", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3328617293.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2330606763_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2330606763", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2330606763.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2016751831_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2016751831", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2016751831.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2534242526_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2534242526", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2534242526.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0373511512_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0373511512", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0373511512.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3508387598_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3508387598", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3508387598.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2306529152_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2306529152", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2306529152.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3290476490_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3290476490", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3290476490.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3125041010_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3125041010", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3125041010.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1009854845_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1009854845", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1009854845.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2067195457_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2067195457", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2067195457.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0340135241_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0340135241", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0340135241.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4149333397_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4149333397", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4149333397.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1602610085_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1602610085", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1602610085.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0124893903_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0124893903", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0124893903.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2384456854_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2384456854", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2384456854.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0245657823_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0245657823", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0245657823.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2710025498_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2710025498", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2710025498.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0937993987_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0937993987", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0937993987.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2026836960_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2026836960", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2026836960.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0412329643_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0412329643", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0412329643.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0550846923_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0550846923", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0550846923.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0132674701_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0132674701", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0132674701.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3475681055_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3475681055", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3475681055.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1741852407_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1741852407", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1741852407.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2369483958_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2369483958", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2369483958.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2806008611_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2806008611", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2806008611.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2350560391_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2350560391", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2350560391.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2329758398_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2329758398", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2329758398.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1368157442_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1368157442", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1368157442.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3287126735_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3287126735", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3287126735.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2861176149_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2861176149", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2861176149.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1404977926_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1404977926", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1404977926.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2746587934_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2746587934", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2746587934.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0379467993_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0379467993", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0379467993.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1733935451_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1733935451", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1733935451.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0679326707_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0679326707", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0679326707.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0143638527_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0143638527", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0143638527.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0606114294_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0606114294", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0606114294.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4268938532_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4268938532", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4268938532.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3765185373_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3765185373", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3765185373.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3626683453_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3626683453", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3626683453.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1224669158_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1224669158", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1224669158.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1646555657_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1646555657", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1646555657.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0610440666_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0610440666", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0610440666.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1681132887_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1681132887", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1681132887.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3971580095_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3971580095", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3971580095.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3474402037_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3474402037", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3474402037.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2811520274_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2811520274", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2811520274.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3493616707_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3493616707", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3493616707.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2667163301_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2667163301", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2667163301.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1641908136_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1641908136", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1641908136.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0691986865_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0691986865", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0691986865.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1581302835_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1581302835", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1581302835.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3114456274_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3114456274", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3114456274.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3199305551_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3199305551", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3199305551.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2499054975_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2499054975", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2499054975.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4202220487_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4202220487", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4202220487.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4104665140_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4104665140", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4104665140.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3338439311_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3338439311", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3338439311.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1449181164_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1449181164", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1449181164.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2795519940_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2795519940", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2795519940.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2401222644_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2401222644", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2401222644.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4287709496_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4287709496", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4287709496.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2081516703_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2081516703", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2081516703.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1388126312_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1388126312", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1388126312.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1434860620_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1434860620", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1434860620.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2764401017_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2764401017", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2764401017.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4109068539_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4109068539", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4109068539.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1026481385_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1026481385", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1026481385.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2348181097_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2348181097", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2348181097.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3817897144_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3817897144", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3817897144.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1020176398_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1020176398", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1020176398.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1253051929_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1253051929", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1253051929.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3179236182_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3179236182", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3179236182.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0073971740_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0073971740", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0073971740.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3713152302_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3713152302", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3713152302.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3629235036_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3629235036", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3629235036.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0376709965_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0376709965", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0376709965.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0651822905_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0651822905", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0651822905.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2823272994_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2823272994", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2823272994.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1976656807_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1976656807", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1976656807.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1116763590_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1116763590", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1116763590.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2774125157_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2774125157", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2774125157.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0241540038_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0241540038", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0241540038.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1042051448_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1042051448", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1042051448.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3637857614_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3637857614", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3637857614.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3546004361_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3546004361", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3546004361.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2447452581_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2447452581", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2447452581.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1224726799_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1224726799", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1224726799.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3379144500_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3379144500", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3379144500.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1366551665_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1366551665", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1366551665.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4218984613_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4218984613", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4218984613.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0909904551_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0909904551", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0909904551.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3785879800_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3785879800", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3785879800.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1313201700_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1313201700", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1313201700.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0570923197_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0570923197", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0570923197.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2535905180_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2535905180", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2535905180.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0648793098_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0648793098", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0648793098.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0096212408_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0096212408", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0096212408.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0263077987_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0263077987", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0263077987.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3452302211_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3452302211", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3452302211.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4215084431_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4215084431", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4215084431.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1328794339_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1328794339", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1328794339.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3520993862_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3520993862", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3520993862.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0952432960_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0952432960", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0952432960.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2130144426_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2130144426", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2130144426.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3420650184_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3420650184", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3420650184.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3351826521_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3351826521", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3351826521.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0920006388_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0920006388", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0920006388.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1831988567_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1831988567", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1831988567.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3123349377_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3123349377", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3123349377.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1171262448_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1171262448", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1171262448.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0750343820_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0750343820", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0750343820.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3890578729_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3890578729", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3890578729.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1091890831_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1091890831", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1091890831.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4253744465_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4253744465", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4253744465.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2319990058_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2319990058", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2319990058.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676", "isim/tb_uart_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676.didat");
	xsi_register_executes(pe);
}
