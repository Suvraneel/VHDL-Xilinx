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

#ifndef H_Work_a_signal_out_a_signal_out_strctl_H
#define H_Work_a_signal_out_a_signal_out_strctl_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_a_signal_out_a_signal_out_strctl: public HSim__s6 {
public:

    HSim__s1 SE[2];

    HSim__s1 SA[2];
    Work_a_signal_out_a_signal_out_strctl(const char * name);
    ~Work_a_signal_out_a_signal_out_strctl();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_a_signal_out_a_signal_out_strctl(const char *name);

#endif
