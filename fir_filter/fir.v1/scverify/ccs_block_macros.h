// ccs_block_macros.h
#include "ccs_testbench.h"

#ifndef EXCLUDE_CCS_BLOCK_INTERCEPT
#ifndef INCLUDE_CCS_BLOCK_INTERCEPT
#define INCLUDE_CCS_BLOCK_INTERCEPT
#ifdef  CCS_DESIGN_FUNC_fir
extern void mc_testbench_capture_IN( int input[128],  int output[128]);
extern void mc_testbench_capture_OUT( int input[128],  int output[128]);
extern void mc_testbench_wait_for_idle_sync();

#define ccs_intercept_fir_6 \
  ccs_real_fir(int input[128],int output[128]);\
  void fir(int input[128],int output[128])\
{\
    static bool ccs_intercept_flag = false;\
    if (!ccs_intercept_flag) {\
      std::cout << "SCVerify intercepting C++ function 'fir' for RTL block 'fir'" << std::endl;\
      ccs_intercept_flag=true;\
    }\
    mc_testbench_capture_IN(input,output);\
    ccs_real_fir(input,output);\
    mc_testbench_capture_OUT(input,output);\
}\
  void ccs_real_fir
#else
#define ccs_intercept_fir_6 fir
#endif //CCS_DESIGN_FUNC_fir
#endif //INCLUDE_CCS_BLOCK_INTERCEPT
#endif //EXCLUDE_CCS_BLOCK_INTERCEPT

