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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    xilinxcorelib_ver_m_00000000001382328732_0616056238_init();
    xilinxcorelib_ver_m_00000000001746895110_3749024002_init();
    xilinxcorelib_ver_m_00000000002806180517_2303111468_init();
    xilinxcorelib_ver_m_00000000001291582275_2879723755_init();
    work_m_00000000003630952586_4128282155_init();
    work_m_00000000003313760343_1938940840_init();
    work_m_00000000002197556236_3184742597_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002197556236_3184742597");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
