// ----------------------------------------------------------------------------
// SystemC Testbench Body
//
//    HLS version: 10.5c/896140 Production Release
//       HLS date: Sun Sep  6 22:45:38 PDT 2020
//  Flow Packages: HDL_Tcl 8.0a, SCVerify 10.4.1
//
//   Generated by: dss545@hansolo.poly.edu
// Generated date: Tue Feb 09 17:13:08 EST 2021
//
// ----------------------------------------------------------------------------
// 
// -------------------------------------
// mc_testbench
// SCVerify mc_testbench SC_MODULE
// -------------------------------------
// 
#include "mc_testbench.h"
#include <mc_testbench_util.h>
#include <mc_simulator_extensions.h>

mc_testbench* mc_testbench::that;
bool testbench::enable_idle_sync_mode;
unsigned short testbench::idle_sync_stable_cycles;
void testbench::set_enable_stalls(bool flag) { mc_testbench::set_enable_stalls(flag); }
void testbench::reset_request() { mc_testbench::that->reset_request(); }
void mc_testbench_reset_request() { mc_testbench::that->reset_request(); }
bool testbench::x_ignore;
void mc_testbench_x_skip(bool v) { testbench::x_skip = v; }
bool testbench::x_skip;
bool testbench::x_skip_quiet;
bool testbench::x_skip_once;
bool testbench::x_skip_noerr;
int  testbench::x_array_comp_first;
int  testbench::x_array_comp_last;
mc_wait_ctrl testbench::x_wait_ctrl;
bool testbench::return_ignore;
void mc_testbench_return_skip(bool v) { testbench::return_skip = v; }
bool testbench::return_skip;
bool testbench::return_skip_quiet;
bool testbench::return_skip_once;
bool testbench::return_skip_noerr;
int  testbench::return_array_comp_first;
int  testbench::return_array_comp_last;
bool testbench::return_use_mask;
int testbench::return_output_mask;
mc_wait_ctrl testbench::return_wait_ctrl;
#ifndef CCS_SCVERIFY_USE_CCS_BLOCK
extern "C++" int fir1(int x);
#endif
#ifndef CCS_SCVERIFY_USE_CCS_BLOCK
int testbench::exec_fir1(int x) {
   return mc_testbench::exec_fir1(x);
}
#endif

// ============================================
// Function: wait_for_idle_sync
// --------------------------------------------

void mc_testbench::wait_for_idle_sync()
{
   if (testbench::enable_idle_sync_mode) {
      std::cout << "mc_testbench STOPPING   @ " << sc_time_stamp() << std::endl;
      that->cpp_testbench_active.write(false);
      while (that->design_is_idle.read())  that->wait(that->design_is_idle.value_changed_event());
      while (!that->design_is_idle.read()) that->wait(that->design_is_idle.value_changed_event());
      that->cpp_testbench_active.write(true);
      std::cout << "mc_testbench CONTINUING @ " << sc_time_stamp() << std::endl;
   } else {
      that->cpp_testbench_active.write(true);
   }
}
// ============================================
// Function: set_enable_stalls
// --------------------------------------------

void mc_testbench::set_enable_stalls(bool flag)
{
   if (flag) {
     std::cout << "Enabling STALL_FLAG toggling" << std::endl;
     that->enable_stalls.write(sc_dt::Log_1);
   } else {
     std::cout << "Disabling STALL_FLAG toggling" << std::endl;
     that->enable_stalls.write(sc_dt::Log_0);
   }
}
// ============================================
// Function: reset_request
// --------------------------------------------

void mc_testbench::reset_request()
{
   reset_request_event.notify(0,SC_NS);
}
// ============================================
// Function: capture_x
// --------------------------------------------

void mc_testbench::capture_x(int x)
{
   if (x_capture_count == wait_cnt)
      wait_on_input_required();
   if (_capture_x && !testbench::x_ignore)
   {
      int cur_iter = x_iteration_count;
      ++x_iteration_count;
      ccs_x->put(x); // THIS
      ++x_capture_count;
      mc_testbench_util::process_wait_ctrl("x",testbench::x_wait_ctrl,ccs_wait_ctrl_x.operator->(),cur_iter,x_capture_count,0);
   }
   testbench::x_ignore = false;
}
// ============================================
// Function: capture__TOP__return
// --------------------------------------------

