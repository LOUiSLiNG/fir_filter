// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.5c/896140 Production Release
//  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
// 
//  Generated by:   dss545@hansolo.poly.edu
//  Generated date: Tue Feb  9 21:43:24 2021
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    fir1_core_core_fsm
//  FSM Module
// ------------------------------------------------------------------


module fir1_core_core_fsm (
  clk, rst, fsm_output, for_C_2_tr0
);
  input clk;
  input rst;
  output [6:0] fsm_output;
  reg [6:0] fsm_output;
  input for_C_2_tr0;


  // FSM State Type Declaration for fir1_core_core_fsm_1
  parameter
    main_C_0 = 3'd0,
    for_C_0 = 3'd1,
    for_C_1 = 3'd2,
    for_C_2 = 3'd3,
    main_C_1 = 3'd4,
    main_C_2 = 3'd5,
    main_C_3 = 3'd6;

  reg [2:0] state_var;
  reg [2:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir1_core_core_fsm_1
    case (state_var)
      for_C_0 : begin
        fsm_output = 7'b0000010;
        state_var_NS = for_C_1;
      end
      for_C_1 : begin
        fsm_output = 7'b0000100;
        state_var_NS = for_C_2;
      end
      for_C_2 : begin
        fsm_output = 7'b0001000;
        if ( for_C_2_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = for_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 7'b0010000;
        state_var_NS = main_C_2;
      end
      main_C_2 : begin
        fsm_output = 7'b0100000;
        state_var_NS = main_C_3;
      end
      main_C_3 : begin
        fsm_output = 7'b1000000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 7'b0000001;
        state_var_NS = for_C_0;
      end
    endcase
  end

  always @(posedge clk) begin
    if ( rst ) begin
      state_var <= main_C_0;
    end
    else begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    fir1_core
// ------------------------------------------------------------------


module fir1_core (
  clk, rst, x_rsc_dat, x_rsc_triosy_lz, return_rsc_dat, return_rsc_triosy_lz
);
  input clk;
  input rst;
  input [31:0] x_rsc_dat;
  output x_rsc_triosy_lz;
  output [31:0] return_rsc_dat;
  output return_rsc_triosy_lz;


  // Interconnect Declarations
  wire [31:0] x_rsci_idat;
  reg [31:0] return_rsci_idat;
  reg x_rsc_triosy_obj_ld;
  reg return_rsc_triosy_obj_ld;
  wire [6:0] fsm_output;
  wire or_dcpl;
  wire or_dcpl_1;
  wire or_dcpl_3;
  wire or_dcpl_5;
  wire or_dcpl_6;
  wire or_dcpl_8;
  wire or_dcpl_12;
  reg for_slc_for_acc_4_itm;
  reg [3:0] i_3_0_sva;
  wire [31:0] z_out;
  wire [32:0] nl_z_out;
  reg [31:0] shift_reg_5_sva;
  reg [31:0] shift_reg_4_sva;
  reg [31:0] shift_reg_6_sva;
  reg [31:0] shift_reg_3_sva;
  reg [31:0] shift_reg_7_sva;
  reg [31:0] shift_reg_2_sva;
  reg [31:0] shift_reg_8_sva;
  reg [31:0] shift_reg_1_sva;
  reg [31:0] shift_reg_9_sva;
  reg [31:0] shift_reg_0_sva;
  reg [31:0] shift_reg_5_lpi_2;
  reg [31:0] shift_reg_4_lpi_2;
  reg [31:0] shift_reg_6_lpi_2;
  reg [31:0] shift_reg_3_lpi_2;
  reg [31:0] shift_reg_7_lpi_2;
  reg [31:0] shift_reg_2_lpi_2;
  reg [31:0] shift_reg_8_lpi_2;
  reg [31:0] shift_reg_1_lpi_2;
  reg [31:0] shift_reg_9_lpi_2;
  reg [31:0] x_sva;
  reg [31:0] acc_2_sva;
  reg [3:0] for_acc_2_cse_sva;
  reg [31:0] for_for_slc_shift_reg_32_31_0_1_ncse_sva;
  reg [31:0] shift_reg_5_sva_1;
  reg [31:0] shift_reg_4_sva_1;
  reg [31:0] shift_reg_6_sva_1;
  reg [31:0] shift_reg_3_sva_1;
  reg [31:0] shift_reg_7_sva_1;
  reg [31:0] shift_reg_2_sva_1;
  reg [31:0] shift_reg_8_sva_1;
  reg [31:0] shift_reg_1_sva_1;
  reg [31:0] shift_reg_9_sva_1;
  reg [7:0] for_slc_C_rom_1_for_slc_i_3_0_1_tmp_9_8_1_1_sva;
  reg for_slc_C_rom_1_for_slc_i_3_0_1_tmp_9_0_1_sva;
  reg [31:0] acc_2_sva_1;
  wire [31:0] for_for_slc_shift_reg_32_31_0_1_ncse_sva_1;
  wire [3:0] for_acc_2_cse_sva_1;
  wire [4:0] nl_for_acc_2_cse_sva_1;
  wire [7:0] ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e_1;
  wire ROM_1i4_1o1_04cc3276c127ea0e308702c30762117d2e_1;
  reg [31:0] reg_for_mul_cse;
  wire signed [42:0] nl_reg_for_mul_cse;

  wire[0:0] acc_not_2_nl;
  wire[4:0] for_acc_nl;
  wire[5:0] nl_for_acc_nl;
  wire[0:0] and_82_nl;
  wire[0:0] and_88_nl;
  wire[0:0] and_94_nl;
  wire[0:0] and_100_nl;
  wire[0:0] and_106_nl;
  wire[0:0] and_112_nl;
  wire[0:0] and_118_nl;
  wire[0:0] and_124_nl;
  wire[0:0] and_130_nl;
  wire[7:0] for_mux_14_nl;
  wire[0:0] for_for_or_1_nl;
  wire[31:0] for_mux_15_nl;
  wire[31:0] mux_4_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [0:0] nl_fir1_core_core_fsm_inst_for_C_2_tr0;
  assign nl_fir1_core_core_fsm_inst_for_C_2_tr0 = ~ for_slc_for_acc_4_itm;
  ccs_in_v1 #(.rscid(32'sd1),
  .width(32'sd32)) x_rsci (
      .dat(x_rsc_dat),
      .idat(x_rsci_idat)
    );
  ccs_out_v1 #(.rscid(32'sd2),
  .width(32'sd32)) return_rsci (
      .idat(return_rsci_idat),
      .dat(return_rsc_dat)
    );
  mgc_io_sync_v2 #(.valid(32'sd0)) x_rsc_triosy_obj (
      .ld(x_rsc_triosy_obj_ld),
      .lz(x_rsc_triosy_lz)
    );
  mgc_io_sync_v2 #(.valid(32'sd0)) return_rsc_triosy_obj (
      .ld(return_rsc_triosy_obj_ld),
      .lz(return_rsc_triosy_lz)
    );
  ROM_1i4_1o8_67a60b90ba118081e4925479fe39390ab2  U_ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e_rg
      (
      .I_1(i_3_0_sva),
      .O_1(ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e_1)
    );
  ROM_1i4_1o1_a981173f914bc276eca7f42d28616f0ab2  U_ROM_1i4_1o1_04cc3276c127ea0e308702c30762117d2e_rg
      (
      .I_1(i_3_0_sva),
      .O_1(ROM_1i4_1o1_04cc3276c127ea0e308702c30762117d2e_1)
    );
  fir1_core_core_fsm fir1_core_core_fsm_inst (
      .clk(clk),
      .rst(rst),
      .fsm_output(fsm_output),
      .for_C_2_tr0(nl_fir1_core_core_fsm_inst_for_C_2_tr0[0:0])
    );
  assign for_for_slc_shift_reg_32_31_0_1_ncse_sva_1 = MUX_v_32_10_2(shift_reg_0_sva,
      shift_reg_1_lpi_2, shift_reg_2_lpi_2, shift_reg_3_lpi_2, shift_reg_4_lpi_2,
      shift_reg_5_lpi_2, shift_reg_6_lpi_2, shift_reg_7_lpi_2, shift_reg_8_lpi_2,
      shift_reg_9_lpi_2, for_acc_2_cse_sva_1);
  assign nl_for_acc_2_cse_sva_1 = i_3_0_sva + 4'b1111;
  assign for_acc_2_cse_sva_1 = nl_for_acc_2_cse_sva_1[3:0];
  assign or_dcpl = (i_3_0_sva[1:0]!=2'b01);
  assign or_dcpl_1 = (i_3_0_sva[3:2]!=2'b10);
  assign or_dcpl_3 = (i_3_0_sva[1:0]!=2'b00);
  assign or_dcpl_5 = ~((i_3_0_sva[1:0]==2'b11));
  assign or_dcpl_6 = (i_3_0_sva[3:2]!=2'b01);
  assign or_dcpl_8 = (i_3_0_sva[1:0]!=2'b10);
  assign or_dcpl_12 = (i_3_0_sva[3:2]!=2'b00);
  always @(posedge clk) begin
    if ( rst ) begin
      return_rsci_idat <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[5] ) begin
      return_rsci_idat <= z_out;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      x_sva <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[0] ) begin
      x_sva <= x_rsci_idat;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      acc_2_sva <= 32'b00000000000000000000000000000000;
    end
    else if ( (fsm_output[0]) | (fsm_output[3]) ) begin
      acc_2_sva <= MUX_v_32_2_2(32'b00000000000000000000000000000000, z_out, acc_not_2_nl);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      i_3_0_sva <= 4'b0000;
      shift_reg_1_lpi_2 <= 32'b00000000000000000000000000000000;
      shift_reg_2_lpi_2 <= 32'b00000000000000000000000000000000;
      shift_reg_3_lpi_2 <= 32'b00000000000000000000000000000000;
      shift_reg_4_lpi_2 <= 32'b00000000000000000000000000000000;
      shift_reg_5_lpi_2 <= 32'b00000000000000000000000000000000;
      shift_reg_6_lpi_2 <= 32'b00000000000000000000000000000000;
      shift_reg_7_lpi_2 <= 32'b00000000000000000000000000000000;
      shift_reg_8_lpi_2 <= 32'b00000000000000000000000000000000;
      shift_reg_9_lpi_2 <= 32'b00000000000000000000000000000000;
      return_rsc_triosy_obj_ld <= 1'b0;
      x_rsc_triosy_obj_ld <= 1'b0;
      for_for_slc_shift_reg_32_31_0_1_ncse_sva <= 32'b00000000000000000000000000000000;
      for_slc_C_rom_1_for_slc_i_3_0_1_tmp_9_8_1_1_sva <= 8'b00000000;
      for_slc_C_rom_1_for_slc_i_3_0_1_tmp_9_0_1_sva <= 1'b0;
      reg_for_mul_cse <= 32'b00000000000000000000000000000000;
    end
    else begin
      i_3_0_sva <= MUX_v_4_2_2(4'b1010, for_acc_2_cse_sva, fsm_output[3]);
      shift_reg_1_lpi_2 <= MUX_v_32_2_2(shift_reg_1_sva, shift_reg_1_sva_1, fsm_output[3]);
      shift_reg_2_lpi_2 <= MUX_v_32_2_2(shift_reg_2_sva, shift_reg_2_sva_1, fsm_output[3]);
      shift_reg_3_lpi_2 <= MUX_v_32_2_2(shift_reg_3_sva, shift_reg_3_sva_1, fsm_output[3]);
      shift_reg_4_lpi_2 <= MUX_v_32_2_2(shift_reg_4_sva, shift_reg_4_sva_1, fsm_output[3]);
      shift_reg_5_lpi_2 <= MUX_v_32_2_2(shift_reg_5_sva, shift_reg_5_sva_1, fsm_output[3]);
      shift_reg_6_lpi_2 <= MUX_v_32_2_2(shift_reg_6_sva, shift_reg_6_sva_1, fsm_output[3]);
      shift_reg_7_lpi_2 <= MUX_v_32_2_2(shift_reg_7_sva, shift_reg_7_sva_1, fsm_output[3]);
      shift_reg_8_lpi_2 <= MUX_v_32_2_2(shift_reg_8_sva, shift_reg_8_sva_1, fsm_output[3]);
      shift_reg_9_lpi_2 <= MUX_v_32_2_2(shift_reg_9_sva, shift_reg_9_sva_1, fsm_output[3]);
      return_rsc_triosy_obj_ld <= fsm_output[5];
      x_rsc_triosy_obj_ld <= (~ for_slc_for_acc_4_itm) & (fsm_output[3]);
      for_for_slc_shift_reg_32_31_0_1_ncse_sva <= for_for_slc_shift_reg_32_31_0_1_ncse_sva_1;
      for_slc_C_rom_1_for_slc_i_3_0_1_tmp_9_8_1_1_sva <= ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e_1;
      for_slc_C_rom_1_for_slc_i_3_0_1_tmp_9_0_1_sva <= ROM_1i4_1o1_04cc3276c127ea0e308702c30762117d2e_1;
      reg_for_mul_cse <= nl_reg_for_mul_cse[31:0];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_0_sva <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[4] ) begin
      shift_reg_0_sva <= x_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_5_sva <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[3] ) begin
      shift_reg_5_sva <= shift_reg_5_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_4_sva <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[3] ) begin
      shift_reg_4_sva <= shift_reg_4_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_6_sva <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[3] ) begin
      shift_reg_6_sva <= shift_reg_6_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_3_sva <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[3] ) begin
      shift_reg_3_sva <= shift_reg_3_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_7_sva <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[3] ) begin
      shift_reg_7_sva <= shift_reg_7_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_2_sva <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[3] ) begin
      shift_reg_2_sva <= shift_reg_2_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_8_sva <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[3] ) begin
      shift_reg_8_sva <= shift_reg_8_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_1_sva <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[3] ) begin
      shift_reg_1_sva <= shift_reg_1_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_9_sva <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[3] ) begin
      shift_reg_9_sva <= shift_reg_9_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      for_slc_for_acc_4_itm <= 1'b0;
    end
    else if ( fsm_output[1] ) begin
      for_slc_for_acc_4_itm <= readslicef_5_1_4(for_acc_nl);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      for_acc_2_cse_sva <= 4'b0000;
    end
    else if ( fsm_output[1] ) begin
      for_acc_2_cse_sva <= for_acc_2_cse_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_9_sva_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[1] ) begin
      shift_reg_9_sva_1 <= MUX_v_32_2_2(for_for_slc_shift_reg_32_31_0_1_ncse_sva_1,
          shift_reg_9_lpi_2, and_82_nl);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_8_sva_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[1] ) begin
      shift_reg_8_sva_1 <= MUX_v_32_2_2(for_for_slc_shift_reg_32_31_0_1_ncse_sva_1,
          shift_reg_8_lpi_2, and_88_nl);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_7_sva_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[1] ) begin
      shift_reg_7_sva_1 <= MUX_v_32_2_2(for_for_slc_shift_reg_32_31_0_1_ncse_sva_1,
          shift_reg_7_lpi_2, and_94_nl);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_6_sva_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[1] ) begin
      shift_reg_6_sva_1 <= MUX_v_32_2_2(for_for_slc_shift_reg_32_31_0_1_ncse_sva_1,
          shift_reg_6_lpi_2, and_100_nl);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_5_sva_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[1] ) begin
      shift_reg_5_sva_1 <= MUX_v_32_2_2(for_for_slc_shift_reg_32_31_0_1_ncse_sva_1,
          shift_reg_5_lpi_2, and_106_nl);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_4_sva_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[1] ) begin
      shift_reg_4_sva_1 <= MUX_v_32_2_2(for_for_slc_shift_reg_32_31_0_1_ncse_sva_1,
          shift_reg_4_lpi_2, and_112_nl);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_3_sva_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[1] ) begin
      shift_reg_3_sva_1 <= MUX_v_32_2_2(for_for_slc_shift_reg_32_31_0_1_ncse_sva_1,
          shift_reg_3_lpi_2, and_118_nl);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_2_sva_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[1] ) begin
      shift_reg_2_sva_1 <= MUX_v_32_2_2(for_for_slc_shift_reg_32_31_0_1_ncse_sva_1,
          shift_reg_2_lpi_2, and_124_nl);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_1_sva_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[1] ) begin
      shift_reg_1_sva_1 <= MUX_v_32_2_2(for_for_slc_shift_reg_32_31_0_1_ncse_sva_1,
          shift_reg_1_lpi_2, and_130_nl);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      acc_2_sva_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( fsm_output[3] ) begin
      acc_2_sva_1 <= z_out;
    end
  end
  assign acc_not_2_nl = ~ (fsm_output[0]);
  assign for_mux_14_nl = MUX_v_8_2_2(for_slc_C_rom_1_for_slc_i_3_0_1_tmp_9_8_1_1_sva,
      8'b00001101, fsm_output[4]);
  assign for_for_or_1_nl = for_slc_C_rom_1_for_slc_i_3_0_1_tmp_9_0_1_sva | (fsm_output[4]);
  assign for_mux_15_nl = MUX_v_32_2_2(for_for_slc_shift_reg_32_31_0_1_ncse_sva, x_sva,
      fsm_output[4]);
  assign nl_reg_for_mul_cse  = $signed(({for_mux_14_nl , 1'b0 , for_for_or_1_nl}))
      * $signed(conv_u2s_32_33(for_mux_15_nl));
  assign nl_for_acc_nl = ({1'b1 , (~ for_acc_2_cse_sva_1)}) + 5'b00001;
  assign for_acc_nl = nl_for_acc_nl[4:0];
  assign and_82_nl = (or_dcpl_1 | or_dcpl) & (fsm_output[1]);
  assign and_88_nl = (or_dcpl_1 | or_dcpl_3) & (fsm_output[1]);
  assign and_94_nl = (or_dcpl_6 | or_dcpl_5) & (fsm_output[1]);
  assign and_100_nl = (or_dcpl_6 | or_dcpl_8) & (fsm_output[1]);
  assign and_106_nl = (or_dcpl_6 | or_dcpl) & (fsm_output[1]);
  assign and_112_nl = (or_dcpl_6 | or_dcpl_3) & (fsm_output[1]);
  assign and_118_nl = (or_dcpl_12 | or_dcpl_5) & (fsm_output[1]);
  assign and_124_nl = (or_dcpl_12 | or_dcpl_8) & (fsm_output[1]);
  assign and_130_nl = (or_dcpl_12 | or_dcpl) & (fsm_output[1]);
  assign mux_4_nl = MUX_v_32_2_2(acc_2_sva_1, acc_2_sva, fsm_output[3]);
  assign nl_z_out = mux_4_nl + reg_for_mul_cse;
  assign z_out = nl_z_out[31:0];

  function automatic [31:0] MUX_v_32_10_2;
    input [31:0] input_0;
    input [31:0] input_1;
    input [31:0] input_2;
    input [31:0] input_3;
    input [31:0] input_4;
    input [31:0] input_5;
    input [31:0] input_6;
    input [31:0] input_7;
    input [31:0] input_8;
    input [31:0] input_9;
    input [3:0] sel;
    reg [31:0] result;
  begin
    case (sel)
      4'b0000 : begin
        result = input_0;
      end
      4'b0001 : begin
        result = input_1;
      end
      4'b0010 : begin
        result = input_2;
      end
      4'b0011 : begin
        result = input_3;
      end
      4'b0100 : begin
        result = input_4;
      end
      4'b0101 : begin
        result = input_5;
      end
      4'b0110 : begin
        result = input_6;
      end
      4'b0111 : begin
        result = input_7;
      end
      4'b1000 : begin
        result = input_8;
      end
      default : begin
        result = input_9;
      end
    endcase
    MUX_v_32_10_2 = result;
  end
  endfunction


  function automatic [31:0] MUX_v_32_2_2;
    input [31:0] input_0;
    input [31:0] input_1;
    input [0:0] sel;
    reg [31:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_32_2_2 = result;
  end
  endfunction


  function automatic [3:0] MUX_v_4_2_2;
    input [3:0] input_0;
    input [3:0] input_1;
    input [0:0] sel;
    reg [3:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_4_2_2 = result;
  end
  endfunction


  function automatic [7:0] MUX_v_8_2_2;
    input [7:0] input_0;
    input [7:0] input_1;
    input [0:0] sel;
    reg [7:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_8_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_5_1_4;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 4;
    readslicef_5_1_4 = tmp[0:0];
  end
  endfunction


  function automatic [32:0] conv_u2s_32_33 ;
    input [31:0]  vector ;
  begin
    conv_u2s_32_33 =  {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    fir1
// ------------------------------------------------------------------


module fir1 (
  clk, rst, x_rsc_dat, x_rsc_triosy_lz, return_rsc_dat, return_rsc_triosy_lz
);
  input clk;
  input rst;
  input [31:0] x_rsc_dat;
  output x_rsc_triosy_lz;
  output [31:0] return_rsc_dat;
  output return_rsc_triosy_lz;



  // Interconnect Declarations for Component Instantiations 
  fir1_core fir1_core_inst (
      .clk(clk),
      .rst(rst),
      .x_rsc_dat(x_rsc_dat),
      .x_rsc_triosy_lz(x_rsc_triosy_lz),
      .return_rsc_dat(return_rsc_dat),
      .return_rsc_triosy_lz(return_rsc_triosy_lz)
    );
endmodule



