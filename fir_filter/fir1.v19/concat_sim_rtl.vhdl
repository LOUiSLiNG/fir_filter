
--------> /opt/mentorgraphics/Catapult_10.5c/Mgc_home/pkgs/siflibs/ccs_in_v1.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE ccs_in_pkg_v1 IS

COMPONENT ccs_in_v1
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    idat   : OUT std_logic_vector(width-1 DOWNTO 0);
    dat    : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

END ccs_in_pkg_v1;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY ccs_in_v1 IS
  GENERIC (
    rscid : INTEGER;
    width : INTEGER
  );
  PORT (
    idat  : OUT std_logic_vector(width-1 DOWNTO 0);
    dat   : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END ccs_in_v1;

ARCHITECTURE beh OF ccs_in_v1 IS
BEGIN

  idat <= dat;

END beh;


--------> /opt/mentorgraphics/Catapult_10.5c/Mgc_home/pkgs/siflibs/mgc_inout_prereg_en_v1.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
PACKAGE mgc_inout_prereg_en_pkg_v1 IS

COMPONENT mgc_inout_prereg_en_v1
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    din      : OUT   std_logic_vector(width-1 DOWNTO 0);
    ldout    : IN    std_logic;
    dout     : IN    std_logic_vector(width-1 DOWNTO 0);
    zin      : IN    std_logic_vector(width-1 DOWNTO 0);
    lzout    : OUT   std_logic;
    zout     : OUT   std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

END mgc_inout_prereg_en_pkg_v1;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY mgc_inout_prereg_en_v1 IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    din      : OUT   std_logic_vector(width-1 DOWNTO 0);
    ldout    : IN    std_logic;
    dout     : IN    std_logic_vector(width-1 DOWNTO 0);
    zin      : IN    std_logic_vector(width-1 DOWNTO 0);
    lzout    : OUT   std_logic;
    zout     : OUT   std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_inout_prereg_en_v1;

ARCHITECTURE beh OF mgc_inout_prereg_en_v1 IS
BEGIN

  lzout <= ldout;
  din   <= zin;
  zout  <= dout;

END beh;


--------> /opt/mentorgraphics/Catapult_10.5c/Mgc_home/pkgs/siflibs/ccs_out_v1.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE ccs_out_pkg_v1 IS

COMPONENT ccs_out_v1
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    dat    : OUT std_logic_vector(width-1 DOWNTO 0);
    idat   : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

END ccs_out_pkg_v1;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY ccs_out_v1 IS
  GENERIC (
    rscid : INTEGER;
    width : INTEGER
  );
  PORT (
    dat   : OUT std_logic_vector(width-1 DOWNTO 0);
    idat  : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END ccs_out_v1;

ARCHITECTURE beh OF ccs_out_v1 IS
BEGIN

  dat <= idat;

END beh;


--------> /opt/mentorgraphics/Catapult_10.5c/Mgc_home/pkgs/siflibs/mgc_io_sync_v2.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
PACKAGE mgc_io_sync_pkg_v2 IS

COMPONENT mgc_io_sync_v2
  GENERIC (
    valid    : INTEGER RANGE 0 TO 1
  );
  PORT (
    ld       : IN    std_logic;
    lz       : OUT   std_logic
  );
END COMPONENT;

END mgc_io_sync_pkg_v2;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY mgc_io_sync_v2 IS
  GENERIC (
    valid    : INTEGER RANGE 0 TO 1
  );
  PORT (
    ld       : IN    std_logic;
    lz       : OUT   std_logic
  );
END mgc_io_sync_v2;

ARCHITECTURE beh OF mgc_io_sync_v2 IS
BEGIN

  lz <= ld;

END beh;


--------> ../td_ccore_solutions/ROM_1i4_1o8_67a60b90ba118081e4925479fe39390ab2_0/rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.5c/896140 Production Release
--  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
-- 
--  Generated by:   dss545@hansolo.poly.edu
--  Generated date: Wed Feb  3 19:35:57 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    ROM_1i4_1o8_67a60b90ba118081e4925479fe39390ab2
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY ROM_1i4_1o8_67a60b90ba118081e4925479fe39390ab2 IS
  PORT(
    I_1 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    O_1 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END ROM_1i4_1o8_67a60b90ba118081e4925479fe39390ab2;

ARCHITECTURE v1 OF ROM_1i4_1o8_67a60b90ba118081e4925479fe39390ab2 IS
  -- Default Constants

  FUNCTION MUX_v_8_11_2x0(input_1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(3 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(7 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "0001" =>
          result := input_1;
        WHEN "0010" =>
          result := input_2;
        WHEN "0011" =>
          result := input_3;
        WHEN "0100" =>
          result := input_4;
        WHEN "0101" =>
          result := input_5;
        WHEN "0110" =>
          result := input_6;
        WHEN "0111" =>
          result := input_7;
        WHEN "1000" =>
          result := input_8;
        WHEN "1001" =>
          result := input_9;
        WHEN others =>
          result := input_10;
      END CASE;
    RETURN result;
  END;

BEGIN
  O_1 <= MUX_v_8_11_2x0(STD_LOGIC_VECTOR'( "00000000"), STD_LOGIC_VECTOR'( "11101001"),
      STD_LOGIC_VECTOR'( "00000000"), STD_LOGIC_VECTOR'( "01001110"), STD_LOGIC_VECTOR'(
      "01111101"), STD_LOGIC_VECTOR'( "01001110"), STD_LOGIC_VECTOR'( "00000000"),
      STD_LOGIC_VECTOR'( "11101001"), STD_LOGIC_VECTOR'( "00000000"), STD_LOGIC_VECTOR'(
      "00001101"), I_1);
END v1;




--------> ../td_ccore_solutions/ROM_1i4_1o1_a981173f914bc276eca7f42d28616f0ab2_0/rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.5c/896140 Production Release
--  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
-- 
--  Generated by:   dss545@hansolo.poly.edu
--  Generated date: Wed Feb  3 19:36:04 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    ROM_1i4_1o1_a981173f914bc276eca7f42d28616f0ab2
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY ROM_1i4_1o1_a981173f914bc276eca7f42d28616f0ab2 IS
  PORT(
    I_1 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    O_1 : OUT STD_LOGIC
  );
END ROM_1i4_1o1_a981173f914bc276eca7f42d28616f0ab2;

ARCHITECTURE v1 OF ROM_1i4_1o1_a981173f914bc276eca7f42d28616f0ab2 IS
  -- Default Constants

  FUNCTION MUX_s_1_11_2x0(input_1 : STD_LOGIC;
  input_2 : STD_LOGIC;
  input_3 : STD_LOGIC;
  input_4 : STD_LOGIC;
  input_5 : STD_LOGIC;
  input_6 : STD_LOGIC;
  input_7 : STD_LOGIC;
  input_8 : STD_LOGIC;
  input_9 : STD_LOGIC;
  input_10 : STD_LOGIC;
  sel : STD_LOGIC_VECTOR(3 DOWNTO 0))
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;

    BEGIN
      CASE sel IS
        WHEN "0001" =>
          result := input_1;
        WHEN "0010" =>
          result := input_2;
        WHEN "0011" =>
          result := input_3;
        WHEN "0100" =>
          result := input_4;
        WHEN "0101" =>
          result := input_5;
        WHEN "0110" =>
          result := input_6;
        WHEN "0111" =>
          result := input_7;
        WHEN "1000" =>
          result := input_8;
        WHEN "1001" =>
          result := input_9;
        WHEN others =>
          result := input_10;
      END CASE;
    RETURN result;
  END;

BEGIN
  O_1 <= MUX_s_1_11_2x0('0', '1', '0', '1', '0', '1', '0', '1', '0', '1', I_1);
END v1;




--------> ./rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.5c/896140 Production Release
--  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
-- 
--  Generated by:   dss545@hansolo.poly.edu
--  Generated date: Tue Feb  9 18:46:16 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    fir1_core_core_fsm
--  FSM Module
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_pkg_v1.ALL;
USE work.mgc_inout_prereg_en_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;


ENTITY fir1_core_core_fsm IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    fsm_output : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
    for_C_2_tr0 : IN STD_LOGIC
  );
END fir1_core_core_fsm;

ARCHITECTURE v19 OF fir1_core_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for fir1_core_core_fsm_1
  TYPE fir1_core_core_fsm_1_ST IS (main_C_0, for_C_0, for_C_1, for_C_2, main_C_1,
      main_C_2, main_C_3);

  SIGNAL state_var : fir1_core_core_fsm_1_ST;
  SIGNAL state_var_NS : fir1_core_core_fsm_1_ST;

BEGIN
  fir1_core_core_fsm_1 : PROCESS (for_C_2_tr0, state_var)
  BEGIN
    CASE state_var IS
      WHEN for_C_0 =>
        fsm_output <= STD_LOGIC_VECTOR'( "0000010");
        state_var_NS <= for_C_1;
      WHEN for_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "0000100");
        state_var_NS <= for_C_2;
      WHEN for_C_2 =>
        fsm_output <= STD_LOGIC_VECTOR'( "0001000");
        IF ( for_C_2_tr0 = '1' ) THEN
          state_var_NS <= main_C_1;
        ELSE
          state_var_NS <= for_C_0;
        END IF;
      WHEN main_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "0010000");
        state_var_NS <= main_C_2;
      WHEN main_C_2 =>
        fsm_output <= STD_LOGIC_VECTOR'( "0100000");
        state_var_NS <= main_C_3;
      WHEN main_C_3 =>
        fsm_output <= STD_LOGIC_VECTOR'( "1000000");
        state_var_NS <= main_C_0;
      -- main_C_0
      WHEN OTHERS =>
        fsm_output <= STD_LOGIC_VECTOR'( "0000001");
        state_var_NS <= for_C_0;
    END CASE;
  END PROCESS fir1_core_core_fsm_1;

  fir1_core_core_fsm_1_REG : PROCESS (clk)
  BEGIN
    IF clk'event AND ( clk = '1' ) THEN
      IF ( rst = '1' ) THEN
        state_var <= main_C_0;
      ELSE
        state_var <= state_var_NS;
      END IF;
    END IF;
  END PROCESS fir1_core_core_fsm_1_REG;

END v19;

-- ------------------------------------------------------------------
--  Design Unit:    fir1_core
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_pkg_v1.ALL;
USE work.mgc_inout_prereg_en_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;


ENTITY fir1_core IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    x_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    x_rsc_triosy_lz : OUT STD_LOGIC;
    shift_reg_rsc_zout : OUT STD_LOGIC_VECTOR (351 DOWNTO 0);
    shift_reg_rsc_lzout : OUT STD_LOGIC;
    shift_reg_rsc_zin : IN STD_LOGIC_VECTOR (351 DOWNTO 0);
    shift_reg_rsc_triosy_lz : OUT STD_LOGIC;
    return_rsc_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    return_rsc_triosy_lz : OUT STD_LOGIC
  );
