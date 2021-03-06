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

-- DATE "04/05/2022 18:05:04"

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

ENTITY 	Circuit_async IS
    PORT (
	CLK : IN std_logic;
	CD : IN std_logic;
	Q : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Circuit_async;

-- Design Ports Information


ARCHITECTURE structure OF Circuit_async IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CD : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CD~combout\ : std_logic;
SIGNAL \Chip1|current_state~regout\ : std_logic;
SIGNAL \Chip2|current_state~regout\ : std_logic;
SIGNAL \Chip3|current_state~regout\ : std_logic;
SIGNAL \Chip4|current_state~regout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_CD <= CD;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CD~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CD,
	combout => \CD~combout\);

-- Location: LC_X1_Y12_N4
\Chip1|current_state\ : maxii_lcell
-- Equation(s):
-- \Chip1|current_state~regout\ = DFFEAS((((!\Chip1|current_state~regout\))), \CLK~combout\, !GLOBAL(\CD~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Chip1|current_state~regout\,
	aclr => \CD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Chip1|current_state~regout\);

-- Location: LC_X1_Y12_N2
\Chip2|current_state\ : maxii_lcell
-- Equation(s):
-- \Chip2|current_state~regout\ = DFFEAS((((!\Chip2|current_state~regout\))), \Chip1|current_state~regout\, !GLOBAL(\CD~combout\), , , , , , )

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
	clk => \Chip1|current_state~regout\,
	datad => \Chip2|current_state~regout\,
	aclr => \CD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Chip2|current_state~regout\);

-- Location: LC_X2_Y12_N9
\Chip3|current_state\ : maxii_lcell
-- Equation(s):
-- \Chip3|current_state~regout\ = DFFEAS((((!\Chip3|current_state~regout\))), \Chip2|current_state~regout\, !GLOBAL(\CD~combout\), , , , , , )

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
	clk => \Chip2|current_state~regout\,
	datad => \Chip3|current_state~regout\,
	aclr => \CD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Chip3|current_state~regout\);

-- Location: LC_X2_Y12_N8
\Chip4|current_state\ : maxii_lcell
-- Equation(s):
-- \Chip4|current_state~regout\ = DFFEAS((((!\Chip4|current_state~regout\))), \Chip3|current_state~regout\, !GLOBAL(\CD~combout\), , , , , , )

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
	clk => \Chip3|current_state~regout\,
	datad => \Chip4|current_state~regout\,
	aclr => \CD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Chip4|current_state~regout\);

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Chip1|current_state~regout\,
	oe => VCC,
	padio => ww_Q(0));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Chip2|current_state~regout\,
	oe => VCC,
	padio => ww_Q(1));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Chip3|current_state~regout\,
	oe => VCC,
	padio => ww_Q(2));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Chip4|current_state~regout\,
	oe => VCC,
	padio => ww_Q(3));
END structure;


