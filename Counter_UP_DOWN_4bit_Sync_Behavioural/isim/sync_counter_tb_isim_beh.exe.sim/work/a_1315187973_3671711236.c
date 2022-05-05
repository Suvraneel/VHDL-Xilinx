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
static const char *ng0 = "C:/Users/suvra/OneDrive/Desktop/Competitive Programming/UCSTA/VHDL Xilinx/Counter_UP_DOWN_4bit_Sync_Behavioural/Counter_UP_DOWN_4bit_Sync_Behavioural_tb.vhd";



static void work_a_1315187973_3671711236_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;
    int t9;
    int t10;
    unsigned char t11;
    char *t12;

LAB0:    t1 = (t0 + 3072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3520);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3520);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t10 = *((int *)t4);
    t11 = (t9 == t10);
    if (t11 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t10 = (t9 + 1);
    t2 = (t0 + 3584);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    *((int *)t12) = t10;
    xsi_driver_first_trans_fast(t2);

LAB13:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t11 = (t9 < 10);
    if (t11 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);

LAB20:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(38, ng0);

LAB17:    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB15:    goto LAB13;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

LAB19:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3648);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB20;

}


extern void work_a_1315187973_3671711236_init()
{
	static char *pe[] = {(void *)work_a_1315187973_3671711236_p_0};
	xsi_register_didat("work_a_1315187973_3671711236", "isim/sync_counter_tb_isim_beh.exe.sim/work/a_1315187973_3671711236.didat");
	xsi_register_executes(pe);
}