void mc_testbench::capture__TOP__return(int _TOP__return)
{
   if (_capture_return)
   {
      int cur_iter = return_iteration_count;
      ++return_iteration_count;
      mc_golden_info< int, MaskPacket<0, 32> > return_tmp(_TOP__return, testbench::return_ignore, false, return_iteration_count);
      // BEGIN: testbench output_mask control for field_name return
      if ( testbench::return_use_mask ) {
         sc_lv<32> tmp_mask_lv;
         type_to_vector(testbench::return_output_mask, 32, tmp_mask_lv);
         return_tmp._use_mask = true;
         return_tmp._packet._mask = tmp_mask_lv;
      }
      // END: testbench output_mask control for field_name return
      if (!testbench::return_skip) {
         return_golden.put(return_tmp);
         ++return_capture_count;
      } else {
         if (!testbench::return_skip_quiet || !testbench::return_skip_once) {
            std::ostringstream msg; msg.str("");
            msg << "testbench::return_skip=true for iteration=" << return_iteration_count << " @ " << sc_time_stamp();
            SC_REPORT_WARNING("User testbench", msg.str().c_str());
            testbench::return_skip_once = true;
         }
      }
      mc_testbench_util::process_wait_ctrl("return",testbench::return_wait_ctrl,ccs_wait_ctrl_return.operator->(),cur_iter,return_capture_count,0);
      testbench::return_use_mask = false;
   }
   testbench::return_ignore = false;
   testbench::return_skip = false;
}
// ============================================
// Function: wait_on_input_required
// --------------------------------------------

void mc_testbench::wait_on_input_required()
{
   ++wait_cnt;
   wait(SC_ZERO_TIME); // get fifos a chance to update
   ++period_counter;
   sc_time timeout = sc_time_stamp() - previous_timestamp;
   if (calculate_period && sc_time_stamp() > SC_ZERO_TIME && sc_time_stamp() != previous_timestamp && sc_time_stamp() != timeout) {
      average_period = (average_period + timeout) / 2;
   }
   previous_timestamp = sc_time_stamp();
   while (atleast_one_active_input) {
      if (_capture_x && ccs_x->used() == 0) return;
      that->cpp_testbench_active.write(false);
      if (average_period > SC_ZERO_TIME && sc_time_stamp() != timeout)
         wait(average_period * 10, ccs_x->ok_to_put());
      else
         wait(ccs_x->ok_to_put());
      that->cpp_testbench_active.write(true);
      if (timed_out()) {
         calculate_period = false;
         return;
      }
   }
}
// ============================================
// Function: capture_IN
// --------------------------------------------

void mc_testbench::capture_IN(int x)
{
   that->capture_x(x);
}
// ============================================
// Function: capture_OUT
// --------------------------------------------

void mc_testbench::capture_OUT(int _TOP__return, int x)
{
   that->capture__TOP__return(_TOP__return);
}
// ============================================
// Function: exec_fir1
// --------------------------------------------

int mc_testbench::exec_fir1(int x)
{
   #ifndef CCS_SCVERIFY_USE_CCS_BLOCK
   that->cpp_testbench_active.write(true);
   capture_IN(x);
   int _TOP__return = fir1(x);
   // throttle ac_channel based on number of calls to chan::size() or chan::empty() or chan::nb_read() (but not chan::available()) 
   if (1) {
      int cnt=0;
      if (cnt) std::cout << "mc_testbench.cpp: CONTINUES @ " << sc_time_stamp() << std::endl;
      if (cnt) that->cpp_testbench_active.write(true);
   }
   capture_OUT(_TOP__return, x);
   return _TOP__return;
   #else
   int _TOP__return;
   return _TOP__return;
   #endif
}
// ============================================
// Function: start_of_simulation
// --------------------------------------------

void mc_testbench::start_of_simulation()
{
   set_enable_stalls(false);
}
// ============================================
// Function: end_of_simulation
// --------------------------------------------

void mc_testbench::end_of_simulation()
{
   if (!_checked_results) {
      SC_REPORT_INFO(name(), "Testbench exited early or ran into deadlock");
      check_results();
   }
}
// ============================================
// Function: check_results
// --------------------------------------------

