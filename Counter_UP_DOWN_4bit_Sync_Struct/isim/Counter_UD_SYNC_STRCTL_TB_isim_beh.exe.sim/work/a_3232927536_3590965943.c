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
static const char *ng0 = "C:/Users/suvra/OneDrive/Desktop/Competitive Programming/UCSTA/VHDL Xilinx/Counter_UP_DOWN_4bit_Sync_Struct/JK_FF.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3232927536_3590965943_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3672);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 3736);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = t4;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3592);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2288U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3672);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3736);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2288U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3672);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3736);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB7:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)2);
    if (t9 == 1)
        goto LAB12;

LAB13:    t4 = (unsigned char)0;

LAB14:    if (t4 != 0)
        goto LAB9;

LAB11:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t8 = (t4 == (unsigned char)3);
    if (t8 == 1)
        goto LAB17;

LAB18:    t3 = (unsigned char)0;

LAB19:    if (t3 != 0)
        goto LAB15;

LAB16:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t8 = (t4 == (unsigned char)2);
    if (t8 == 1)
        goto LAB22;

LAB23:    t3 = (unsigned char)0;

LAB24:    if (t3 != 0)
        goto LAB20;

LAB21:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;

LAB10:    goto LAB3;

LAB9:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2288U);
    t7 = *((char **)t2);
    t12 = *((unsigned char *)t7);
    t2 = (t0 + 2288U);
    t13 = *((char **)t2);
    t2 = (t13 + 0);
    *((unsigned char *)t2) = t12;
    goto LAB10;

LAB12:    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t10 = *((unsigned char *)t6);
    t11 = (t10 == (unsigned char)2);
    t4 = t11;
    goto LAB14;

LAB15:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2288U);
    t6 = *((char **)t1);
    t11 = *((unsigned char *)t6);
    t12 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t11);
    t1 = (t0 + 2288U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((unsigned char *)t1) = t12;
    goto LAB10;

LAB17:    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB19;

LAB20:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2288U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB10;

LAB22:    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB24;

}


extern void work_a_3232927536_3590965943_init()
{
	static char *pe[] = {(void *)work_a_3232927536_3590965943_p_0};
	xsi_register_didat("work_a_3232927536_3590965943", "isim/Counter_UD_SYNC_STRCTL_TB_isim_beh.exe.sim/work/a_3232927536_3590965943.didat");
	xsi_register_executes(pe);
}
