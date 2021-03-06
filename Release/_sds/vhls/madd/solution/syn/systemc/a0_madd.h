// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _a0_madd_HH_
#define _a0_madd_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "a0_madd_fadd_32ns_32bkb.h"

namespace ap_rtl {

struct a0_madd : public sc_module {
    // Port declarations 15
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > A_dout;
    sc_in< sc_logic > A_empty_n;
    sc_out< sc_logic > A_read;
    sc_in< sc_lv<32> > B_dout;
    sc_in< sc_logic > B_empty_n;
    sc_out< sc_logic > B_read;
    sc_out< sc_lv<32> > C_din;
    sc_in< sc_logic > C_full_n;
    sc_out< sc_logic > C_write;


    // Module declarations
    a0_madd(sc_module_name name);
    SC_HAS_PROCESS(a0_madd);

    ~a0_madd();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    a0_madd_fadd_32ns_32bkb<1,8,32,32,32>* madd_fadd_32ns_32bkb_U1;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > A_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_90;
    sc_signal< sc_logic > B_blk_n;
    sc_signal< sc_logic > C_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter10;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_90_pp0_iter9_reg;
    sc_signal< sc_lv<11> > indvar_flatten_reg_63;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_78_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter8;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter9;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter10;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_90_pp0_iter1_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_90_pp0_iter2_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_90_pp0_iter3_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_90_pp0_iter4_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_90_pp0_iter5_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_90_pp0_iter6_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_90_pp0_iter7_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_90_pp0_iter8_reg;
    sc_signal< sc_lv<11> > indvar_flatten_next_fu_84_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<32> > A_read_reg_99;
    sc_signal< sc_lv<32> > B_read_reg_104;
    sc_signal< sc_lv<32> > grp_fu_74_p2;
    sc_signal< sc_lv<32> > tmp_4_reg_109;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter8;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter9;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_logic > grp_fu_74_ce;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state13;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<11> ap_const_lv11_400;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_A_blk_n();
    void thread_A_read();
    void thread_B_blk_n();
    void thread_B_read();
    void thread_C_blk_n();
    void thread_C_din();
    void thread_C_write();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state10_pp0_stage0_iter8();
    void thread_ap_block_state11_pp0_stage0_iter9();
    void thread_ap_block_state12_pp0_stage0_iter10();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state7_pp0_stage0_iter5();
    void thread_ap_block_state8_pp0_stage0_iter6();
    void thread_ap_block_state9_pp0_stage0_iter7();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_exitcond_flatten_fu_78_p2();
    void thread_grp_fu_74_ce();
    void thread_indvar_flatten_next_fu_84_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
