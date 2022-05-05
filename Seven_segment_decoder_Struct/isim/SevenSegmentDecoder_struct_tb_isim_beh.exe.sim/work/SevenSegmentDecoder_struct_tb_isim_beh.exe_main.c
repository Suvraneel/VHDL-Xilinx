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
char *IEEE_P_3499444699;
char *IEEE_P_2592010699;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3838875671_0076381816_init();
    work_a_3312977102_0650202521_init();
    work_a_3835048161_1417070661_init();
    work_a_0822367577_4099192063_init();
    work_a_1262452011_3190267727_init();
    work_a_0777537133_1366632878_init();
    work_a_0822929795_2093999248_init();
    work_a_2400923151_3342005441_init();
    work_a_3474776318_2958762954_init();
    work_a_2860243896_1594463531_init();
    work_a_0097687154_3046066249_init();
    work_a_1622519092_1524498088_init();
    work_a_4213653532_1181938964_init();
    work_a_1840606564_2372691052_init();


    xsi_register_tops("work_a_1840606564_2372691052");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
