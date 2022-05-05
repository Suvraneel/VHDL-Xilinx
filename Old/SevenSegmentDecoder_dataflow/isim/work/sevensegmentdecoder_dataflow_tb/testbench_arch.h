////////////////////////////////////////////////////////////////////////////////
//   ____  ____   
//  /   /\/   /  
// /___/  \  /   
// \   \   \/  
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /---/   /\     
// \   \  /  \  
//  \___\/\___\
////////////////////////////////////////////////////////////////////////////////

#ifndef H_Work_sevensegmentdecoder_dataflow_tb_testbench_arch_H
#define H_Work_sevensegmentdecoder_dataflow_tb_testbench_arch_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_sevensegmentdecoder_dataflow_tb_testbench_arch: public HSim__s6 {
public:


HSim__s4 CH;
HSim__s4 CL;
HSim__s4 CP;
    HSim__s1 SA[5];
    Work_sevensegmentdecoder_dataflow_tb_testbench_arch(const char * name);
    ~Work_sevensegmentdecoder_dataflow_tb_testbench_arch();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_sevensegmentdecoder_dataflow_tb_testbench_arch(const char *name);

#endif
