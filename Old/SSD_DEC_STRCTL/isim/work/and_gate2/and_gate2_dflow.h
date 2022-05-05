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

#ifndef H_Work_and_gate2_and_gate2_dflow_H
#define H_Work_and_gate2_and_gate2_dflow_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_and_gate2_and_gate2_dflow: public HSim__s6 {
public:

    HSim__s1 SE[3];

  char t6;
    Work_and_gate2_and_gate2_dflow(const char * name);
    ~Work_and_gate2_and_gate2_dflow();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_and_gate2_and_gate2_dflow(const char *name);

#endif
