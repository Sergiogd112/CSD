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

-- DATE "05/10/2022 18:14:54"

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
	Q : BUFFER std_logic_vector(3 DOWNTO 0);
	TC12 : BUFFER std_logic
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
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CE~combout\ : std_logic;
SIGNAL \UD_L~combout\ : std_logic;
SIGNAL \Chip1|next_state[1]~3_combout\ : std_logic;
SIGNAL \Chip1|next_state[3]~0_combout\ : std_logic;
SIGNAL \Chip1|next_state[3]~1_combout\ : std_logic;
SIGNAL \LD~0_combout\ : std_logic;
SIGNAL \CD~combout\ : std_logic;
SIGNAL \Chip1|next_state[2]~4_combout\ : std_logic;
SIGNAL \Chip1|next_state[3]~6_combout\ : std_logic;
SIGNAL \S~combout\ : std_logic;
SIGNAL \Chip1|present_state\ : std_logic_vector(3 DOWNTO 0);

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

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CE~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CE,
	combout => \CE~combout\);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UD_L~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_UD_L,
	combout => \UD_L~combout\);

-- Location: LC_X20_Y8_N0
\Chip1|next_state[1]~3\ : maxii_lcell
-- Equation(s):
-- \Chip1|next_state[1]~3_combout\ = \Chip1|present_state\(0) $ ((((\Chip1|present_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|present_state\(0),
	datad => \Chip1|present_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Chip1|next_state[1]~3_combout\);

-- Location: LC_X20_Y8_N6
\Chip1|next_state[3]~0\ : maxii_lcell
-- Equation(s):
-- \Chip1|next_state[3]~0_combout\ = (\Chip1|present_state\(1) & (\UD_L~combout\ & ((\Chip1|present_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|present_state\(1),
	datab => \UD_L~combout\,
	datad => \Chip1|present_state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Chip1|next_state[3]~0_combout\);

-- Location: LC_X20_Y8_N1
\Chip1|next_state[3]~1\ : maxii_lcell
-- Equation(s):
-- \Chip1|next_state[3]~1_combout\ = (!\UD_L~combout\ & (!\Chip1|present_state\(2) & (!\Chip1|present_state\(1) & !\Chip1|present_state\(0))))

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
	dataa => \UD_L~combout\,
	datab => \Chip1|present_state\(2),
	datac => \Chip1|present_state\(1),
	datad => \Chip1|present_state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Chip1|next_state[3]~1_combout\);

-- Location: LC_X20_Y8_N2
\LD~0\ : maxii_lcell
-- Equation(s):
-- \LD~0_combout\ = (\CE~combout\ & ((\Chip1|present_state\(3) & (\Chip1|next_state[3]~0_combout\)) # (!\Chip1|present_state\(3) & ((\Chip1|next_state[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c480",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|present_state\(3),
	datab => \CE~combout\,
	datac => \Chip1|next_state[3]~0_combout\,
	datad => \Chip1|next_state[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LD~0_combout\);

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

-- Location: LC_X20_Y8_N3
\Chip1|present_state[1]\ : maxii_lcell
-- Equation(s):
-- \Chip1|present_state\(1) = DFFEAS((\LD~0_combout\ & (((\S~combout\)))) # (!\LD~0_combout\ & (\UD_L~combout\ $ ((!\Chip1|next_state[1]~3_combout\)))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \CE~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f099",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \UD_L~combout\,
	datab => \Chip1|next_state[1]~3_combout\,
	datac => \S~combout\,
	datad => \LD~0_combout\,
	aclr => \CD~combout\,
	ena => \CE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Chip1|present_state\(1));

-- Location: LC_X20_Y8_N7
\Chip1|next_state[2]~4\ : maxii_lcell
-- Equation(s):
-- \Chip1|next_state[2]~4_combout\ = (\Chip1|present_state\(0) & (((!\Chip1|present_state\(1)) # (!\UD_L~combout\)))) # (!\Chip1|present_state\(0) & (((\UD_L~combout\) # (\Chip1|present_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5ffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|present_state\(0),
	datac => \UD_L~combout\,
	datad => \Chip1|present_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Chip1|next_state[2]~4_combout\);

-- Location: LC_X20_Y8_N9
\Chip1|present_state[2]\ : maxii_lcell
-- Equation(s):
-- \Chip1|present_state\(2) = DFFEAS((!\LD~0_combout\ & (\Chip1|present_state\(2) $ (((\CE~combout\ & !\Chip1|next_state[2]~4_combout\))))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c6",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \CE~combout\,
	datab => \Chip1|present_state\(2),
	datac => \Chip1|next_state[2]~4_combout\,
	datad => \LD~0_combout\,
	aclr => \CD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Chip1|present_state\(2));

-- Location: LC_X19_Y8_N2
\Chip1|next_state[3]~6\ : maxii_lcell
-- Equation(s):
-- \Chip1|next_state[3]~6_combout\ = (\UD_L~combout\ & (\Chip1|present_state\(2) & (\Chip1|present_state\(1) & \Chip1|present_state\(0)))) # (!\UD_L~combout\ & (!\Chip1|present_state\(2) & (!\Chip1|present_state\(1) & !\Chip1|present_state\(0))))

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
	dataa => \UD_L~combout\,
	datab => \Chip1|present_state\(2),
	datac => \Chip1|present_state\(1),
	datad => \Chip1|present_state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Chip1|next_state[3]~6_combout\);

-- Location: LC_X20_Y8_N5
\Chip1|present_state[3]\ : maxii_lcell
-- Equation(s):
-- \Chip1|present_state\(3) = DFFEAS((\LD~0_combout\ & (((\S~combout\)))) # (!\LD~0_combout\ & (\Chip1|present_state\(3) $ ((\Chip1|next_state[3]~6_combout\)))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \CE~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f066",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Chip1|present_state\(3),
	datab => \Chip1|next_state[3]~6_combout\,
	datac => \S~combout\,
	datad => \LD~0_combout\,
	aclr => \CD~combout\,
	ena => \CE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Chip1|present_state\(3));

-- Location: LC_X20_Y8_N4
S : maxii_lcell
-- Equation(s):
-- \S~combout\ = ((\Chip1|present_state\(2)) # ((!\CE~combout\) # (!\Chip1|next_state[3]~0_combout\))) # (!\Chip1|present_state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|present_state\(3),
	datab => \Chip1|present_state\(2),
	datac => \Chip1|next_state[3]~0_combout\,
	datad => \CE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~combout\);

-- Location: LC_X20_Y8_N8
\Chip1|present_state[0]\ : maxii_lcell
-- Equation(s):
-- \Chip1|present_state\(0) = DFFEAS((\LD~0_combout\ & (((\S~combout\)))) # (!\LD~0_combout\ & (\CE~combout\ $ ((\Chip1|present_state\(0))))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f066",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \CE~combout\,
	datab => \Chip1|present_state\(0),
	datac => \S~combout\,
	datad => \LD~0_combout\,
	aclr => \CD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Chip1|present_state\(0));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Chip1|present_state\(0),
	oe => VCC,
	padio => ww_Q(0));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Chip1|present_state\(1),
	oe => VCC,
	padio => ww_Q(1));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Chip1|present_state\(2),
	oe => VCC,
	padio => ww_Q(2));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Chip1|present_state\(3),
	oe => VCC,
	padio => ww_Q(3));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TC12~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LD~0_combout\,
	oe => VCC,
	padio => ww_TC12);
END structure;


