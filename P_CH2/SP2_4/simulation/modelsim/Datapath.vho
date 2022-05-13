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

-- DATE "05/13/2022 11:07:29"

-- 
-- Device: Altera EPM2210F324C3 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	Datapath IS
    PORT (
	PC : IN std_logic_vector(23 DOWNTO 0);
	CNT_E : IN std_logic;
	RST : IN std_logic;
	CLK : IN std_logic;
	LD_PC : IN std_logic;
	CD : IN std_logic;
	TOF : BUFFER std_logic
	);
END Datapath;

-- Design Ports Information


ARCHITECTURE structure OF Datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PC : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_CNT_E : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_LD_PC : std_logic;
SIGNAL ww_CD : std_logic;
SIGNAL ww_TOF : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CD~combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \CNT_E~combout\ : std_logic;
SIGNAL \Counter_16M_1|present_state[23]~49_combout\ : std_logic;
SIGNAL \Counter_16M_1|present_state[0]~3\ : std_logic;
SIGNAL \Counter_16M_1|present_state[0]~3COUT1_51\ : std_logic;
SIGNAL \Counter_16M_1|present_state[1]~1\ : std_logic;
SIGNAL \Counter_16M_1|present_state[2]~7\ : std_logic;
SIGNAL \Counter_16M_1|present_state[2]~7COUT1_52\ : std_logic;
SIGNAL \Counter_16M_1|present_state[3]~5\ : std_logic;
SIGNAL \Counter_16M_1|present_state[3]~5COUT1_53\ : std_logic;
SIGNAL \Counter_16M_1|present_state[4]~11\ : std_logic;
SIGNAL \Counter_16M_1|present_state[4]~11COUT1_54\ : std_logic;
SIGNAL \Counter_16M_1|present_state[5]~9\ : std_logic;
SIGNAL \Counter_16M_1|present_state[5]~9COUT1_55\ : std_logic;
SIGNAL \Counter_16M_1|present_state[6]~15\ : std_logic;
SIGNAL \Counter_16M_1|present_state[7]~13\ : std_logic;
SIGNAL \Counter_16M_1|present_state[7]~13COUT1_56\ : std_logic;
SIGNAL \Counter_16M_1|present_state[8]~19\ : std_logic;
SIGNAL \Counter_16M_1|present_state[8]~19COUT1_57\ : std_logic;
SIGNAL \Counter_16M_1|present_state[9]~17\ : std_logic;
SIGNAL \Counter_16M_1|present_state[9]~17COUT1_58\ : std_logic;
SIGNAL \Counter_16M_1|present_state[10]~23\ : std_logic;
SIGNAL \Counter_16M_1|present_state[10]~23COUT1_59\ : std_logic;
SIGNAL \Counter_16M_1|present_state[11]~21\ : std_logic;
SIGNAL \Counter_16M_1|present_state[12]~27\ : std_logic;
SIGNAL \Counter_16M_1|present_state[12]~27COUT1_60\ : std_logic;
SIGNAL \Counter_16M_1|present_state[13]~25\ : std_logic;
SIGNAL \Counter_16M_1|present_state[13]~25COUT1_61\ : std_logic;
SIGNAL \Counter_16M_1|present_state[14]~31\ : std_logic;
SIGNAL \Counter_16M_1|present_state[14]~31COUT1_62\ : std_logic;
SIGNAL \Counter_16M_1|present_state[15]~29\ : std_logic;
SIGNAL \Counter_16M_1|present_state[15]~29COUT1_63\ : std_logic;
SIGNAL \Counter_16M_1|present_state[16]~35\ : std_logic;
SIGNAL \Counter_16M_1|present_state[17]~33\ : std_logic;
SIGNAL \Counter_16M_1|present_state[17]~33COUT1_64\ : std_logic;
SIGNAL \Counter_16M_1|present_state[18]~39\ : std_logic;
SIGNAL \Counter_16M_1|present_state[18]~39COUT1_65\ : std_logic;
SIGNAL \Counter_16M_1|present_state[19]~37\ : std_logic;
SIGNAL \Counter_16M_1|present_state[19]~37COUT1_66\ : std_logic;
SIGNAL \Counter_16M_1|present_state[20]~43\ : std_logic;
SIGNAL \Counter_16M_1|present_state[20]~43COUT1_67\ : std_logic;
SIGNAL \Counter_16M_1|present_state[21]~41\ : std_logic;
SIGNAL \Counter_16M_1|present_state[22]~47\ : std_logic;
SIGNAL \Counter_16M_1|present_state[22]~47COUT1_68\ : std_logic;
SIGNAL \Counter_16M_1|LessThan0~6_combout\ : std_logic;
SIGNAL \Counter_16M_1|LessThan0~5_combout\ : std_logic;
SIGNAL \Counter_16M_1|LessThan0~0_combout\ : std_logic;
SIGNAL \Counter_16M_1|LessThan0~2_combout\ : std_logic;
SIGNAL \Counter_16M_1|LessThan0~1_combout\ : std_logic;
SIGNAL \Counter_16M_1|LessThan0~3_combout\ : std_logic;
SIGNAL \Counter_16M_1|LessThan0~4_combout\ : std_logic;
SIGNAL \Counter_16M_1|present_state[23]~48_combout\ : std_logic;
SIGNAL \LD_PC~combout\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~2\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~0\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~3\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~1\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~4_combout\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~7\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~8\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~6\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~5\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~9_combout\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~12\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~13\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~11\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~10\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~14_combout\ : std_logic;
SIGNAL \Comp_24bit_1|Chip6|Chip4|Eq~15_combout\ : std_logic;
SIGNAL \Data_reg_24bit_1|present_state\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \Counter_16M_1|present_state\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \PC~combout\ : std_logic_vector(23 DOWNTO 0);

BEGIN

ww_PC <= PC;
ww_CNT_E <= CNT_E;
ww_RST <= RST;
ww_CLK <= CLK;
ww_LD_PC <= LD_PC;
ww_CD <= CD;
TOF <= ww_TOF;
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CNT_E~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CNT_E,
	combout => \CNT_E~combout\);

-- Location: LC_X16_Y13_N8
\Counter_16M_1|present_state[23]~49\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state[23]~49_combout\ = ((\RST~combout\) # ((\CNT_E~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \RST~combout\,
	datad => \CNT_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Counter_16M_1|present_state[23]~49_combout\);

