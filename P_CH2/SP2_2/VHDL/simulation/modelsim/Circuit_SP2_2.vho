-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/03/2022 18:51:25"

-- 
-- Device: Altera EPM2210F324C3 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	Circuit_SP2_2 IS
    PORT (
	CLK_L : IN std_logic;
	CD_L : IN std_logic;
	Q : OUT std_logic_vector(2 DOWNTO 0)
	);
END Circuit_SP2_2;

-- Design Ports Information


ARCHITECTURE structure OF Circuit_SP2_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_L : std_logic;
SIGNAL ww_CD_L : std_logic;
SIGNAL ww_Q : std_logic_vector(2 DOWNTO 0);
SIGNAL \CLK_L~combout\ : std_logic;
SIGNAL \CD_L~combout\ : std_logic;
SIGNAL \Chip1|current_state~regout\ : std_logic;
SIGNAL \Chip2|current_state~regout\ : std_logic;
SIGNAL \Chip3|current_state~regout\ : std_logic;
SIGNAL \ALT_INV_CD_L~combout\ : std_logic;
SIGNAL \ALT_INV_CLK_L~combout\ : std_logic;
SIGNAL \Chip2|ALT_INV_current_state~regout\ : std_logic;
SIGNAL \Chip1|ALT_INV_current_state~regout\ : std_logic;

BEGIN

ww_CLK_L <= CLK_L;
ww_CD_L <= CD_L;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_CD_L~combout\ <= NOT \CD_L~combout\;
\ALT_INV_CLK_L~combout\ <= NOT \CLK_L~combout\;
\Chip2|ALT_INV_current_state~regout\ <= NOT \Chip2|current_state~regout\;
\Chip1|ALT_INV_current_state~regout\ <= NOT \Chip1|current_state~regout\;

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK_L~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK_L,
	combout => \CLK_L~combout\);

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CD_L~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CD_L,
	combout => \CD_L~combout\);

-- Location: LC_X20_Y1_N2
\Chip1|current_state\ : maxii_lcell
-- Equation(s):
-- \Chip1|current_state~regout\ = DFFEAS((((!\Chip1|current_state~regout\))), !\CLK_L~combout\, GLOBAL(\CD_L~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_L~combout\,
	datad => \Chip1|current_state~regout\,
	aclr => \ALT_INV_CD_L~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Chip1|current_state~regout\);

-- Location: LC_X19_Y1_N9
\Chip2|current_state\ : maxii_lcell
-- Equation(s):
-- \Chip2|current_state~regout\ = DFFEAS((((!\Chip2|current_state~regout\))), !\Chip1|current_state~regout\, GLOBAL(\CD_L~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Chip1|ALT_INV_current_state~regout\,
	datad => \Chip2|current_state~regout\,
	aclr => \ALT_INV_CD_L~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Chip2|current_state~regout\);

-- Location: LC_X19_Y1_N1
\Chip3|current_state\ : maxii_lcell
-- Equation(s):
-- \Chip3|current_state~regout\ = DFFEAS((((!\Chip3|current_state~regout\))), !\Chip2|current_state~regout\, GLOBAL(\CD_L~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Chip2|ALT_INV_current_state~regout\,
	datad => \Chip3|current_state~regout\,
	aclr => \ALT_INV_CD_L~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Chip3|current_state~regout\);

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Chip1|current_state~regout\,
	oe => VCC,
	padio => ww_Q(0));

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Chip2|current_state~regout\,
	oe => VCC,
	padio => ww_Q(1));

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Chip3|current_state~regout\,
	oe => VCC,
	padio => ww_Q(2));
END structure;


