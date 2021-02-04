// ----------------------------------------------------------------------------
// User Testbench Interface Header
//
//    HLS version: 10.5c/896140 Production Release
//       HLS date: Sun Sep  6 22:45:38 PDT 2020
//  Flow Packages: HDL_Tcl 8.0a, SCVerify 10.4.1
//
//   Generated by: dss545@hansolo.poly.edu
// Generated date: Wed Feb 03 19:50:06 EST 2021
//
// ----------------------------------------------------------------------------

#ifndef CCS_TESTBENCH_H
#define CCS_TESTBENCH_H
#include "mc_wait_ctrl.h"
#include <string.h>
#include <iostream>

class testbench
{
   public:
   int argc;
   char** argv;
   int main(); //CCS_MAIN
   static bool enable_idle_sync_mode;
   static unsigned short idle_sync_stable_cycles;
   static void set_enable_stalls(bool flag);
   static void reset_request();
   static bool x_ignore;
   static bool x_skip;
   static bool x_skip_quiet;
   static bool x_skip_once;
   static bool x_skip_noerr;
   static int  x_array_comp_first;
   static int  x_array_comp_last;
   static mc_wait_ctrl x_wait_ctrl;
   static bool return_ignore;
   static bool return_skip;
   static bool return_skip_quiet;
   static bool return_skip_once;
   static bool return_skip_noerr;
   static int  return_array_comp_first;
   static int  return_array_comp_last;
   static bool return_use_mask;
   static int return_output_mask;
   static mc_wait_ctrl return_wait_ctrl;
   #ifndef CCS_SCVERIFY_USE_CCS_BLOCK
   static int exec_fir1(int x);
   #endif
   explicit testbench(int _argc, const char* const *_argv)
      :argc(_argc), argv(const_cast<char**>(_argv))
   {
   }
   ~testbench()
   {
   }
   private:
   testbench() {}
};
extern void mc_testbench_reset_request();
extern void mc_testbench_x_skip(bool v);
extern void mc_testbench_return_skip(bool v);
#endif //CCS_TESTBENCH_H
