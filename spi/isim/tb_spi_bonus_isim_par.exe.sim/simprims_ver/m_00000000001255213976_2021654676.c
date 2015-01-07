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


extern void simprims_ver_m_00000000001255213976_2021654676_1276542356_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1276542356", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1276542356.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0999431030_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0999431030", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0999431030.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3985465074_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3985465074", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3985465074.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2269818417_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2269818417", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2269818417.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0464626919_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0464626919", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0464626919.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2636502601_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2636502601", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2636502601.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4154103205_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4154103205", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4154103205.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1796811868_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1796811868", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1796811868.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0651267415_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0651267415", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0651267415.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4264993156_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4264993156", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4264993156.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3505223490_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3505223490", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3505223490.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1295236405_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1295236405", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1295236405.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0896168481_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0896168481", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0896168481.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3454552058_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3454552058", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3454552058.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1003797999_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1003797999", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1003797999.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1981553892_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1981553892", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1981553892.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2182454894_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2182454894", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2182454894.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3357216617_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3357216617", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3357216617.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0126963133_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0126963133", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0126963133.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2844549511_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2844549511", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2844549511.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2534242526_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2534242526", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2534242526.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1936831467_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1936831467", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1936831467.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1251713371_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1251713371", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1251713371.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0705448992_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0705448992", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0705448992.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0328496472_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0328496472", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0328496472.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3688053148_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3688053148", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3688053148.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2587910389_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2587910389", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2587910389.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1886881940_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1886881940", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1886881940.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2369483958_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2369483958", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2369483958.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0105242649_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0105242649", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0105242649.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3542387849_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3542387849", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3542387849.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2672438644_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2672438644", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2672438644.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3305471790_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3305471790", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3305471790.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1199952156_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1199952156", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1199952156.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1678419880_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1678419880", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1678419880.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4168979414_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4168979414", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4168979414.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3906273156_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3906273156", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3906273156.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1927104059_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1927104059", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1927104059.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2227523115_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2227523115", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2227523115.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2763677305_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2763677305", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2763677305.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2347307112_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2347307112", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2347307112.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2756022439_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2756022439", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2756022439.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1795630357_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1795630357", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1795630357.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3870020964_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3870020964", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3870020964.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0993856737_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0993856737", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0993856737.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4236788715_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4236788715", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4236788715.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2061650917_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2061650917", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2061650917.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3341297451_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3341297451", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3341297451.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2940968894_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2940968894", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2940968894.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0310506352_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0310506352", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0310506352.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1498650542_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1498650542", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1498650542.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0686443541_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0686443541", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0686443541.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2483990088_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2483990088", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2483990088.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0804855688_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0804855688", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0804855688.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0668558423_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0668558423", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0668558423.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1316124870_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1316124870", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1316124870.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0416347748_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0416347748", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0416347748.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4067411469_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4067411469", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4067411469.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2584938649_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2584938649", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2584938649.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4289719239_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4289719239", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4289719239.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2284927287_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2284927287", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2284927287.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0082796827_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0082796827", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0082796827.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0074960413_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0074960413", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0074960413.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0989255492_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0989255492", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0989255492.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4118582672_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4118582672", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4118582672.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1976656807_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1976656807", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1976656807.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2806229976_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2806229976", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2806229976.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1266169159_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1266169159", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1266169159.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3284304151_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3284304151", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3284304151.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2774125157_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2774125157", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2774125157.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2529600379_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2529600379", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2529600379.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0448724654_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0448724654", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0448724654.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0412329643_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0412329643", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0412329643.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0361617132_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0361617132", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0361617132.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0902168326_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0902168326", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0902168326.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1216463078_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1216463078", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1216463078.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1281122146_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1281122146", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1281122146.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4199529938_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4199529938", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4199529938.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0157924954_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0157924954", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0157924954.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1021765559_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1021765559", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1021765559.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3987109163_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3987109163", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3987109163.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2445969127_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2445969127", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2445969127.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3525832679_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3525832679", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3525832679.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4249065550_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4249065550", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4249065550.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3438206804_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3438206804", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3438206804.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1675157433_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1675157433", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1675157433.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1267202969_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1267202969", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1267202969.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3504175400_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3504175400", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3504175400.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0293078737_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0293078737", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0293078737.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1898230682_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1898230682", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1898230682.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1436109389_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1436109389", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1436109389.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3672597322_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3672597322", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3672597322.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1131413793_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1131413793", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1131413793.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2823272994_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2823272994", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2823272994.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3623424781_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3623424781", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3623424781.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0408485531_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0408485531", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0408485531.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0590132330_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0590132330", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0590132330.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0852929691_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0852929691", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0852929691.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2282722248_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2282722248", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2282722248.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3192784444_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3192784444", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3192784444.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3657929784_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3657929784", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3657929784.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3587650729_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3587650729", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3587650729.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1263565566_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1263565566", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1263565566.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0636176979_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0636176979", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0636176979.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2150669846_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2150669846", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2150669846.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3175641838_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3175641838", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3175641838.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2897373727_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2897373727", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2897373727.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3577003130_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3577003130", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3577003130.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3491936246_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3491936246", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3491936246.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0974479255_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0974479255", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0974479255.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3897763459_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3897763459", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3897763459.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2636066053_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2636066053", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2636066053.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2665928868_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2665928868", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2665928868.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4053152684_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4053152684", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4053152684.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2319990058_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2319990058", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2319990058.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2314494463_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2314494463", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2314494463.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3292315892_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3292315892", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3292315892.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3644452940_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3644452940", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3644452940.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4035472970_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4035472970", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4035472970.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0308618217_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0308618217", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0308618217.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1605206754_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1605206754", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1605206754.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3277228084_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3277228084", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3277228084.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1118351962_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1118351962", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1118351962.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0134896529_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0134896529", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0134896529.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676", "isim/tb_spi_bonus_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676.didat");
	xsi_register_executes(pe);
}
