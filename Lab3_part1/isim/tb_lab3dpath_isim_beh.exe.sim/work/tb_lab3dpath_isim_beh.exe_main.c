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
    unisims_ver_m_00000000001108370118_1185409170_init();
    unisims_ver_m_00000000001108370118_1918347995_init();
    unisims_ver_m_00000000001773747898_0257217429_init();
    unisims_ver_m_00000000001773747898_2454832694_init();
    unisims_ver_m_00000000001773747898_2336946039_init();
    unisims_ver_m_00000000001784029001_1343423062_init();
    unisims_ver_m_00000000001784029001_2199131516_init();
    unisims_ver_m_00000000003848737514_1058825862_init();
    unisims_ver_m_00000000000909115699_2771340377_init();
    unisims_ver_m_00000000000129589818_1491383940_init();
    unisims_ver_m_00000000003317509437_1759035934_init();
    unisims_ver_m_00000000003927721830_1593237687_init();
    work_m_00000000002948766708_2878466268_init();
    work_m_00000000001768063407_3536898463_init();
    work_m_00000000001469736902_0479361778_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001469736902_0479361778");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
