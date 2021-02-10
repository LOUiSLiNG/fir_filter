// ----------------------------------------------------------------------------
// SystemC Testbench Header
//
//    HLS version: 10.5c/896140 Production Release
//       HLS date: Sun Sep  6 22:45:38 PDT 2020
//  Flow Packages: HDL_Tcl 8.0a, SCVerify 10.4.1
//
//   Generated by: dss545@hansolo.poly.edu
// Generated date: Tue Feb 09 21:52:56 EST 2021
//
// ----------------------------------------------------------------------------
#ifdef CCS_SCVERIFY

// 
// -------------------------------------
// mc_testbench
// SCVerify mc_testbench SC_MODULE
// -------------------------------------
// 
#ifndef INCLUDED_MC_TESTBENCH_H
#define INCLUDED_MC_TESTBENCH_H


#ifndef SC_USE_STD_STRING
#define SC_USE_STD_STRING
#endif

#include "../../fir_filter2.h"
#include "ccs_testbench.h"
#include <systemc.h>
#include <tlm.h>
#include <mc_container_types.h>
#include <mc_typeconv.h>
#include <mc_transactors.h>
#include <mc_comparator.h>
#include <mc_end_of_testbench.h>
#include <vector>


class mc_testbench : public sc_module
{
public:
   // Module instance pointers
   mc_comparator< int , MaskPacket< 0, 32 > > *return_comp;
   
   // Interface Ports
   sc_in< bool > clk;
   sc_port< tlm::tlm_fifo_put_if< int > > ccs_x;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_x;
   sc_port< tlm::tlm_fifo_get_if< int > > ccs_return;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_return;
   sc_in< bool > design_is_idle;
   sc_out< sc_logic > enable_stalls;
   sc_in< unsigned short > stall_coverage;
   
   // Named Objects
   
   // Data objects
   bool testbench_ended;
   int main_exit_code;
   bool atleast_one_active_input;
   sc_time last_event_time;
   sc_time last_event_time2;
   sc_signal< bool >                          cpp_testbench_active;
   sc_event testbench_end_event;
   sc_event reset_request_event;
   bool _checked_results;
   bool _failed;
   static mc_testbench* that;
   bool _channel_mismatch;
   bool _capture_x;
   int x_capture_count;
   int x_iteration_count;
   tlm::tlm_fifo< mc_golden_info< int, MaskPacket<0, 32> > > return_golden;
   bool _capture_return;
   int return_capture_count;
   int return_iteration_count;
   int wait_cnt;
   sc_time previous_timestamp;
   sc_time average_period;
   unsigned int period_counter;
   bool calculate_period;
   
   // Declare processes (SC_METHOD and SC_THREAD)
   void wait_for_end();
   void run();
   
   // Constructor
   SC_HAS_PROCESS(mc_testbench);
   mc_testbench(
      const sc_module_name& name
   )
      : clk("clk")
      , ccs_x("ccs_x")
      , ccs_wait_ctrl_x("ccs_wait_ctrl_x")
      , ccs_return("ccs_return")
      , ccs_wait_ctrl_return("ccs_wait_ctrl_return")
      , design_is_idle("design_is_idle")
      , enable_stalls("enable_stalls")
      , stall_coverage("stall_coverage")
      , cpp_testbench_active("cpp_testbench_active")
      , return_golden("return_golden",-1)
   {
      // Instantiate other modules
      return_comp = new mc_comparator< int , MaskPacket< 0, 32 > > (
         "return_comp",
         "return",
         0,
         0,
         1
      );
      return_comp->data_in(ccs_return);
      return_comp->data_golden(return_golden);
      
      
      // Register processes
      SC_METHOD(wait_for_end);
      sensitive << clk.pos() << testbench_end_event;
      SC_THREAD(run);
      // Other constructor statements
      set_stack_size(64000000);
      _checked_results = false;
      that = this;
      testbench_ended = false;
      main_exit_code = 0;
      atleast_one_active_input = true;
      _failed = false;
      _capture_x = true;
      _capture_return = true;
      wait_cnt = 0;
      previous_timestamp = SC_ZERO_TIME;
      average_period = SC_ZERO_TIME;
      period_counter = 0;
      calculate_period = true;
   }
   
   ~mc_testbench()
   {
      delete return_comp;
      return_comp = 0;
   }
   
   // C++ class functions
   public:
      static void wait_for_idle_sync() ;
   public:
      static void set_enable_stalls(bool flag) ;
   public:
      void reset_request() ;
   public:
      void capture_x(int x) ;
   public:
      void capture__TOP__return(int _TOP__return) ;
   protected:
      void wait_on_input_required() ;
   public:
      static void capture_IN(int x) ;
   public:
      static void capture_OUT(int _TOP__return, int x) ;
   public:
      static int exec_fir1(int x) ;
   protected:
      void start_of_simulation() ;
   protected:
      void end_of_simulation() ;
   public:
      void check_results() ;
   public:
      bool failed() ;
   public:
      void set_failed(bool fail) ;
};
#endif
#endif //CCS_SCVERIFY
