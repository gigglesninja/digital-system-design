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
    xilinxcorelib_ver_m_00000000001358910285_2198211538_init();
    xilinxcorelib_ver_m_00000000001687936702_2949114950_init();
    xilinxcorelib_ver_m_00000000001080096809_0150960103_init();
    xilinxcorelib_ver_m_00000000001603977570_3126960247_init();
    work_m_00000000000126747852_3702305859_init();
    work_m_00000000002012654189_0948142031_init();
    work_m_00000000000192754221_2501825637_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000192754221_2501825637");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
