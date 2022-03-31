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

-- DATE "03/29/2022 18:28:47"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Adder_10bit IS
    PORT (
	A : IN std_logic_vector(9 DOWNTO 0);
	B : IN std_logic_vector(9 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(9 DOWNTO 0);
	Cout : OUT std_logic;
	Cout9 : OUT std_logic;
	Z : OUT std_logic
	);
END Adder_10bit;

-- Design Ports Information
-- S[0]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout9	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Adder_10bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Cout9 : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Cout9~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \Chip1|Chip0|Chip2|Y~1_cout\ : std_logic;
SIGNAL \Chip1|Chip0|Chip2|Y~2_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Chip1|Chip0|Chip2|Y~3\ : std_logic;
SIGNAL \Chip1|Chip0|Chip2|Y~4_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Chip1|Chip0|Chip2|Y~5\ : std_logic;
SIGNAL \Chip1|Chip0|Chip2|Y~6_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Chip1|Chip0|Chip2|Y~7\ : std_logic;
SIGNAL \Chip1|Chip0|Chip2|Y~8_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Chip1|Chip0|Chip2|Y~9\ : std_logic;
SIGNAL \Chip1|Chip0|Chip2|Y~10_combout\ : std_logic;
SIGNAL \Chip2|Chip0|Chip2|Y~0_combout\ : std_logic;
SIGNAL \Chip2|Chip0|Chip1|Y~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Chip2|Chip1|Chip2|Y~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Chip2|Chip1|Chip1|Y~0_combout\ : std_logic;
SIGNAL \Chip2|Chip2|Chip2|Y~0_combout\ : std_logic;
SIGNAL \Chip2|Chip2|Chip1|Y~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Chip2|Chip3|Chip2|Y~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Chip2|Chip3|Chip1|Y~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Chip3|Chip2|Y~0_combout\ : std_logic;
SIGNAL \Chip3|Chip1|Y~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Chip4|Chip2|Y~0_combout\ : std_logic;
SIGNAL \Chip4|Chip1|Y~0_combout\ : std_logic;
SIGNAL \Z~1_combout\ : std_logic;
SIGNAL \Z~2_combout\ : std_logic;
SIGNAL \Z~3_combout\ : std_logic;
SIGNAL \Z~0_combout\ : std_logic;
SIGNAL \Z~4_combout\ : std_logic;
SIGNAL \ALT_INV_Z~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
S <= ww_S;
Cout <= ww_Cout;
Cout9 <= ww_Cout9;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Z~4_combout\ <= NOT \Z~4_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y24_N2
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip1|Chip0|Chip2|Y~2_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip1|Chip0|Chip2|Y~4_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip1|Chip0|Chip2|Y~6_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip1|Chip0|Chip2|Y~8_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip2|Chip0|Chip2|Y~0_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip2|Chip1|Chip2|Y~0_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip2|Chip2|Chip2|Y~0_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip2|Chip3|Chip2|Y~0_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip3|Chip2|Y~0_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip4|Chip2|Y~0_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip4|Chip1|Y~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\Cout9~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip3|Chip1|Y~0_combout\,
	devoe => ww_devoe,
	o => \Cout9~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Z~4_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X115_Y22_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X115_Y24_N8
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X114_Y20_N18
\Chip1|Chip0|Chip2|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip0|Chip2|Y~1_cout\ = CARRY(\Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datad => VCC,
	cout => \Chip1|Chip0|Chip2|Y~1_cout\);

-- Location: LCCOMB_X114_Y20_N20
\Chip1|Chip0|Chip2|Y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip0|Chip2|Y~2_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\ & (\Chip1|Chip0|Chip2|Y~1_cout\ & VCC)) # (!\B[0]~input_o\ & (!\Chip1|Chip0|Chip2|Y~1_cout\)))) # (!\A[0]~input_o\ & ((\B[0]~input_o\ & (!\Chip1|Chip0|Chip2|Y~1_cout\)) # 
-- (!\B[0]~input_o\ & ((\Chip1|Chip0|Chip2|Y~1_cout\) # (GND)))))
-- \Chip1|Chip0|Chip2|Y~3\ = CARRY((\A[0]~input_o\ & (!\B[0]~input_o\ & !\Chip1|Chip0|Chip2|Y~1_cout\)) # (!\A[0]~input_o\ & ((!\Chip1|Chip0|Chip2|Y~1_cout\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cin => \Chip1|Chip0|Chip2|Y~1_cout\,
	combout => \Chip1|Chip0|Chip2|Y~2_combout\,
	cout => \Chip1|Chip0|Chip2|Y~3\);

-- Location: IOIBUF_X115_Y22_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X115_Y20_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X114_Y20_N22
\Chip1|Chip0|Chip2|Y~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip0|Chip2|Y~4_combout\ = ((\A[1]~input_o\ $ (\B[1]~input_o\ $ (!\Chip1|Chip0|Chip2|Y~3\)))) # (GND)
-- \Chip1|Chip0|Chip2|Y~5\ = CARRY((\A[1]~input_o\ & ((\B[1]~input_o\) # (!\Chip1|Chip0|Chip2|Y~3\))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & !\Chip1|Chip0|Chip2|Y~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \Chip1|Chip0|Chip2|Y~3\,
	combout => \Chip1|Chip0|Chip2|Y~4_combout\,
	cout => \Chip1|Chip0|Chip2|Y~5\);

-- Location: IOIBUF_X115_Y23_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X115_Y22_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X114_Y20_N24
\Chip1|Chip0|Chip2|Y~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip0|Chip2|Y~6_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\ & (\Chip1|Chip0|Chip2|Y~5\ & VCC)) # (!\A[2]~input_o\ & (!\Chip1|Chip0|Chip2|Y~5\)))) # (!\B[2]~input_o\ & ((\A[2]~input_o\ & (!\Chip1|Chip0|Chip2|Y~5\)) # (!\A[2]~input_o\ & 
-- ((\Chip1|Chip0|Chip2|Y~5\) # (GND)))))
-- \Chip1|Chip0|Chip2|Y~7\ = CARRY((\B[2]~input_o\ & (!\A[2]~input_o\ & !\Chip1|Chip0|Chip2|Y~5\)) # (!\B[2]~input_o\ & ((!\Chip1|Chip0|Chip2|Y~5\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Chip1|Chip0|Chip2|Y~5\,
	combout => \Chip1|Chip0|Chip2|Y~6_combout\,
	cout => \Chip1|Chip0|Chip2|Y~7\);

-- Location: IOIBUF_X115_Y18_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X115_Y19_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X114_Y20_N26
\Chip1|Chip0|Chip2|Y~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip0|Chip2|Y~8_combout\ = ((\B[3]~input_o\ $ (\A[3]~input_o\ $ (!\Chip1|Chip0|Chip2|Y~7\)))) # (GND)
-- \Chip1|Chip0|Chip2|Y~9\ = CARRY((\B[3]~input_o\ & ((\A[3]~input_o\) # (!\Chip1|Chip0|Chip2|Y~7\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & !\Chip1|Chip0|Chip2|Y~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Chip1|Chip0|Chip2|Y~7\,
	combout => \Chip1|Chip0|Chip2|Y~8_combout\,
	cout => \Chip1|Chip0|Chip2|Y~9\);

-- Location: IOIBUF_X115_Y18_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X115_Y20_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X114_Y20_N28
\Chip1|Chip0|Chip2|Y~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip0|Chip2|Y~10_combout\ = \Chip1|Chip0|Chip2|Y~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Chip1|Chip0|Chip2|Y~9\,
	combout => \Chip1|Chip0|Chip2|Y~10_combout\);

-- Location: LCCOMB_X114_Y20_N0
\Chip2|Chip0|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip0|Chip2|Y~0_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\ $ (\Chip1|Chip0|Chip2|Y~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \Chip1|Chip0|Chip2|Y~10_combout\,
	combout => \Chip2|Chip0|Chip2|Y~0_combout\);

-- Location: LCCOMB_X114_Y20_N10
\Chip2|Chip0|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip0|Chip1|Y~0_combout\ = (\B[4]~input_o\ & ((\A[4]~input_o\) # (\Chip1|Chip0|Chip2|Y~10_combout\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & \Chip1|Chip0|Chip2|Y~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \Chip1|Chip0|Chip2|Y~10_combout\,
	combout => \Chip2|Chip0|Chip1|Y~0_combout\);

-- Location: IOIBUF_X115_Y19_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X115_Y21_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X114_Y20_N12
\Chip2|Chip1|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip1|Chip2|Y~0_combout\ = \Chip2|Chip0|Chip1|Y~0_combout\ $ (\B[5]~input_o\ $ (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip0|Chip1|Y~0_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Chip2|Chip1|Chip2|Y~0_combout\);

-- Location: IOIBUF_X65_Y0_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X114_Y20_N6
\Chip2|Chip1|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip1|Chip1|Y~0_combout\ = (\Chip2|Chip0|Chip1|Y~0_combout\ & ((\B[5]~input_o\) # (\A[5]~input_o\))) # (!\Chip2|Chip0|Chip1|Y~0_combout\ & (\B[5]~input_o\ & \A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip0|Chip1|Y~0_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Chip2|Chip1|Chip1|Y~0_combout\);

-- Location: LCCOMB_X69_Y1_N0
\Chip2|Chip2|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip2|Chip2|Y~0_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ (\Chip2|Chip1|Chip1|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \Chip2|Chip1|Chip1|Y~0_combout\,
	combout => \Chip2|Chip2|Chip2|Y~0_combout\);

-- Location: LCCOMB_X69_Y1_N26
\Chip2|Chip2|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip2|Chip1|Y~0_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # (\Chip2|Chip1|Chip1|Y~0_combout\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & \Chip2|Chip1|Chip1|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \Chip2|Chip1|Chip1|Y~0_combout\,
	combout => \Chip2|Chip2|Chip1|Y~0_combout\);

-- Location: IOIBUF_X67_Y0_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X69_Y1_N20
\Chip2|Chip3|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip3|Chip2|Y~0_combout\ = \Chip2|Chip2|Chip1|Y~0_combout\ $ (\A[7]~input_o\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip2|Chip1|Y~0_combout\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	combout => \Chip2|Chip3|Chip2|Y~0_combout\);

-- Location: IOIBUF_X69_Y0_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X69_Y1_N22
\Chip2|Chip3|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip3|Chip1|Y~0_combout\ = (\Chip2|Chip2|Chip1|Y~0_combout\ & ((\A[7]~input_o\) # (\B[7]~input_o\))) # (!\Chip2|Chip2|Chip1|Y~0_combout\ & (\A[7]~input_o\ & \B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip2|Chip1|Y~0_combout\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	combout => \Chip2|Chip3|Chip1|Y~0_combout\);

-- Location: IOIBUF_X72_Y0_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X69_Y1_N24
\Chip3|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip2|Y~0_combout\ = \A[8]~input_o\ $ (\Chip2|Chip3|Chip1|Y~0_combout\ $ (\B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => \Chip2|Chip3|Chip1|Y~0_combout\,
	datad => \B[8]~input_o\,
	combout => \Chip3|Chip2|Y~0_combout\);

-- Location: LCCOMB_X69_Y1_N2
\Chip3|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip1|Y~0_combout\ = (\A[8]~input_o\ & ((\Chip2|Chip3|Chip1|Y~0_combout\) # (\B[8]~input_o\))) # (!\A[8]~input_o\ & (\Chip2|Chip3|Chip1|Y~0_combout\ & \B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => \Chip2|Chip3|Chip1|Y~0_combout\,
	datad => \B[8]~input_o\,
	combout => \Chip3|Chip1|Y~0_combout\);

-- Location: IOIBUF_X74_Y0_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X69_Y1_N4
\Chip4|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip2|Y~0_combout\ = \Chip3|Chip1|Y~0_combout\ $ (\B[9]~input_o\ $ (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip3|Chip1|Y~0_combout\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Chip4|Chip2|Y~0_combout\);

-- Location: LCCOMB_X69_Y1_N6
\Chip4|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip1|Y~0_combout\ = (\Chip3|Chip1|Y~0_combout\ & ((\B[9]~input_o\) # (\A[9]~input_o\))) # (!\Chip3|Chip1|Y~0_combout\ & (\B[9]~input_o\ & \A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip3|Chip1|Y~0_combout\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Chip4|Chip1|Y~0_combout\);

-- Location: LCCOMB_X114_Y20_N16
\Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~1_combout\ = (\Chip1|Chip0|Chip2|Y~4_combout\) # ((\Chip1|Chip0|Chip2|Y~10_combout\) # ((\Chip1|Chip0|Chip2|Y~8_combout\) # (\Chip1|Chip0|Chip2|Y~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip0|Chip2|Y~4_combout\,
	datab => \Chip1|Chip0|Chip2|Y~10_combout\,
	datac => \Chip1|Chip0|Chip2|Y~8_combout\,
	datad => \Chip1|Chip0|Chip2|Y~6_combout\,
	combout => \Z~1_combout\);

-- Location: LCCOMB_X114_Y20_N2
\Z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~2_combout\ = (\Chip2|Chip1|Chip2|Y~0_combout\) # ((\Chip2|Chip0|Chip2|Y~0_combout\) # ((\Z~1_combout\) # (\Chip1|Chip0|Chip2|Y~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip1|Chip2|Y~0_combout\,
	datab => \Chip2|Chip0|Chip2|Y~0_combout\,
	datac => \Z~1_combout\,
	datad => \Chip1|Chip0|Chip2|Y~2_combout\,
	combout => \Z~2_combout\);

-- Location: LCCOMB_X69_Y1_N10
\Z~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~3_combout\ = (\Chip2|Chip3|Chip2|Y~0_combout\) # ((\Chip2|Chip2|Chip2|Y~0_combout\) # ((\Chip3|Chip2|Y~0_combout\) # (\Z~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip3|Chip2|Y~0_combout\,
	datab => \Chip2|Chip2|Chip2|Y~0_combout\,
	datac => \Chip3|Chip2|Y~0_combout\,
	datad => \Z~2_combout\,
	combout => \Z~3_combout\);

-- Location: LCCOMB_X69_Y1_N16
\Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~0_combout\ = (\Chip2|Chip3|Chip1|Y~0_combout\) # ((\A[8]~input_o\ & \B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => \Chip2|Chip3|Chip1|Y~0_combout\,
	datad => \B[8]~input_o\,
	combout => \Z~0_combout\);

-- Location: LCCOMB_X69_Y1_N28
\Z~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~4_combout\ = (\Z~3_combout\) # ((\Z~0_combout\) # ((\Chip4|Chip1|Y~0_combout\) # (\Chip4|Chip2|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~3_combout\,
	datab => \Z~0_combout\,
	datac => \Chip4|Chip1|Y~0_combout\,
	datad => \Chip4|Chip2|Y~0_combout\,
	combout => \Z~4_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Cout9 <= \Cout9~output_o\;

ww_Z <= \Z~output_o\;
END structure;


