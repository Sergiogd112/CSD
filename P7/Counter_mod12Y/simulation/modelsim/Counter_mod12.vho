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

-- DATE "05/10/2022 17:36:16"

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

ENTITY 	Counter_mod12 IS
    PORT (
	UD_L : IN std_logic;
	CE : IN std_logic;
	CD : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic_vector(3 DOWNTO 0);
	TC12 : OUT std_logic
	);
END Counter_mod12;

-- Design Ports Information


ARCHITECTURE structure OF Counter_mod12 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_UD_L : std_logic;
SIGNAL ww_CE : std_logic;
SIGNAL ww_CD : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_TC12 : std_logic;
SIGNAL \present_state[1]~9_cout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CE~combout\ : std_logic;
SIGNAL \UD_L~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CD~combout\ : std_logic;
SIGNAL \UD_L~_wirecell_combout\ : std_logic;
SIGNAL \present_state[1]~9COUT0_14\ : std_logic;
SIGNAL \present_state[1]~9COUT1_15\ : std_logic;
SIGNAL \TC12~8_combout\ : std_logic;
SIGNAL \present_state[1]~1\ : std_logic;
SIGNAL \present_state[1]~1COUT1_16\ : std_logic;
SIGNAL \present_state[2]~3\ : std_logic;
SIGNAL \present_state[2]~3COUT1_17\ : std_logic;
SIGNAL \TC12~7_combout\ : std_logic;
SIGNAL \TC12~6_combout\ : std_logic;
SIGNAL \future_state~0_combout\ : std_logic;
SIGNAL \TC12~3_combout\ : std_logic;
SIGNAL \TC12~9_combout\ : std_logic;
SIGNAL present_state : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_UD_L <= UD_L;
ww_CE <= CE;
ww_CD <= CD;
ww_CLK <= CLK;
Q <= ww_Q;
TC12 <= ww_TC12;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CE~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CE,
	combout => \CE~combout\);

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UD_L~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_UD_L,
	combout => \UD_L~combout\);

-- Location: LC_X2_Y4_N2
\~GND\ : maxii_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CD~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CD,
	combout => \CD~combout\);

