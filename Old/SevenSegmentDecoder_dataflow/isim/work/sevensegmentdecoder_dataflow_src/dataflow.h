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

#ifndef H_Work_sevensegmentdecoder_dataflow_src_dataflow_H
#define H_Work_sevensegmentdecoder_dataflow_src_dataflow_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_sevensegmentdecoder_dataflow_src_dataflow: public HSim__s6 {
public:

    HSim__s1 SE[5];

  char t0;
  char t1;
  char t2;
  char t3;
  char t4;
  char t5;
  char t6;
  char t7;
  char t8;
  char t9;
  char t10;
  char t11;
  char t12;
  char t13;
    Work_sevensegmentdecoder_dataflow_src_dataflow(const char * name);
    ~Work_sevensegmentdecoder_dataflow_src_dataflow();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_sevensegmentdecoder_dataflow_src_dataflow(const char *name);

#endif
