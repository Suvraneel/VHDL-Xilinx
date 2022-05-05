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

#ifndef H_Work_sevensegmentdecoder_struct_structural_H
#define H_Work_sevensegmentdecoder_struct_structural_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_sevensegmentdecoder_struct_structural: public HSim__s6 {
public:

    HSim__s1 SE[8];

    Work_sevensegmentdecoder_struct_structural(const char * name);
    ~Work_sevensegmentdecoder_struct_structural();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_sevensegmentdecoder_struct_structural(const char *name);

#endif