-- Location: LC_X2_Y4_N9
\UD_L~_wirecell\ : maxii_lcell
-- Equation(s):
-- \UD_L~_wirecell_combout\ = (((!\UD_L~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \UD_L~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UD_L~_wirecell_combout\);

-- Location: LC_X1_Y4_N5
\present_state[1]~9\ : maxii_lcell
-- Equation(s):
-- \present_state[1]~9COUT0_14\ = CARRY(((present_state(0))))
-- \present_state[1]~9COUT1_15\ = CARRY(((present_state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => present_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \present_state[1]~9_cout\,
	cout0 => \present_state[1]~9COUT0_14\,
	cout1 => \present_state[1]~9COUT1_15\);

-- Location: LC_X1_Y4_N6
\present_state[1]\ : maxii_lcell
-- Equation(s):
-- present_state(1) = DFFEAS(present_state(1) $ (\UD_L~combout\ $ ((!\present_state[1]~9COUT0_14\))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \CE~combout\, \UD_L~_wirecell_combout\, , , \future_state~0_combout\)
-- \present_state[1]~1\ = CARRY((present_state(1) & (\UD_L~combout\ & !\present_state[1]~9COUT0_14\)) # (!present_state(1) & ((\UD_L~combout\) # (!\present_state[1]~9COUT0_14\))))
-- \present_state[1]~1COUT1_16\ = CARRY((present_state(1) & (\UD_L~combout\ & !\present_state[1]~9COUT1_15\)) # (!present_state(1) & ((\UD_L~combout\) # (!\present_state[1]~9COUT1_15\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => present_state(1),
	datab => \UD_L~combout\,
	datac => \UD_L~_wirecell_combout\,
	aclr => \CD~combout\,
	sload => \future_state~0_combout\,
	ena => \CE~combout\,
	cin0 => \present_state[1]~9COUT0_14\,
	cin1 => \present_state[1]~9COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => present_state(1),
	cout0 => \present_state[1]~1\,
	cout1 => \present_state[1]~1COUT1_16\);

-- Location: LC_X1_Y4_N0
\TC12~8\ : maxii_lcell
-- Equation(s):
-- \TC12~8_combout\ = (((present_state(1) & present_state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => present_state(1),
	datad => present_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TC12~8_combout\);

-- Location: LC_X1_Y4_N7
\present_state[2]\ : maxii_lcell
-- Equation(s):
-- present_state(2) = DFFEAS(\UD_L~combout\ $ (present_state(2) $ ((\present_state[1]~1\))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \CE~combout\, \~GND~combout\, , , \future_state~0_combout\)
-- \present_state[2]~3\ = CARRY((\UD_L~combout\ & (present_state(2) & !\present_state[1]~1\)) # (!\UD_L~combout\ & ((present_state(2)) # (!\present_state[1]~1\))))
-- \present_state[2]~3COUT1_17\ = CARRY((\UD_L~combout\ & (present_state(2) & !\present_state[1]~1COUT1_16\)) # (!\UD_L~combout\ & ((present_state(2)) # (!\present_state[1]~1COUT1_16\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \UD_L~combout\,
	datab => present_state(2),
	datac => \~GND~combout\,
	aclr => \CD~combout\,
	sload => \future_state~0_combout\,
	ena => \CE~combout\,
	cin0 => \present_state[1]~1\,
	cin1 => \present_state[1]~1COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => present_state(2),
	cout0 => \present_state[2]~3\,
	cout1 => \present_state[2]~3COUT1_17\);

-- Location: LC_X1_Y4_N8
\present_state[3]\ : maxii_lcell
-- Equation(s):
-- present_state(3) = DFFEAS((\UD_L~combout\ $ (\present_state[2]~3\ $ (!present_state(3)))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \CE~combout\, \UD_L~_wirecell_combout\, , , \future_state~0_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \UD_L~combout\,
	datac => \UD_L~_wirecell_combout\,
	datad => present_state(3),
	aclr => \CD~combout\,
	sload => \future_state~0_combout\,
	ena => \CE~combout\,
	cin0 => \present_state[2]~3\,
	cin1 => \present_state[2]~3COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => present_state(3));

-- Location: LC_X1_Y4_N4
\TC12~7\ : maxii_lcell
-- Equation(s):
-- \TC12~7_combout\ = ((\UD_L~combout\ & ((present_state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \UD_L~combout\,
	datad => present_state(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TC12~7_combout\);

-- Location: LC_X1_Y4_N1
\TC12~6\ : maxii_lcell
-- Equation(s):
-- \TC12~6_combout\ = (!present_state(3) & (!\UD_L~combout\ & (!present_state(1) & !present_state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => present_state(3),
	datab => \UD_L~combout\,
	datac => present_state(1),
	datad => present_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TC12~6_combout\);

-- Location: LC_X1_Y4_N2
\future_state~0\ : maxii_lcell
-- Equation(s):
-- \future_state~0_combout\ = (present_state(2) & (((\TC12~7_combout\)))) # (!present_state(2) & ((\TC12~6_combout\) # ((\TC12~8_combout\ & \TC12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => present_state(2),
	datab => \TC12~8_combout\,
	datac => \TC12~7_combout\,
	datad => \TC12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \future_state~0_combout\);

-- Location: LC_X1_Y4_N9
\present_state[0]\ : maxii_lcell
-- Equation(s):
-- present_state(0) = DFFEAS((\CE~combout\ & (!present_state(0) & ((!\TC12~7_combout\) # (!present_state(2))))) # (!\CE~combout\ & (((present_state(0))))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "552a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \CE~combout\,
	datab => present_state(2),
	datac => \TC12~7_combout\,
	datad => present_state(0),
	aclr => \CD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => present_state(0));

-- Location: LC_X1_Y4_N3
\TC12~3\ : maxii_lcell
-- Equation(s):
-- \TC12~3_combout\ = (present_state(3) & (present_state(0) & (present_state(1) & \UD_L~combout\))) # (!present_state(3) & (!present_state(0) & (!present_state(1) & !\UD_L~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => present_state(3),
	datab => present_state(0),
	datac => present_state(1),
	datad => \UD_L~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TC12~3_combout\);

-- Location: LC_X1_Y5_N4
\TC12~9\ : maxii_lcell
-- Equation(s):
-- \TC12~9_combout\ = (\CE~combout\ & (!present_state(2) & ((\TC12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CE~combout\,
	datab => present_state(2),
	datad => \TC12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TC12~9_combout\);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => present_state(0),
	oe => VCC,
	padio => ww_Q(0));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => present_state(1),
	oe => VCC,
	padio => ww_Q(1));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => present_state(2),
	oe => VCC,
	padio => ww_Q(2));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => present_state(3),
	oe => VCC,
	padio => ww_Q(3));

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TC12~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \TC12~9_combout\,
	oe => VCC,
	padio => ww_TC12);
END structure;


