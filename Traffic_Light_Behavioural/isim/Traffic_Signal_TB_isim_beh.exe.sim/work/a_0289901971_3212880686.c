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
static const char *ng0 = "C:/Users/suvra/OneDrive/Desktop/Competitive Programming/UCSTA/VHDL Xilinx/Traffic_Light_Behavioural/Traffic_Light_src.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0289901971_3212880686_p_0(char *t0)
{
    char t10[16];
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    char *t18;
    int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6404U);
    t5 = (t0 + 6446);
    t7 = (t10 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t11 = (4 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t12;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t10);
    if (t3 != 0)
        goto LAB7;

LAB8:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6404U);
    t5 = (t0 + 6451);
    t7 = (t10 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t11 = (4 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t12;
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t10);
    if (t4 == 1)
        goto LAB13;

LAB14:    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t8 = (t0 + 6404U);
    t13 = (t0 + 6456);
    t15 = (t17 + 0U);
    t18 = (t15 + 0U);
    *((int *)t18) = 0;
    t18 = (t15 + 4U);
    *((int *)t18) = 4;
    t18 = (t15 + 8U);
    *((int *)t18) = 1;
    t19 = (4 - 0);
    t12 = (t19 * 1);
    t12 = (t12 + 1);
    t18 = (t15 + 12U);
    *((unsigned int *)t18) = t12;
    t20 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t9, t8, t13, t17);
    t3 = t20;

LAB15:    if (t3 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6404U);
    t5 = (t0 + 6461);
    t7 = (t10 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t11 = (4 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t12;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t10);
    if (t3 != 0)
        goto LAB18;

LAB19:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB22;

LAB23:
LAB3:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3552);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 3680);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 6436);
    t5 = (t0 + 3744);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 3680);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 6441);
    t5 = (t0 + 3744);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB7:    xsi_set_current_line(62, ng0);
    t8 = (t0 + 3552);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3680);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6404U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t10, t2, t1, 1);
    t6 = (t10 + 12U);
    t12 = *((unsigned int *)t6);
    t16 = (1U * t12);
    t3 = (5U != t16);
    if (t3 == 1)
        goto LAB9;

LAB10:    t7 = (t0 + 3744);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 5U);
    xsi_driver_first_trans_fast(t7);
    goto LAB3;

LAB9:    xsi_size_not_matching(5U, t16, 0);
    goto LAB10;

LAB11:    xsi_set_current_line(67, ng0);
    t18 = (t0 + 3552);
    t21 = (t18 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t18);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3680);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6404U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t10, t2, t1, 1);
    t6 = (t10 + 12U);
    t12 = *((unsigned int *)t6);
    t16 = (1U * t12);
    t3 = (5U != t16);
    if (t3 == 1)
        goto LAB16;

LAB17:    t7 = (t0 + 3744);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 5U);
    xsi_driver_first_trans_fast(t7);
    goto LAB3;

LAB13:    t3 = (unsigned char)1;
    goto LAB15;

LAB16:    xsi_size_not_matching(5U, t16, 0);
    goto LAB17;

LAB18:    xsi_set_current_line(72, ng0);
    t8 = (t0 + 3552);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3680);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6404U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t10, t2, t1, 1);
    t6 = (t10 + 12U);
    t12 = *((unsigned int *)t6);
    t16 = (1U * t12);
    t3 = (5U != t16);
    if (t3 == 1)
        goto LAB20;

LAB21:    t7 = (t0 + 3744);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 5U);
    xsi_driver_first_trans_fast(t7);
    goto LAB3;

LAB20:    xsi_size_not_matching(5U, t16, 0);
    goto LAB21;

LAB22:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t2 = (t0 + 6404U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t10, t5, t2, 1);
    t7 = (t10 + 12U);
    t12 = *((unsigned int *)t7);
    t16 = (1U * t12);
    t4 = (5U != t16);
    if (t4 == 1)
        goto LAB24;

LAB25:    t8 = (t0 + 3744);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 5U);
    xsi_driver_first_trans_fast(t8);
    goto LAB3;

LAB24:    xsi_size_not_matching(5U, t16, 0);
    goto LAB25;

}


extern void work_a_0289901971_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0289901971_3212880686_p_0};
	xsi_register_didat("work_a_0289901971_3212880686", "isim/Traffic_Signal_TB_isim_beh.exe.sim/work/a_0289901971_3212880686.didat");
	xsi_register_executes(pe);
}