-- Location: LC_X14_Y13_N3
\Counter_16M_1|present_state[0]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(0) = DFFEAS((!\Counter_16M_1|present_state\(0)), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[0]~3\ = CARRY((\Counter_16M_1|present_state\(0)))
-- \Counter_16M_1|present_state[0]~3COUT1_51\ = CARRY((\Counter_16M_1|present_state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(0),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(0),
	cout0 => \Counter_16M_1|present_state[0]~3\,
	cout1 => \Counter_16M_1|present_state[0]~3COUT1_51\);

-- Location: LC_X14_Y13_N4
\Counter_16M_1|present_state[1]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(1) = DFFEAS(\Counter_16M_1|present_state\(1) $ ((((\Counter_16M_1|present_state[0]~3\)))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , 
-- \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[1]~1\ = CARRY(((!\Counter_16M_1|present_state[0]~3COUT1_51\)) # (!\Counter_16M_1|present_state\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(1),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin0 => \Counter_16M_1|present_state[0]~3\,
	cin1 => \Counter_16M_1|present_state[0]~3COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(1),
	cout => \Counter_16M_1|present_state[1]~1\);

-- Location: LC_X14_Y13_N5
\Counter_16M_1|present_state[2]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(2) = DFFEAS(\Counter_16M_1|present_state\(2) $ ((((!\Counter_16M_1|present_state[1]~1\)))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , 
-- \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[2]~7\ = CARRY((\Counter_16M_1|present_state\(2) & ((!\Counter_16M_1|present_state[1]~1\))))
-- \Counter_16M_1|present_state[2]~7COUT1_52\ = CARRY((\Counter_16M_1|present_state\(2) & ((!\Counter_16M_1|present_state[1]~1\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(2),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[1]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(2),
	cout0 => \Counter_16M_1|present_state[2]~7\,
	cout1 => \Counter_16M_1|present_state[2]~7COUT1_52\);

-- Location: LC_X14_Y13_N6
\Counter_16M_1|present_state[3]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(3) = DFFEAS(\Counter_16M_1|present_state\(3) $ (((((!\Counter_16M_1|present_state[1]~1\ & \Counter_16M_1|present_state[2]~7\) # (\Counter_16M_1|present_state[1]~1\ & \Counter_16M_1|present_state[2]~7COUT1_52\))))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[3]~5\ = CARRY(((!\Counter_16M_1|present_state[2]~7\)) # (!\Counter_16M_1|present_state\(3)))
-- \Counter_16M_1|present_state[3]~5COUT1_53\ = CARRY(((!\Counter_16M_1|present_state[2]~7COUT1_52\)) # (!\Counter_16M_1|present_state\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(3),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[1]~1\,
	cin0 => \Counter_16M_1|present_state[2]~7\,
	cin1 => \Counter_16M_1|present_state[2]~7COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(3),
	cout0 => \Counter_16M_1|present_state[3]~5\,
	cout1 => \Counter_16M_1|present_state[3]~5COUT1_53\);

-- Location: LC_X14_Y13_N7
\Counter_16M_1|present_state[4]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(4) = DFFEAS(\Counter_16M_1|present_state\(4) $ ((((!(!\Counter_16M_1|present_state[1]~1\ & \Counter_16M_1|present_state[3]~5\) # (\Counter_16M_1|present_state[1]~1\ & \Counter_16M_1|present_state[3]~5COUT1_53\))))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[4]~11\ = CARRY((\Counter_16M_1|present_state\(4) & ((!\Counter_16M_1|present_state[3]~5\))))
-- \Counter_16M_1|present_state[4]~11COUT1_54\ = CARRY((\Counter_16M_1|present_state\(4) & ((!\Counter_16M_1|present_state[3]~5COUT1_53\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(4),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[1]~1\,
	cin0 => \Counter_16M_1|present_state[3]~5\,
	cin1 => \Counter_16M_1|present_state[3]~5COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(4),
	cout0 => \Counter_16M_1|present_state[4]~11\,
	cout1 => \Counter_16M_1|present_state[4]~11COUT1_54\);

-- Location: LC_X14_Y13_N8
\Counter_16M_1|present_state[5]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(5) = DFFEAS(\Counter_16M_1|present_state\(5) $ (((((!\Counter_16M_1|present_state[1]~1\ & \Counter_16M_1|present_state[4]~11\) # (\Counter_16M_1|present_state[1]~1\ & \Counter_16M_1|present_state[4]~11COUT1_54\))))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[5]~9\ = CARRY(((!\Counter_16M_1|present_state[4]~11\)) # (!\Counter_16M_1|present_state\(5)))
-- \Counter_16M_1|present_state[5]~9COUT1_55\ = CARRY(((!\Counter_16M_1|present_state[4]~11COUT1_54\)) # (!\Counter_16M_1|present_state\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(5),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[1]~1\,
	cin0 => \Counter_16M_1|present_state[4]~11\,
	cin1 => \Counter_16M_1|present_state[4]~11COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(5),
	cout0 => \Counter_16M_1|present_state[5]~9\,
	cout1 => \Counter_16M_1|present_state[5]~9COUT1_55\);

-- Location: LC_X14_Y13_N9
\Counter_16M_1|present_state[6]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(6) = DFFEAS((\Counter_16M_1|present_state\(6) $ ((!(!\Counter_16M_1|present_state[1]~1\ & \Counter_16M_1|present_state[5]~9\) # (\Counter_16M_1|present_state[1]~1\ & \Counter_16M_1|present_state[5]~9COUT1_55\)))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[6]~15\ = CARRY(((\Counter_16M_1|present_state\(6) & !\Counter_16M_1|present_state[5]~9COUT1_55\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Counter_16M_1|present_state\(6),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[1]~1\,
	cin0 => \Counter_16M_1|present_state[5]~9\,
	cin1 => \Counter_16M_1|present_state[5]~9COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(6),
	cout => \Counter_16M_1|present_state[6]~15\);

-- Location: LC_X15_Y13_N0
\Counter_16M_1|present_state[7]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(7) = DFFEAS((\Counter_16M_1|present_state\(7) $ ((\Counter_16M_1|present_state[6]~15\))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , 
-- \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[7]~13\ = CARRY(((!\Counter_16M_1|present_state[6]~15\) # (!\Counter_16M_1|present_state\(7))))
-- \Counter_16M_1|present_state[7]~13COUT1_56\ = CARRY(((!\Counter_16M_1|present_state[6]~15\) # (!\Counter_16M_1|present_state\(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Counter_16M_1|present_state\(7),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[6]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(7),
	cout0 => \Counter_16M_1|present_state[7]~13\,
	cout1 => \Counter_16M_1|present_state[7]~13COUT1_56\);

-- Location: LC_X15_Y13_N1
\Counter_16M_1|present_state[8]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(8) = DFFEAS((\Counter_16M_1|present_state\(8) $ ((!(!\Counter_16M_1|present_state[6]~15\ & \Counter_16M_1|present_state[7]~13\) # (\Counter_16M_1|present_state[6]~15\ & \Counter_16M_1|present_state[7]~13COUT1_56\)))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[8]~19\ = CARRY(((\Counter_16M_1|present_state\(8) & !\Counter_16M_1|present_state[7]~13\)))
-- \Counter_16M_1|present_state[8]~19COUT1_57\ = CARRY(((\Counter_16M_1|present_state\(8) & !\Counter_16M_1|present_state[7]~13COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Counter_16M_1|present_state\(8),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[6]~15\,
	cin0 => \Counter_16M_1|present_state[7]~13\,
	cin1 => \Counter_16M_1|present_state[7]~13COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(8),
	cout0 => \Counter_16M_1|present_state[8]~19\,
	cout1 => \Counter_16M_1|present_state[8]~19COUT1_57\);

-- Location: LC_X15_Y13_N2
\Counter_16M_1|present_state[9]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(9) = DFFEAS((\Counter_16M_1|present_state\(9) $ (((!\Counter_16M_1|present_state[6]~15\ & \Counter_16M_1|present_state[8]~19\) # (\Counter_16M_1|present_state[6]~15\ & \Counter_16M_1|present_state[8]~19COUT1_57\)))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[9]~17\ = CARRY(((!\Counter_16M_1|present_state[8]~19\) # (!\Counter_16M_1|present_state\(9))))
-- \Counter_16M_1|present_state[9]~17COUT1_58\ = CARRY(((!\Counter_16M_1|present_state[8]~19COUT1_57\) # (!\Counter_16M_1|present_state\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Counter_16M_1|present_state\(9),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[6]~15\,
	cin0 => \Counter_16M_1|present_state[8]~19\,
	cin1 => \Counter_16M_1|present_state[8]~19COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(9),
	cout0 => \Counter_16M_1|present_state[9]~17\,
	cout1 => \Counter_16M_1|present_state[9]~17COUT1_58\);

-- Location: LC_X15_Y13_N3
\Counter_16M_1|present_state[10]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(10) = DFFEAS(\Counter_16M_1|present_state\(10) $ ((((!(!\Counter_16M_1|present_state[6]~15\ & \Counter_16M_1|present_state[9]~17\) # (\Counter_16M_1|present_state[6]~15\ & \Counter_16M_1|present_state[9]~17COUT1_58\))))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[10]~23\ = CARRY((\Counter_16M_1|present_state\(10) & ((!\Counter_16M_1|present_state[9]~17\))))
-- \Counter_16M_1|present_state[10]~23COUT1_59\ = CARRY((\Counter_16M_1|present_state\(10) & ((!\Counter_16M_1|present_state[9]~17COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(10),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[6]~15\,
	cin0 => \Counter_16M_1|present_state[9]~17\,
	cin1 => \Counter_16M_1|present_state[9]~17COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(10),
	cout0 => \Counter_16M_1|present_state[10]~23\,
	cout1 => \Counter_16M_1|present_state[10]~23COUT1_59\);

-- Location: LC_X15_Y13_N4
\Counter_16M_1|present_state[11]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(11) = DFFEAS(\Counter_16M_1|present_state\(11) $ (((((!\Counter_16M_1|present_state[6]~15\ & \Counter_16M_1|present_state[10]~23\) # (\Counter_16M_1|present_state[6]~15\ & \Counter_16M_1|present_state[10]~23COUT1_59\))))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[11]~21\ = CARRY(((!\Counter_16M_1|present_state[10]~23COUT1_59\)) # (!\Counter_16M_1|present_state\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(11),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[6]~15\,
	cin0 => \Counter_16M_1|present_state[10]~23\,
	cin1 => \Counter_16M_1|present_state[10]~23COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(11),
	cout => \Counter_16M_1|present_state[11]~21\);

-- Location: LC_X15_Y13_N5
\Counter_16M_1|present_state[12]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(12) = DFFEAS(\Counter_16M_1|present_state\(12) $ ((((!\Counter_16M_1|present_state[11]~21\)))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , 
-- \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[12]~27\ = CARRY((\Counter_16M_1|present_state\(12) & ((!\Counter_16M_1|present_state[11]~21\))))
-- \Counter_16M_1|present_state[12]~27COUT1_60\ = CARRY((\Counter_16M_1|present_state\(12) & ((!\Counter_16M_1|present_state[11]~21\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(12),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[11]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(12),
	cout0 => \Counter_16M_1|present_state[12]~27\,
	cout1 => \Counter_16M_1|present_state[12]~27COUT1_60\);

-- Location: LC_X15_Y13_N6
\Counter_16M_1|present_state[13]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(13) = DFFEAS(\Counter_16M_1|present_state\(13) $ (((((!\Counter_16M_1|present_state[11]~21\ & \Counter_16M_1|present_state[12]~27\) # (\Counter_16M_1|present_state[11]~21\ & \Counter_16M_1|present_state[12]~27COUT1_60\))))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[13]~25\ = CARRY(((!\Counter_16M_1|present_state[12]~27\)) # (!\Counter_16M_1|present_state\(13)))
-- \Counter_16M_1|present_state[13]~25COUT1_61\ = CARRY(((!\Counter_16M_1|present_state[12]~27COUT1_60\)) # (!\Counter_16M_1|present_state\(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(13),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[11]~21\,
	cin0 => \Counter_16M_1|present_state[12]~27\,
	cin1 => \Counter_16M_1|present_state[12]~27COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(13),
	cout0 => \Counter_16M_1|present_state[13]~25\,
	cout1 => \Counter_16M_1|present_state[13]~25COUT1_61\);

-- Location: LC_X15_Y13_N7
\Counter_16M_1|present_state[14]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(14) = DFFEAS((\Counter_16M_1|present_state\(14) $ ((!(!\Counter_16M_1|present_state[11]~21\ & \Counter_16M_1|present_state[13]~25\) # (\Counter_16M_1|present_state[11]~21\ & \Counter_16M_1|present_state[13]~25COUT1_61\)))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[14]~31\ = CARRY(((\Counter_16M_1|present_state\(14) & !\Counter_16M_1|present_state[13]~25\)))
-- \Counter_16M_1|present_state[14]~31COUT1_62\ = CARRY(((\Counter_16M_1|present_state\(14) & !\Counter_16M_1|present_state[13]~25COUT1_61\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Counter_16M_1|present_state\(14),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[11]~21\,
	cin0 => \Counter_16M_1|present_state[13]~25\,
	cin1 => \Counter_16M_1|present_state[13]~25COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(14),
	cout0 => \Counter_16M_1|present_state[14]~31\,
	cout1 => \Counter_16M_1|present_state[14]~31COUT1_62\);

-- Location: LC_X15_Y13_N8
\Counter_16M_1|present_state[15]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(15) = DFFEAS(\Counter_16M_1|present_state\(15) $ (((((!\Counter_16M_1|present_state[11]~21\ & \Counter_16M_1|present_state[14]~31\) # (\Counter_16M_1|present_state[11]~21\ & \Counter_16M_1|present_state[14]~31COUT1_62\))))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[15]~29\ = CARRY(((!\Counter_16M_1|present_state[14]~31\)) # (!\Counter_16M_1|present_state\(15)))
-- \Counter_16M_1|present_state[15]~29COUT1_63\ = CARRY(((!\Counter_16M_1|present_state[14]~31COUT1_62\)) # (!\Counter_16M_1|present_state\(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(15),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[11]~21\,
	cin0 => \Counter_16M_1|present_state[14]~31\,
	cin1 => \Counter_16M_1|present_state[14]~31COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(15),
	cout0 => \Counter_16M_1|present_state[15]~29\,
	cout1 => \Counter_16M_1|present_state[15]~29COUT1_63\);

-- Location: LC_X15_Y13_N9
\Counter_16M_1|present_state[16]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(16) = DFFEAS((\Counter_16M_1|present_state\(16) $ ((!(!\Counter_16M_1|present_state[11]~21\ & \Counter_16M_1|present_state[15]~29\) # (\Counter_16M_1|present_state[11]~21\ & \Counter_16M_1|present_state[15]~29COUT1_63\)))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[16]~35\ = CARRY(((\Counter_16M_1|present_state\(16) & !\Counter_16M_1|present_state[15]~29COUT1_63\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Counter_16M_1|present_state\(16),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[11]~21\,
	cin0 => \Counter_16M_1|present_state[15]~29\,
	cin1 => \Counter_16M_1|present_state[15]~29COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(16),
	cout => \Counter_16M_1|present_state[16]~35\);

-- Location: LC_X16_Y13_N0
\Counter_16M_1|present_state[17]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(17) = DFFEAS((\Counter_16M_1|present_state\(17) $ ((\Counter_16M_1|present_state[16]~35\))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , 
-- \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[17]~33\ = CARRY(((!\Counter_16M_1|present_state[16]~35\) # (!\Counter_16M_1|present_state\(17))))
-- \Counter_16M_1|present_state[17]~33COUT1_64\ = CARRY(((!\Counter_16M_1|present_state[16]~35\) # (!\Counter_16M_1|present_state\(17))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Counter_16M_1|present_state\(17),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[16]~35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(17),
	cout0 => \Counter_16M_1|present_state[17]~33\,
	cout1 => \Counter_16M_1|present_state[17]~33COUT1_64\);

-- Location: LC_X16_Y13_N1
\Counter_16M_1|present_state[18]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(18) = DFFEAS((\Counter_16M_1|present_state\(18) $ ((!(!\Counter_16M_1|present_state[16]~35\ & \Counter_16M_1|present_state[17]~33\) # (\Counter_16M_1|present_state[16]~35\ & \Counter_16M_1|present_state[17]~33COUT1_64\)))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[18]~39\ = CARRY(((\Counter_16M_1|present_state\(18) & !\Counter_16M_1|present_state[17]~33\)))
-- \Counter_16M_1|present_state[18]~39COUT1_65\ = CARRY(((\Counter_16M_1|present_state\(18) & !\Counter_16M_1|present_state[17]~33COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Counter_16M_1|present_state\(18),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[16]~35\,
	cin0 => \Counter_16M_1|present_state[17]~33\,
	cin1 => \Counter_16M_1|present_state[17]~33COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(18),
	cout0 => \Counter_16M_1|present_state[18]~39\,
	cout1 => \Counter_16M_1|present_state[18]~39COUT1_65\);

-- Location: LC_X16_Y13_N2
\Counter_16M_1|present_state[19]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(19) = DFFEAS((\Counter_16M_1|present_state\(19) $ (((!\Counter_16M_1|present_state[16]~35\ & \Counter_16M_1|present_state[18]~39\) # (\Counter_16M_1|present_state[16]~35\ & \Counter_16M_1|present_state[18]~39COUT1_65\)))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[19]~37\ = CARRY(((!\Counter_16M_1|present_state[18]~39\) # (!\Counter_16M_1|present_state\(19))))
-- \Counter_16M_1|present_state[19]~37COUT1_66\ = CARRY(((!\Counter_16M_1|present_state[18]~39COUT1_65\) # (!\Counter_16M_1|present_state\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Counter_16M_1|present_state\(19),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[16]~35\,
	cin0 => \Counter_16M_1|present_state[18]~39\,
	cin1 => \Counter_16M_1|present_state[18]~39COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(19),
	cout0 => \Counter_16M_1|present_state[19]~37\,
	cout1 => \Counter_16M_1|present_state[19]~37COUT1_66\);

-- Location: LC_X16_Y13_N3
\Counter_16M_1|present_state[20]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(20) = DFFEAS(\Counter_16M_1|present_state\(20) $ ((((!(!\Counter_16M_1|present_state[16]~35\ & \Counter_16M_1|present_state[19]~37\) # (\Counter_16M_1|present_state[16]~35\ & \Counter_16M_1|present_state[19]~37COUT1_66\))))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[20]~43\ = CARRY((\Counter_16M_1|present_state\(20) & ((!\Counter_16M_1|present_state[19]~37\))))
-- \Counter_16M_1|present_state[20]~43COUT1_67\ = CARRY((\Counter_16M_1|present_state\(20) & ((!\Counter_16M_1|present_state[19]~37COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(20),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[16]~35\,
	cin0 => \Counter_16M_1|present_state[19]~37\,
	cin1 => \Counter_16M_1|present_state[19]~37COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(20),
	cout0 => \Counter_16M_1|present_state[20]~43\,
	cout1 => \Counter_16M_1|present_state[20]~43COUT1_67\);

-- Location: LC_X16_Y13_N4
\Counter_16M_1|present_state[21]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(21) = DFFEAS(\Counter_16M_1|present_state\(21) $ (((((!\Counter_16M_1|present_state[16]~35\ & \Counter_16M_1|present_state[20]~43\) # (\Counter_16M_1|present_state[16]~35\ & \Counter_16M_1|present_state[20]~43COUT1_67\))))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[21]~41\ = CARRY(((!\Counter_16M_1|present_state[20]~43COUT1_67\)) # (!\Counter_16M_1|present_state\(21)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(21),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[16]~35\,
	cin0 => \Counter_16M_1|present_state[20]~43\,
	cin1 => \Counter_16M_1|present_state[20]~43COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(21),
	cout => \Counter_16M_1|present_state[21]~41\);

-- Location: LC_X16_Y13_N5
\Counter_16M_1|present_state[22]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(22) = DFFEAS(\Counter_16M_1|present_state\(22) $ ((((!\Counter_16M_1|present_state[21]~41\)))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , 
-- \Counter_16M_1|present_state[23]~48_combout\, )
-- \Counter_16M_1|present_state[22]~47\ = CARRY((\Counter_16M_1|present_state\(22) & ((!\Counter_16M_1|present_state[21]~41\))))
-- \Counter_16M_1|present_state[22]~47COUT1_68\ = CARRY((\Counter_16M_1|present_state\(22) & ((!\Counter_16M_1|present_state[21]~41\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(22),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[21]~41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(22),
	cout0 => \Counter_16M_1|present_state[22]~47\,
	cout1 => \Counter_16M_1|present_state[22]~47COUT1_68\);

-- Location: LC_X16_Y13_N6
\Counter_16M_1|present_state[23]\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state\(23) = DFFEAS(\Counter_16M_1|present_state\(23) $ (((((!\Counter_16M_1|present_state[21]~41\ & \Counter_16M_1|present_state[22]~47\) # (\Counter_16M_1|present_state[21]~41\ & \Counter_16M_1|present_state[22]~47COUT1_68\))))), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \Counter_16M_1|present_state[23]~49_combout\, , , \Counter_16M_1|present_state[23]~48_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(23),
	aclr => \CD~combout\,
	sclr => \Counter_16M_1|present_state[23]~48_combout\,
	ena => \Counter_16M_1|present_state[23]~49_combout\,
	cin => \Counter_16M_1|present_state[21]~41\,
	cin0 => \Counter_16M_1|present_state[22]~47\,
	cin1 => \Counter_16M_1|present_state[22]~47COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Counter_16M_1|present_state\(23));

-- Location: LC_X16_Y13_N9
\Counter_16M_1|LessThan0~6\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|LessThan0~6_combout\ = (((!\Counter_16M_1|present_state\(20)) # (!\Counter_16M_1|present_state\(22))) # (!\Counter_16M_1|present_state\(21))) # (!\Counter_16M_1|present_state\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_16M_1|present_state\(23),
	datab => \Counter_16M_1|present_state\(21),
	datac => \Counter_16M_1|present_state\(22),
	datad => \Counter_16M_1|present_state\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Counter_16M_1|LessThan0~6_combout\);

-- Location: LC_X16_Y13_N7
\Counter_16M_1|LessThan0~5\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|LessThan0~5_combout\ = (((!\Counter_16M_1|present_state\(19)) # (!\Counter_16M_1|present_state\(17))) # (!\Counter_16M_1|present_state\(18))) # (!\Counter_16M_1|present_state\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_16M_1|present_state\(16),
	datab => \Counter_16M_1|present_state\(18),
	datac => \Counter_16M_1|present_state\(17),
	datad => \Counter_16M_1|present_state\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Counter_16M_1|LessThan0~5_combout\);

-- Location: LC_X13_Y13_N5
\Counter_16M_1|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|LessThan0~0_combout\ = (((!\Counter_16M_1|present_state\(2)) # (!\Counter_16M_1|present_state\(3))) # (!\Counter_16M_1|present_state\(1))) # (!\Counter_16M_1|present_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_16M_1|present_state\(0),
	datab => \Counter_16M_1|present_state\(1),
	datac => \Counter_16M_1|present_state\(3),
	datad => \Counter_16M_1|present_state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Counter_16M_1|LessThan0~0_combout\);

-- Location: LC_X14_Y13_N0
\Counter_16M_1|LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|LessThan0~2_combout\ = (((!\Counter_16M_1|present_state\(8)) # (!\Counter_16M_1|present_state\(9))) # (!\Counter_16M_1|present_state\(11))) # (!\Counter_16M_1|present_state\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_16M_1|present_state\(10),
	datab => \Counter_16M_1|present_state\(11),
	datac => \Counter_16M_1|present_state\(9),
	datad => \Counter_16M_1|present_state\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Counter_16M_1|LessThan0~2_combout\);

-- Location: LC_X13_Y13_N8
\Counter_16M_1|LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|LessThan0~1_combout\ = (((!\Counter_16M_1|present_state\(7)) # (!\Counter_16M_1|present_state\(6))) # (!\Counter_16M_1|present_state\(5))) # (!\Counter_16M_1|present_state\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_16M_1|present_state\(4),
	datab => \Counter_16M_1|present_state\(5),
	datac => \Counter_16M_1|present_state\(6),
	datad => \Counter_16M_1|present_state\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Counter_16M_1|LessThan0~1_combout\);

-- Location: LC_X13_Y13_N0
\Counter_16M_1|LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|LessThan0~3_combout\ = (((!\Counter_16M_1|present_state\(12)) # (!\Counter_16M_1|present_state\(14))) # (!\Counter_16M_1|present_state\(15))) # (!\Counter_16M_1|present_state\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_16M_1|present_state\(13),
	datab => \Counter_16M_1|present_state\(15),
	datac => \Counter_16M_1|present_state\(14),
	datad => \Counter_16M_1|present_state\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Counter_16M_1|LessThan0~3_combout\);

-- Location: LC_X14_Y13_N1
\Counter_16M_1|LessThan0~4\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|LessThan0~4_combout\ = (\Counter_16M_1|LessThan0~0_combout\) # ((\Counter_16M_1|LessThan0~2_combout\) # ((\Counter_16M_1|LessThan0~1_combout\) # (\Counter_16M_1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_16M_1|LessThan0~0_combout\,
	datab => \Counter_16M_1|LessThan0~2_combout\,
	datac => \Counter_16M_1|LessThan0~1_combout\,
	datad => \Counter_16M_1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Counter_16M_1|LessThan0~4_combout\);

-- Location: LC_X14_Y13_N2
\Counter_16M_1|present_state[23]~48\ : maxii_lcell
-- Equation(s):
-- \Counter_16M_1|present_state[23]~48_combout\ = (\RST~combout\) # ((!\Counter_16M_1|LessThan0~6_combout\ & (!\Counter_16M_1|LessThan0~5_combout\ & !\Counter_16M_1|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaab",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \Counter_16M_1|LessThan0~6_combout\,
	datac => \Counter_16M_1|LessThan0~5_combout\,
	datad => \Counter_16M_1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Counter_16M_1|present_state[23]~48_combout\);

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(4),
	combout => \PC~combout\(4));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(5),
	combout => \PC~combout\(5));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LD_PC~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LD_PC,
	combout => \LD_PC~combout\);

-- Location: LC_X11_Y13_N4
\Data_reg_24bit_1|present_state[5]\ : maxii_lcell
-- Equation(s):
-- \Data_reg_24bit_1|present_state\(5) = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \LD_PC~combout\, \PC~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \PC~combout\(5),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Data_reg_24bit_1|present_state\(5));

-- Location: LC_X13_Y13_N1
\Data_reg_24bit_1|present_state[4]\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~2\ = (\Counter_16M_1|present_state\(4) & (D1_present_state[4] & (\Counter_16M_1|present_state\(5) $ (!\Data_reg_24bit_1|present_state\(5))))) # (!\Counter_16M_1|present_state\(4) & (!D1_present_state[4] & 
-- (\Counter_16M_1|present_state\(5) $ (!\Data_reg_24bit_1|present_state\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(4),
	datab => \Counter_16M_1|present_state\(5),
	datac => \PC~combout\(4),
	datad => \Data_reg_24bit_1|present_state\(5),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~2\,
	regout => \Data_reg_24bit_1|present_state\(4));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(0),
	combout => \PC~combout\(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(1),
	combout => \PC~combout\(1));

-- Location: LC_X11_Y13_N2
\Data_reg_24bit_1|present_state[1]\ : maxii_lcell
-- Equation(s):
-- \Data_reg_24bit_1|present_state\(1) = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \LD_PC~combout\, \PC~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \PC~combout\(1),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Data_reg_24bit_1|present_state\(1));

-- Location: LC_X13_Y13_N7
\Data_reg_24bit_1|present_state[0]\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~0\ = (\Counter_16M_1|present_state\(0) & (D1_present_state[0] & (\Counter_16M_1|present_state\(1) $ (!\Data_reg_24bit_1|present_state\(1))))) # (!\Counter_16M_1|present_state\(0) & (!D1_present_state[0] & 
-- (\Counter_16M_1|present_state\(1) $ (!\Data_reg_24bit_1|present_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(0),
	datab => \Counter_16M_1|present_state\(1),
	datac => \PC~combout\(0),
	datad => \Data_reg_24bit_1|present_state\(1),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~0\,
	regout => \Data_reg_24bit_1|present_state\(0));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(6),
	combout => \PC~combout\(6));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(7),
	combout => \PC~combout\(7));

-- Location: LC_X13_Y13_N9
\Data_reg_24bit_1|present_state[7]\ : maxii_lcell
-- Equation(s):
-- \Data_reg_24bit_1|present_state\(7) = DFFEAS((((\PC~combout\(7)))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \LD_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \PC~combout\(7),
	aclr => \CD~combout\,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Data_reg_24bit_1|present_state\(7));

-- Location: LC_X13_Y13_N6
\Data_reg_24bit_1|present_state[6]\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~3\ = (\Counter_16M_1|present_state\(7) & (\Data_reg_24bit_1|present_state\(7) & (\Counter_16M_1|present_state\(6) $ (!D1_present_state[6])))) # (!\Counter_16M_1|present_state\(7) & (!\Data_reg_24bit_1|present_state\(7) & 
-- (\Counter_16M_1|present_state\(6) $ (!D1_present_state[6]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(7),
	datab => \Counter_16M_1|present_state\(6),
	datac => \PC~combout\(6),
	datad => \Data_reg_24bit_1|present_state\(7),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~3\,
	regout => \Data_reg_24bit_1|present_state\(6));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(2),
	combout => \PC~combout\(2));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(3),
	combout => \PC~combout\(3));

-- Location: LC_X13_Y13_N4
\Data_reg_24bit_1|present_state[3]\ : maxii_lcell
-- Equation(s):
-- \Data_reg_24bit_1|present_state\(3) = DFFEAS((((\PC~combout\(3)))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \LD_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \PC~combout\(3),
	aclr => \CD~combout\,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Data_reg_24bit_1|present_state\(3));

-- Location: LC_X13_Y13_N2
\Data_reg_24bit_1|present_state[2]\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~1\ = (\Counter_16M_1|present_state\(3) & (\Data_reg_24bit_1|present_state\(3) & (\Counter_16M_1|present_state\(2) $ (!D1_present_state[2])))) # (!\Counter_16M_1|present_state\(3) & (!\Data_reg_24bit_1|present_state\(3) & 
-- (\Counter_16M_1|present_state\(2) $ (!D1_present_state[2]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(3),
	datab => \Counter_16M_1|present_state\(2),
	datac => \PC~combout\(2),
	datad => \Data_reg_24bit_1|present_state\(3),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~1\,
	regout => \Data_reg_24bit_1|present_state\(2));

-- Location: LC_X13_Y13_N3
\Comp_24bit_1|Chip6|Chip4|Eq~4\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~4_combout\ = (\Comp_24bit_1|Chip6|Chip4|Eq~2\ & (\Comp_24bit_1|Chip6|Chip4|Eq~0\ & (\Comp_24bit_1|Chip6|Chip4|Eq~3\ & \Comp_24bit_1|Chip6|Chip4|Eq~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_24bit_1|Chip6|Chip4|Eq~2\,
	datab => \Comp_24bit_1|Chip6|Chip4|Eq~0\,
	datac => \Comp_24bit_1|Chip6|Chip4|Eq~3\,
	datad => \Comp_24bit_1|Chip6|Chip4|Eq~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~4_combout\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(13),
	combout => \PC~combout\(13));

-- Location: LC_X12_Y13_N8
\Data_reg_24bit_1|present_state[13]\ : maxii_lcell
-- Equation(s):
-- \Data_reg_24bit_1|present_state\(13) = DFFEAS((((\PC~combout\(13)))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \LD_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \PC~combout\(13),
	aclr => \CD~combout\,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Data_reg_24bit_1|present_state\(13));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(12),
	combout => \PC~combout\(12));

-- Location: LC_X12_Y13_N3
\Data_reg_24bit_1|present_state[12]\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~7\ = (\Data_reg_24bit_1|present_state\(13) & (\Counter_16M_1|present_state\(13) & (\Counter_16M_1|present_state\(12) $ (!D1_present_state[12])))) # (!\Data_reg_24bit_1|present_state\(13) & (!\Counter_16M_1|present_state\(13) & 
-- (\Counter_16M_1|present_state\(12) $ (!D1_present_state[12]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Data_reg_24bit_1|present_state\(13),
	datab => \Counter_16M_1|present_state\(12),
	datac => \PC~combout\(12),
	datad => \Counter_16M_1|present_state\(13),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~7\,
	regout => \Data_reg_24bit_1|present_state\(12));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(14),
	combout => \PC~combout\(14));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(15),
	combout => \PC~combout\(15));

-- Location: LC_X12_Y13_N9
\Data_reg_24bit_1|present_state[15]\ : maxii_lcell
-- Equation(s):
-- \Data_reg_24bit_1|present_state\(15) = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \LD_PC~combout\, \PC~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \PC~combout\(15),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Data_reg_24bit_1|present_state\(15));

-- Location: LC_X12_Y13_N7
\Data_reg_24bit_1|present_state[14]\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~8\ = (\Counter_16M_1|present_state\(14) & (D1_present_state[14] & (\Counter_16M_1|present_state\(15) $ (!\Data_reg_24bit_1|present_state\(15))))) # (!\Counter_16M_1|present_state\(14) & (!D1_present_state[14] & 
-- (\Counter_16M_1|present_state\(15) $ (!\Data_reg_24bit_1|present_state\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(14),
	datab => \Counter_16M_1|present_state\(15),
	datac => \PC~combout\(14),
	datad => \Data_reg_24bit_1|present_state\(15),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~8\,
	regout => \Data_reg_24bit_1|present_state\(14));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(11),
	combout => \PC~combout\(11));

-- Location: LC_X12_Y13_N5
\Data_reg_24bit_1|present_state[11]\ : maxii_lcell
-- Equation(s):
-- \Data_reg_24bit_1|present_state\(11) = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \LD_PC~combout\, \PC~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \PC~combout\(11),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Data_reg_24bit_1|present_state\(11));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(10),
	combout => \PC~combout\(10));

-- Location: LC_X12_Y13_N4
\Data_reg_24bit_1|present_state[10]\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~6\ = (\Data_reg_24bit_1|present_state\(11) & (\Counter_16M_1|present_state\(11) & (D1_present_state[10] $ (!\Counter_16M_1|present_state\(10))))) # (!\Data_reg_24bit_1|present_state\(11) & (!\Counter_16M_1|present_state\(11) & 
-- (D1_present_state[10] $ (!\Counter_16M_1|present_state\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Data_reg_24bit_1|present_state\(11),
	datab => \Counter_16M_1|present_state\(11),
	datac => \PC~combout\(10),
	datad => \Counter_16M_1|present_state\(10),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~6\,
	regout => \Data_reg_24bit_1|present_state\(10));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(9),
	combout => \PC~combout\(9));

-- Location: LC_X12_Y13_N1
\Data_reg_24bit_1|present_state[9]\ : maxii_lcell
-- Equation(s):
-- \Data_reg_24bit_1|present_state\(9) = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \LD_PC~combout\, \PC~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \PC~combout\(9),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Data_reg_24bit_1|present_state\(9));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(8),
	combout => \PC~combout\(8));

-- Location: LC_X12_Y13_N2
\Data_reg_24bit_1|present_state[8]\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~5\ = (\Counter_16M_1|present_state\(8) & (D1_present_state[8] & (\Data_reg_24bit_1|present_state\(9) $ (!\Counter_16M_1|present_state\(9))))) # (!\Counter_16M_1|present_state\(8) & (!D1_present_state[8] & 
-- (\Data_reg_24bit_1|present_state\(9) $ (!\Counter_16M_1|present_state\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(8),
	datab => \Data_reg_24bit_1|present_state\(9),
	datac => \PC~combout\(8),
	datad => \Counter_16M_1|present_state\(9),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~5\,
	regout => \Data_reg_24bit_1|present_state\(8));

-- Location: LC_X12_Y13_N6
\Comp_24bit_1|Chip6|Chip4|Eq~9\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~9_combout\ = (\Comp_24bit_1|Chip6|Chip4|Eq~7\ & (\Comp_24bit_1|Chip6|Chip4|Eq~8\ & (\Comp_24bit_1|Chip6|Chip4|Eq~6\ & \Comp_24bit_1|Chip6|Chip4|Eq~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_24bit_1|Chip6|Chip4|Eq~7\,
	datab => \Comp_24bit_1|Chip6|Chip4|Eq~8\,
	datac => \Comp_24bit_1|Chip6|Chip4|Eq~6\,
	datad => \Comp_24bit_1|Chip6|Chip4|Eq~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~9_combout\);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[21]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(21),
	combout => \PC~combout\(21));

-- Location: LC_X17_Y13_N5
\Data_reg_24bit_1|present_state[21]\ : maxii_lcell
-- Equation(s):
-- \Data_reg_24bit_1|present_state\(21) = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \LD_PC~combout\, \PC~combout\(21), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \PC~combout\(21),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Data_reg_24bit_1|present_state\(21));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[20]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(20),
	combout => \PC~combout\(20));

-- Location: LC_X17_Y13_N4
\Data_reg_24bit_1|present_state[20]\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~12\ = (\Data_reg_24bit_1|present_state\(21) & (\Counter_16M_1|present_state\(21) & (D1_present_state[20] $ (!\Counter_16M_1|present_state\(20))))) # (!\Data_reg_24bit_1|present_state\(21) & (!\Counter_16M_1|present_state\(21) 
-- & (D1_present_state[20] $ (!\Counter_16M_1|present_state\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Data_reg_24bit_1|present_state\(21),
	datab => \Counter_16M_1|present_state\(21),
	datac => \PC~combout\(20),
	datad => \Counter_16M_1|present_state\(20),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~12\,
	regout => \Data_reg_24bit_1|present_state\(20));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[22]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(22),
	combout => \PC~combout\(22));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[23]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(23),
	combout => \PC~combout\(23));

-- Location: LC_X17_Y13_N1
\Data_reg_24bit_1|present_state[23]\ : maxii_lcell
-- Equation(s):
-- \Data_reg_24bit_1|present_state\(23) = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \LD_PC~combout\, \PC~combout\(23), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \PC~combout\(23),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Data_reg_24bit_1|present_state\(23));

-- Location: LC_X17_Y13_N7
\Data_reg_24bit_1|present_state[22]\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~13\ = (\Counter_16M_1|present_state\(22) & (D1_present_state[22] & (\Counter_16M_1|present_state\(23) $ (!\Data_reg_24bit_1|present_state\(23))))) # (!\Counter_16M_1|present_state\(22) & (!D1_present_state[22] & 
-- (\Counter_16M_1|present_state\(23) $ (!\Data_reg_24bit_1|present_state\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(22),
	datab => \Counter_16M_1|present_state\(23),
	datac => \PC~combout\(22),
	datad => \Data_reg_24bit_1|present_state\(23),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~13\,
	regout => \Data_reg_24bit_1|present_state\(22));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[18]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(18),
	combout => \PC~combout\(18));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[19]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(19),
	combout => \PC~combout\(19));

-- Location: LC_X17_Y13_N9
\Data_reg_24bit_1|present_state[19]\ : maxii_lcell
-- Equation(s):
-- \Data_reg_24bit_1|present_state\(19) = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \LD_PC~combout\, \PC~combout\(19), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \PC~combout\(19),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Data_reg_24bit_1|present_state\(19));

-- Location: LC_X17_Y13_N6
\Data_reg_24bit_1|present_state[18]\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~11\ = (\Counter_16M_1|present_state\(18) & (D1_present_state[18] & (\Counter_16M_1|present_state\(19) $ (!\Data_reg_24bit_1|present_state\(19))))) # (!\Counter_16M_1|present_state\(18) & (!D1_present_state[18] & 
-- (\Counter_16M_1|present_state\(19) $ (!\Data_reg_24bit_1|present_state\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(18),
	datab => \Counter_16M_1|present_state\(19),
	datac => \PC~combout\(18),
	datad => \Data_reg_24bit_1|present_state\(19),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~11\,
	regout => \Data_reg_24bit_1|present_state\(18));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[16]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(16),
	combout => \PC~combout\(16));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[17]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(17),
	combout => \PC~combout\(17));

-- Location: LC_X17_Y13_N8
\Data_reg_24bit_1|present_state[17]\ : maxii_lcell
-- Equation(s):
-- \Data_reg_24bit_1|present_state\(17) = DFFEAS((((\PC~combout\(17)))), GLOBAL(\CLK~combout\), !GLOBAL(\CD~combout\), , \LD_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \PC~combout\(17),
	aclr => \CD~combout\,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Data_reg_24bit_1|present_state\(17));

-- Location: LC_X17_Y13_N2
\Data_reg_24bit_1|present_state[16]\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~10\ = (\Counter_16M_1|present_state\(17) & (\Data_reg_24bit_1|present_state\(17) & (\Counter_16M_1|present_state\(16) $ (!D1_present_state[16])))) # (!\Counter_16M_1|present_state\(17) & (!\Data_reg_24bit_1|present_state\(17) 
-- & (\Counter_16M_1|present_state\(16) $ (!D1_present_state[16]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counter_16M_1|present_state\(17),
	datab => \Counter_16M_1|present_state\(16),
	datac => \PC~combout\(16),
	datad => \Data_reg_24bit_1|present_state\(17),
	aclr => \CD~combout\,
	sload => VCC,
	ena => \LD_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~10\,
	regout => \Data_reg_24bit_1|present_state\(16));

-- Location: LC_X17_Y13_N3
\Comp_24bit_1|Chip6|Chip4|Eq~14\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~14_combout\ = (\Comp_24bit_1|Chip6|Chip4|Eq~12\ & (\Comp_24bit_1|Chip6|Chip4|Eq~13\ & (\Comp_24bit_1|Chip6|Chip4|Eq~11\ & \Comp_24bit_1|Chip6|Chip4|Eq~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_24bit_1|Chip6|Chip4|Eq~12\,
	datab => \Comp_24bit_1|Chip6|Chip4|Eq~13\,
	datac => \Comp_24bit_1|Chip6|Chip4|Eq~11\,
	datad => \Comp_24bit_1|Chip6|Chip4|Eq~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~14_combout\);

-- Location: LC_X17_Y13_N0
\Comp_24bit_1|Chip6|Chip4|Eq~15\ : maxii_lcell
-- Equation(s):
-- \Comp_24bit_1|Chip6|Chip4|Eq~15_combout\ = ((\Comp_24bit_1|Chip6|Chip4|Eq~4_combout\ & (\Comp_24bit_1|Chip6|Chip4|Eq~9_combout\ & \Comp_24bit_1|Chip6|Chip4|Eq~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Comp_24bit_1|Chip6|Chip4|Eq~4_combout\,
	datac => \Comp_24bit_1|Chip6|Chip4|Eq~9_combout\,
	datad => \Comp_24bit_1|Chip6|Chip4|Eq~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Comp_24bit_1|Chip6|Chip4|Eq~15_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TOF~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Comp_24bit_1|Chip6|Chip4|Eq~15_combout\,
	oe => VCC,
	padio => ww_TOF);
END structure;