END fir1_core;

ARCHITECTURE v19 OF fir1_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL x_rsci_idat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL shift_reg_rsci_din : STD_LOGIC_VECTOR (351 DOWNTO 0);
  SIGNAL return_rsci_idat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL return_rsc_triosy_obj_ld : STD_LOGIC;
  SIGNAL fsm_output : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL and_19_cse : STD_LOGIC;
  SIGNAL for_slc_for_acc_4_itm : STD_LOGIC;
  SIGNAL i_3_0_sva : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL reg_shift_reg_rsc_triosy_obj_ld_cse : STD_LOGIC;
  SIGNAL for_slc_shift_reg_32_31_0_ncse_sva_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL for_equal_tmp_10 : STD_LOGIC;
  SIGNAL for_equal_tmp_11 : STD_LOGIC;
  SIGNAL for_equal_tmp_12 : STD_LOGIC;
  SIGNAL for_equal_tmp_13 : STD_LOGIC;
  SIGNAL for_equal_tmp_14 : STD_LOGIC;
  SIGNAL for_equal_tmp_15 : STD_LOGIC;
  SIGNAL for_equal_tmp_16 : STD_LOGIC;
  SIGNAL for_equal_tmp_17 : STD_LOGIC;
  SIGNAL for_equal_tmp_18 : STD_LOGIC;
  SIGNAL x_sva : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL z_out : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL acc_2_sva : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL for_acc_1_cse_1_sva : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL for_slc_shift_reg_32_31_0_ncse_sva : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL for_slc_C_rom_1_for_slc_i_3_0_tmp_9_8_1_1_sva : STD_LOGIC_VECTOR (7 DOWNTO
      0);
  SIGNAL for_slc_C_rom_1_for_slc_i_3_0_tmp_9_0_1_sva : STD_LOGIC;
  SIGNAL acc_2_sva_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL for_acc_1_cse_1_sva_1 : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e_1 : STD_LOGIC_VECTOR (7 DOWNTO
      0);
  SIGNAL ROM_1i4_1o1_04cc3276c127ea0e308702c30762117d2e_1 : STD_LOGIC;
  SIGNAL reg_for_mul_cse : STD_LOGIC_VECTOR (31 DOWNTO 0);

  SIGNAL acc_not_2_nl : STD_LOGIC;
  SIGNAL for_acc_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL for_mux_8_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL for_for_or_1_nl : STD_LOGIC;
  SIGNAL for_mux_9_nl : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL mux_5_nl : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL x_rsci_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL x_rsci_idat_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);

  SIGNAL shift_reg_rsci_din_1 : STD_LOGIC_VECTOR (351 DOWNTO 0);
  SIGNAL shift_reg_rsci_ldout : STD_LOGIC;
  SIGNAL shift_reg_rsci_dout : STD_LOGIC_VECTOR (351 DOWNTO 0);
  SIGNAL shift_reg_rsci_zin : STD_LOGIC_VECTOR (351 DOWNTO 0);
  SIGNAL shift_reg_rsci_zout : STD_LOGIC_VECTOR (351 DOWNTO 0);

  SIGNAL return_rsci_idat_1 : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL return_rsci_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);

  COMPONENT ROM_1i4_1o8_67a60b90ba118081e4925479fe39390ab2
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e_rg_I_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);
  SIGNAL U_ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e_rg_O_1 : STD_LOGIC_VECTOR
      (7 DOWNTO 0);

  COMPONENT ROM_1i4_1o1_a981173f914bc276eca7f42d28616f0ab2
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      O_1 : OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL U_ROM_1i4_1o1_04cc3276c127ea0e308702c30762117d2e_rg_I_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT fir1_core_core_fsm
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      fsm_output : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
      for_C_2_tr0 : IN STD_LOGIC
    );
  END COMPONENT;
  SIGNAL fir1_core_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL fir1_core_core_fsm_inst_for_C_2_tr0 : STD_LOGIC;

  FUNCTION CONV_SL_1_1(input_val:BOOLEAN)
  RETURN STD_LOGIC IS
  BEGIN
    IF input_val THEN RETURN '1';ELSE RETURN '0';END IF;
  END;

  FUNCTION MUX_v_320_2_2(input_0 : STD_LOGIC_VECTOR(319 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(319 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(319 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_32_10_2(input_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(3 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(31 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "0000" =>
          result := input_0;
        WHEN "0001" =>
          result := input_1;
        WHEN "0010" =>
          result := input_2;
        WHEN "0011" =>
          result := input_3;
        WHEN "0100" =>
          result := input_4;
        WHEN "0101" =>
          result := input_5;
        WHEN "0110" =>
          result := input_6;
        WHEN "0111" =>
          result := input_7;
        WHEN "1000" =>
          result := input_8;
        WHEN others =>
          result := input_9;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_32_2_2(input_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(31 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_4_2_2(input_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(3 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_8_2_2(input_0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(7 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

BEGIN
  x_rsci : work.ccs_in_pkg_v1.ccs_in_v1
    GENERIC MAP(
      rscid => 1,
      width => 32
      )
    PORT MAP(
      dat => x_rsci_dat,
      idat => x_rsci_idat_1
    );
  x_rsci_dat <= x_rsc_dat;
  x_rsci_idat <= x_rsci_idat_1;

  shift_reg_rsci : work.mgc_inout_prereg_en_pkg_v1.mgc_inout_prereg_en_v1
    GENERIC MAP(
      rscid => 2,
      width => 352
      )
    PORT MAP(
      din => shift_reg_rsci_din_1,
      ldout => shift_reg_rsci_ldout,
      dout => shift_reg_rsci_dout,
      zin => shift_reg_rsci_zin,
      lzout => shift_reg_rsc_lzout,
      zout => shift_reg_rsci_zout
    );
  shift_reg_rsci_din <= shift_reg_rsci_din_1;
  shift_reg_rsci_ldout <= and_19_cse OR (fsm_output(1));
  shift_reg_rsci_dout <= (MUX_v_320_2_2(((MUX_v_32_2_2((shift_reg_rsci_din(351 DOWNTO
      320)), for_slc_shift_reg_32_31_0_ncse_sva_1, for_equal_tmp_10)) & (MUX_v_32_2_2((shift_reg_rsci_din(319
      DOWNTO 288)), for_slc_shift_reg_32_31_0_ncse_sva_1, for_equal_tmp_11)) & (MUX_v_32_2_2((shift_reg_rsci_din(287
      DOWNTO 256)), for_slc_shift_reg_32_31_0_ncse_sva_1, for_equal_tmp_12)) & (MUX_v_32_2_2((shift_reg_rsci_din(255
      DOWNTO 224)), for_slc_shift_reg_32_31_0_ncse_sva_1, for_equal_tmp_13)) & (MUX_v_32_2_2((shift_reg_rsci_din(223
      DOWNTO 192)), for_slc_shift_reg_32_31_0_ncse_sva_1, for_equal_tmp_14)) & (MUX_v_32_2_2((shift_reg_rsci_din(191
      DOWNTO 160)), for_slc_shift_reg_32_31_0_ncse_sva_1, for_equal_tmp_15)) & (MUX_v_32_2_2((shift_reg_rsci_din(159
      DOWNTO 128)), for_slc_shift_reg_32_31_0_ncse_sva_1, for_equal_tmp_16)) & (MUX_v_32_2_2((shift_reg_rsci_din(127
      DOWNTO 96)), for_slc_shift_reg_32_31_0_ncse_sva_1, for_equal_tmp_17)) & (MUX_v_32_2_2((shift_reg_rsci_din(95
      DOWNTO 64)), for_slc_shift_reg_32_31_0_ncse_sva_1, for_equal_tmp_18)) & (MUX_v_32_2_2(for_slc_shift_reg_32_31_0_ncse_sva_1,
      (shift_reg_rsci_din(63 DOWNTO 32)), for_equal_tmp_18 OR for_equal_tmp_17 OR
      for_equal_tmp_16 OR for_equal_tmp_15 OR for_equal_tmp_14 OR for_equal_tmp_13
      OR for_equal_tmp_12 OR for_equal_tmp_11 OR for_equal_tmp_10 OR (NOT(CONV_SL_1_1(i_3_0_sva=STD_LOGIC_VECTOR'("0001"))))))),
      (shift_reg_rsci_din(351 DOWNTO 32)), fsm_output(3))) & (MUX_v_32_2_2((shift_reg_rsci_din(31
      DOWNTO 0)), x_sva, fsm_output(3)));
  shift_reg_rsci_zin <= shift_reg_rsc_zin;
  shift_reg_rsc_zout <= shift_reg_rsci_zout;

  return_rsci : work.ccs_out_pkg_v1.ccs_out_v1
    GENERIC MAP(
      rscid => 3,
      width => 32
      )
    PORT MAP(
      idat => return_rsci_idat_1,
      dat => return_rsci_dat
    );
  return_rsci_idat_1 <= return_rsci_idat;
  return_rsc_dat <= return_rsci_dat;

  x_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => reg_shift_reg_rsc_triosy_obj_ld_cse,
      lz => x_rsc_triosy_lz
    );
  shift_reg_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => reg_shift_reg_rsc_triosy_obj_ld_cse,
      lz => shift_reg_rsc_triosy_lz
    );
  return_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => return_rsc_triosy_obj_ld,
      lz => return_rsc_triosy_lz
    );
  U_ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e_rg : ROM_1i4_1o8_67a60b90ba118081e4925479fe39390ab2
    PORT MAP(
      I_1 => U_ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e_rg_I_1,
      O_1 => U_ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e_rg_O_1
    );
  U_ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e_rg_I_1 <= i_3_0_sva;
  ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e_1 <= U_ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e_rg_O_1;

  U_ROM_1i4_1o1_04cc3276c127ea0e308702c30762117d2e_rg : ROM_1i4_1o1_a981173f914bc276eca7f42d28616f0ab2
    PORT MAP(
      I_1 => U_ROM_1i4_1o1_04cc3276c127ea0e308702c30762117d2e_rg_I_1,
      O_1 => ROM_1i4_1o1_04cc3276c127ea0e308702c30762117d2e_1
    );
  U_ROM_1i4_1o1_04cc3276c127ea0e308702c30762117d2e_rg_I_1 <= i_3_0_sva;

  fir1_core_core_fsm_inst : fir1_core_core_fsm
    PORT MAP(
      clk => clk,
      rst => rst,
      fsm_output => fir1_core_core_fsm_inst_fsm_output,
      for_C_2_tr0 => fir1_core_core_fsm_inst_for_C_2_tr0
    );
  fsm_output <= fir1_core_core_fsm_inst_fsm_output;
  fir1_core_core_fsm_inst_for_C_2_tr0 <= NOT for_slc_for_acc_4_itm;

  for_slc_shift_reg_32_31_0_ncse_sva_1 <= MUX_v_32_10_2((shift_reg_rsci_din(31 DOWNTO
      0)), (shift_reg_rsci_din(63 DOWNTO 32)), (shift_reg_rsci_din(95 DOWNTO 64)),
      (shift_reg_rsci_din(127 DOWNTO 96)), (shift_reg_rsci_din(159 DOWNTO 128)),
      (shift_reg_rsci_din(191 DOWNTO 160)), (shift_reg_rsci_din(223 DOWNTO 192)),
      (shift_reg_rsci_din(255 DOWNTO 224)), (shift_reg_rsci_din(287 DOWNTO 256)),
      (shift_reg_rsci_din(319 DOWNTO 288)), for_acc_1_cse_1_sva_1);
  for_acc_1_cse_1_sva_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(i_3_0_sva) + UNSIGNED'(
      "1111"), 4));
  for_equal_tmp_10 <= CONV_SL_1_1(i_3_0_sva=STD_LOGIC_VECTOR'("1010"));
  for_equal_tmp_11 <= CONV_SL_1_1(i_3_0_sva=STD_LOGIC_VECTOR'("1001"));
  for_equal_tmp_12 <= CONV_SL_1_1(i_3_0_sva=STD_LOGIC_VECTOR'("1000"));
  for_equal_tmp_13 <= CONV_SL_1_1(i_3_0_sva=STD_LOGIC_VECTOR'("0111"));
  for_equal_tmp_14 <= CONV_SL_1_1(i_3_0_sva=STD_LOGIC_VECTOR'("0110"));
  for_equal_tmp_15 <= CONV_SL_1_1(i_3_0_sva=STD_LOGIC_VECTOR'("0101"));
  for_equal_tmp_16 <= CONV_SL_1_1(i_3_0_sva=STD_LOGIC_VECTOR'("0100"));
  for_equal_tmp_17 <= CONV_SL_1_1(i_3_0_sva=STD_LOGIC_VECTOR'("0011"));
  for_equal_tmp_18 <= CONV_SL_1_1(i_3_0_sva=STD_LOGIC_VECTOR'("0010"));
  and_19_cse <= (NOT for_slc_for_acc_4_itm) AND (fsm_output(3));
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000");
      ELSIF ( (fsm_output(5)) = '1' ) THEN
        return_rsci_idat <= z_out;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        x_sva <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        x_sva <= x_rsci_idat;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        acc_2_sva <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000");
      ELSIF ( ((fsm_output(0)) OR (fsm_output(3))) = '1' ) THEN
        acc_2_sva <= MUX_v_32_2_2(STD_LOGIC_VECTOR'("00000000000000000000000000000000"),
            z_out, acc_not_2_nl);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        i_3_0_sva <= STD_LOGIC_VECTOR'( "0000");
        return_rsc_triosy_obj_ld <= '0';
        reg_shift_reg_rsc_triosy_obj_ld_cse <= '0';
        for_slc_shift_reg_32_31_0_ncse_sva <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000");
        for_slc_C_rom_1_for_slc_i_3_0_tmp_9_8_1_1_sva <= STD_LOGIC_VECTOR'( "00000000");
        for_slc_C_rom_1_for_slc_i_3_0_tmp_9_0_1_sva <= '0';
        reg_for_mul_cse <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000");
      ELSE
        i_3_0_sva <= MUX_v_4_2_2(STD_LOGIC_VECTOR'( "1010"), for_acc_1_cse_1_sva,
            fsm_output(3));
        return_rsc_triosy_obj_ld <= fsm_output(5);
        reg_shift_reg_rsc_triosy_obj_ld_cse <= and_19_cse;
        for_slc_shift_reg_32_31_0_ncse_sva <= for_slc_shift_reg_32_31_0_ncse_sva_1;
        for_slc_C_rom_1_for_slc_i_3_0_tmp_9_8_1_1_sva <= ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e_1;
        for_slc_C_rom_1_for_slc_i_3_0_tmp_9_0_1_sva <= ROM_1i4_1o1_04cc3276c127ea0e308702c30762117d2e_1;
        reg_for_mul_cse <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED'( SIGNED(for_mux_8_nl
            & '0' & for_for_or_1_nl) * SIGNED(for_mux_9_nl)), 32));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        for_slc_for_acc_4_itm <= '0';
      ELSIF ( (fsm_output(1)) = '1' ) THEN
        for_slc_for_acc_4_itm <= for_acc_nl(4);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        for_acc_1_cse_1_sva <= STD_LOGIC_VECTOR'( "0000");
      ELSIF ( (fsm_output(1)) = '1' ) THEN
        for_acc_1_cse_1_sva <= for_acc_1_cse_1_sva_1;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        acc_2_sva_1 <= STD_LOGIC_VECTOR'( "00000000000000000000000000000000");
      ELSIF ( (fsm_output(3)) = '1' ) THEN
        acc_2_sva_1 <= z_out;
      END IF;
    END IF;
  END PROCESS;
  acc_not_2_nl <= NOT (fsm_output(0));
  for_mux_8_nl <= MUX_v_8_2_2(for_slc_C_rom_1_for_slc_i_3_0_tmp_9_8_1_1_sva, STD_LOGIC_VECTOR'(
      "00001101"), fsm_output(4));
  for_for_or_1_nl <= for_slc_C_rom_1_for_slc_i_3_0_tmp_9_0_1_sva OR (fsm_output(4));
  for_mux_9_nl <= MUX_v_32_2_2(for_slc_shift_reg_32_31_0_ncse_sva, x_sva, fsm_output(4));
  for_acc_nl <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED('1' & (NOT for_acc_1_cse_1_sva_1))
      + SIGNED'( "00001"), 5));
  mux_5_nl <= MUX_v_32_2_2(acc_2_sva_1, acc_2_sva, fsm_output(3));
  z_out <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(mux_5_nl) + UNSIGNED(reg_for_mul_cse),
      32));
END v19;

-- ------------------------------------------------------------------
--  Design Unit:    fir1
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_pkg_v1.ALL;
USE work.mgc_inout_prereg_en_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;


ENTITY fir1 IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    x_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    x_rsc_triosy_lz : OUT STD_LOGIC;
    shift_reg_rsc_zout : OUT STD_LOGIC_VECTOR (351 DOWNTO 0);
    shift_reg_rsc_lzout : OUT STD_LOGIC;
    shift_reg_rsc_zin : IN STD_LOGIC_VECTOR (351 DOWNTO 0);
    shift_reg_rsc_triosy_lz : OUT STD_LOGIC;
    return_rsc_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    return_rsc_triosy_lz : OUT STD_LOGIC
  );
END fir1;

ARCHITECTURE v19 OF fir1 IS
  -- Default Constants

  COMPONENT fir1_core
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      x_rsc_dat : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      x_rsc_triosy_lz : OUT STD_LOGIC;
      shift_reg_rsc_zout : OUT STD_LOGIC_VECTOR (351 DOWNTO 0);
      shift_reg_rsc_lzout : OUT STD_LOGIC;
      shift_reg_rsc_zin : IN STD_LOGIC_VECTOR (351 DOWNTO 0);
      shift_reg_rsc_triosy_lz : OUT STD_LOGIC;
      return_rsc_dat : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      return_rsc_triosy_lz : OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL fir1_core_inst_x_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL fir1_core_inst_shift_reg_rsc_zout : STD_LOGIC_VECTOR (351 DOWNTO 0);
  SIGNAL fir1_core_inst_shift_reg_rsc_zin : STD_LOGIC_VECTOR (351 DOWNTO 0);
  SIGNAL fir1_core_inst_return_rsc_dat : STD_LOGIC_VECTOR (31 DOWNTO 0);

BEGIN
  fir1_core_inst : fir1_core
    PORT MAP(
      clk => clk,
      rst => rst,
      x_rsc_dat => fir1_core_inst_x_rsc_dat,
      x_rsc_triosy_lz => x_rsc_triosy_lz,
      shift_reg_rsc_zout => fir1_core_inst_shift_reg_rsc_zout,
      shift_reg_rsc_lzout => shift_reg_rsc_lzout,
      shift_reg_rsc_zin => fir1_core_inst_shift_reg_rsc_zin,
      shift_reg_rsc_triosy_lz => shift_reg_rsc_triosy_lz,
      return_rsc_dat => fir1_core_inst_return_rsc_dat,
      return_rsc_triosy_lz => return_rsc_triosy_lz
    );
  fir1_core_inst_x_rsc_dat <= x_rsc_dat;
  shift_reg_rsc_zout <= fir1_core_inst_shift_reg_rsc_zout;
  fir1_core_inst_shift_reg_rsc_zin <= shift_reg_rsc_zin;
  return_rsc_dat <= fir1_core_inst_return_rsc_dat;

END v19;



