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

#ifndef H_Work_d_signal_out_d_signal_out_strcl_H
#define H_Work_d_signal_out_d_signal_out_strcl_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_d_signal_out_d_signal_out_strcl: public HSim__s6 {
public:

    HSim__s1 SE[2];

    HSim__s1 SA[5];
    Work_d_signal_out_d_signal_out_strcl(const char * name);
    ~Work_d_signal_out_d_signal_out_strcl();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_d_signal_out_d_signal_out_strcl(const char *name);

#endif