void mc_testbench::check_results()
{
   if (_checked_results) return;
   _checked_results = true;
   cout<<endl;
   cout<<"Checking results"<<endl;
   if (main_exit_code) _failed = true;
   int _num_outputs_checked = 0;
   bool _has_capture_counts = false;
   std::ostringstream mctb_msg;
   
   if (!_capture_return) {
      cout<<"'return' - warning, output was optimized away"<<endl;
   } else {
      _num_outputs_checked++;
      _failed |= return_comp->check_results(return_capture_count,testbench::return_skip_noerr);
      _has_capture_counts |= !!(return_capture_count);
   }
   cout<<endl;
   if (_num_outputs_checked == 0) {
      cout<<"Error: All outputs were optimized away. No output values were compared."<<endl;
      _failed = _failed || (_num_outputs_checked == 0);
   }
   if (!_has_capture_counts) {
      cout<<"Error: Nothing to compare, all output capture counts are zero."<<endl;
      _failed = true;
   }
   if (main_exit_code) cout << "Error: C++ Testbench 'main()' returned a non-zero exit code ("<<main_exit_code<<"). Check your testbench." <<endl;
   mctb_msg.clear();
   if (_failed) mctb_msg << "Simulation FAILED";
   else         mctb_msg << "Simulation PASSED";
   mctb_msg << " @ " << sc_time_stamp();
   if (_channel_mismatch && _failed)
   mctb_msg << endl << "An input channel was switched before the input fifo was fully empty. Check your testbench.";
   SC_REPORT_INFO(this->name(), mctb_msg.str().c_str());
}
// ============================================
// Function: failed
// --------------------------------------------

bool mc_testbench::failed()
{
   return _failed;
}
// ============================================
// Function: set_failed
// --------------------------------------------

void mc_testbench::set_failed(bool fail)
{
   _failed = fail;
}
// ---------------------------------------------------------------
// Process: SC_METHOD wait_for_end
// Static sensitivity: sensitive << clk.pos() << testbench_end_event;

void mc_testbench::wait_for_end() {
   // If run() has not finished, we do nothing here
   if (!testbench_ended) return;
   // check for completed outputs
   if (return_comp->get_compare_count() < return_capture_count) {testbench_end_event.notify(1,SC_NS); return;}
   // If we made it here, all outputs have flushed. Check the results
   SC_REPORT_INFO(name(), "Simulation completed");
   check_results();
   sc_stop();
}
// ---------------------------------------------------------------
// Process: SC_THREAD run
// Static sensitivity: 

void mc_testbench::run() {
   testbench::enable_idle_sync_mode = false;
   testbench::idle_sync_stable_cycles = 1;
   _channel_mismatch = false;
   testbench::x_ignore = false;
   testbench::x_skip = false;
   testbench::x_skip_quiet = false;
   testbench::x_skip_once = false;
   testbench::x_skip_noerr = false;
   testbench::x_array_comp_first = -1;
   testbench::x_array_comp_last = -1;
   testbench::x_wait_ctrl.clear();
   x_capture_count = 0;
   x_iteration_count = 0;
   testbench::return_ignore = false;
   testbench::return_skip = false;
   testbench::return_skip_quiet = false;
   testbench::return_skip_once = false;
   testbench::return_skip_noerr = false;
   testbench::return_array_comp_first = -1;
   testbench::return_array_comp_last = -1;
   testbench::return_use_mask = false;
   testbench::return_output_mask = (int) ~0;
   testbench::return_wait_ctrl.clear();
   return_capture_count = 0;
   return_iteration_count = 0;
   testbench testbench_inst(sc_argc(), sc_argv());
   main_exit_code = testbench_inst.main();
   cout<<"Info: Execution of user-supplied C++ testbench 'main()' has completed with exit code = " << main_exit_code << endl;
   cout<<endl;
   cout<<"Info: Collecting data completed"<<endl;
   cout<<"   captured "<<x_capture_count<<" values of x"<<endl;
   cout<<"   captured "<<return_capture_count<<" values of return"<<endl;
   testbench_ended = true;
   testbench_end_event.notify(SC_ZERO_TIME);
}
#ifdef CCS_SCVERIFY_USE_CCS_BLOCK
#include "ccs_block_macros.cpp"
#endif
