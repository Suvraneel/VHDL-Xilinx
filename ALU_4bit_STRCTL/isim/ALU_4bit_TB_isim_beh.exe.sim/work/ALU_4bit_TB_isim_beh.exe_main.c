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

char *STD_STANDARD;
char *IEEE_P_3620187407;
char *IEEE_P_2592010699;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3933162502_3990940387_init();
    work_a_3112044328_2355705410_init();
    work_a_4147066629_3212880686_init();
    work_a_2857801645_1181938964_init();
    work_a_0999586195_3212880686_init();
    work_a_0229934908_3212880686_init();
    work_a_1711751592_1239325373_init();
    work_a_0269084187_1891183590_init();
    work_a_3885491278_0345211124_init();
    work_a_0876198905_1181938964_init();
    work_a_1542279369_1181938964_init();
    work_a_2851247454_2372691052_init();


    xsi_register_tops("work_a_2851247454_2372691052");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
