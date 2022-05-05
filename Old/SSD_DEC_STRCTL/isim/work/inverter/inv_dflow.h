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

#ifndef H_Work_inverter_inv_dflow_H
#define H_Work_inverter_inv_dflow_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_inverter_inv_dflow: public HSim__s6 {
public:

    HSim__s1 SE[2];

  char t3;
    Work_inverter_inv_dflow(const char * name);
    ~Work_inverter_inv_dflow();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_inverter_inv_dflow(const char *name);

#endif
