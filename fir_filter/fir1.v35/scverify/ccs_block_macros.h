// ccs_block_macros.h
#include "ccs_testbench.h"

#ifndef EXCLUDE_CCS_BLOCK_INTERCEPT
#ifndef INCLUDE_CCS_BLOCK_INTERCEPT
#define INCLUDE_CCS_BLOCK_INTERCEPT
#ifdef  CCS_DESIGN_FUNC_fir1
extern void mc_testbench_capture_IN(int x);
extern void mc_testbench_capture_OUT(int _retvalue,int x);
extern void mc_testbench_wait_for_idle_sync();

#define ccs_intercept_fir1_6 \
  ccs_real_fir1(int x);\
  int fir1(int x)\
{\
    static bool ccs_intercept_flag = false;\
    if (!ccs_intercept_flag) {\
      std::cout << "SCVerify intercepting C++ function 'fir1' for RTL block 'fir1'" << std::endl;\
      ccs_intercept_flag=true;\
    }\
    mc_testbench_capture_IN(x);\
    int _retvalue = ccs_real_fir1(x);\
    mc_testbench_capture_OUT(_retvalue,x);\
    return _retvalue;\
}\
  int ccs_real_fir1
#else
#define ccs_intercept_fir1_6 fir1
#endif //CCS_DESIGN_FUNC_fir1
#endif //INCLUDE_CCS_BLOCK_INTERCEPT
#endif //EXCLUDE_CCS_BLOCK_INTERCEPT

// fir2 6 INLINE
#define ccs_intercept_fir2_6 fir2
// fir3 26 INLINE
#define ccs_intercept_fir3_26 fir3
