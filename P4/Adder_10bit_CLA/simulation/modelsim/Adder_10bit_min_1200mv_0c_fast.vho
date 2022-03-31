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

-- DATE "03/29/2022 18:50:03"

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
	S : BUFFER std_logic_vector(9 DOWNTO 0);
	Cout : BUFFER std_logic;
	Cout9 : BUFFER std_logic;
	Z : BUFFER std_logic
	);
END Adder_10bit;

-- Design Ports Information
-- S[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout9	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Chip1|chip_1|Chip2|Y~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Chip1|chip_5|P1~0_combout\ : std_logic;
SIGNAL \Chip1|chip_2|Chip2|Y~0_combout\ : std_logic;
SIGNAL \Chip1|chip_5|C3~0_combout\ : std_logic;
SIGNAL \Chip1|chip_5|C2~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Chip1|chip_5|P2~0_combout\ : std_logic;
SIGNAL \Chip1|chip_3|Chip2|Y~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Chip1|chip_5|P3~0_combout\ : std_logic;
SIGNAL \Chip1|chip_4|Chip2|Y~0_combout\ : std_logic;
SIGNAL \Chip1|chip_4|Chip2|Y~1_combout\ : std_logic;
SIGNAL \Chip1|chip_4|Chip2|Y~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Chip1|chip_5|C4~1_combout\ : std_logic;
SIGNAL \Chip1|chip_5|C4~2_combout\ : std_logic;
SIGNAL \Chip1|chip_5|C4~3_combout\ : std_logic;
SIGNAL \Chip1|chip_5|C4~0_combout\ : std_logic;
SIGNAL \Chip2|chip_1|Chip2|Y~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Chip2|chip_5|C1~0_combout\ : std_logic;
SIGNAL \Chip2|chip_2|Chip2|Y~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Chip2|chip_5|C2~0_combout\ : std_logic;
SIGNAL \Chip2|chip_5|C2~1_combout\ : std_logic;
SIGNAL \Chip2|chip_5|C2~2_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Chip2|chip_3|Chip2|Y~2_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Chip2|chip_5|P3~0_combout\ : std_logic;
SIGNAL \Chip2|chip_4|Chip2|Y~0_combout\ : std_logic;
SIGNAL \Chip2|chip_4|Chip2|Y~1_combout\ : std_logic;
SIGNAL \Chip2|chip_5|P2~0_combout\ : std_logic;
SIGNAL \Chip2|chip_4|Chip2|Y~2_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Chip2|chip_5|C4~7_combout\ : std_logic;
SIGNAL \Chip2|chip_5|C4~4_combout\ : std_logic;
SIGNAL \Chip2|chip_5|C4~5_combout\ : std_logic;
SIGNAL \Chip2|chip_5|C4~6_combout\ : std_logic;
SIGNAL \Chip3|Chip2|Y~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Chip3|Chip1|Y~0_combout\ : std_logic;
SIGNAL \Chip4|Chip2|Y~0_combout\ : std_logic;
SIGNAL \Chip4|Chip1|Y~0_combout\ : std_logic;
SIGNAL \Z~0_combout\ : std_logic;
SIGNAL \Z~1_combout\ : std_logic;
SIGNAL \Z~2_combout\ : std_logic;
SIGNAL \Z~3_combout\ : std_logic;
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

-- Location: IOOBUF_X0_Y50_N16
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip1|chip_1|Chip2|Y~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip1|chip_2|Chip2|Y~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip1|chip_3|Chip2|Y~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip1|chip_4|Chip2|Y~2_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip2|chip_1|Chip2|Y~0_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip2|chip_2|Chip2|Y~0_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip2|chip_3|Chip2|Y~2_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip2|chip_4|Chip2|Y~2_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
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

-- Location: IOOBUF_X0_Y55_N9
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

-- Location: IOOBUF_X0_Y55_N23
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

-- Location: IOOBUF_X0_Y51_N16
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

-- Location: IOOBUF_X0_Y52_N23
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

-- Location: IOIBUF_X0_Y44_N22
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X1_Y47_N8
\Chip1|chip_1|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_1|Chip2|Y~0_combout\ = \Cin~input_o\ $ (\A[0]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Chip1|chip_1|Chip2|Y~0_combout\);

-- Location: IOIBUF_X0_Y44_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y47_N18
\Chip1|chip_5|P1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_5|P1~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Chip1|chip_5|P1~0_combout\);

-- Location: LCCOMB_X1_Y47_N4
\Chip1|chip_2|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_2|Chip2|Y~0_combout\ = \Chip1|chip_5|P1~0_combout\ $ (((\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Chip1|chip_5|P1~0_combout\,
	combout => \Chip1|chip_2|Chip2|Y~0_combout\);

-- Location: LCCOMB_X1_Y47_N6
\Chip1|chip_5|C3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_5|C3~0_combout\ = (\Cin~input_o\ & (\A[0]~input_o\ $ (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Chip1|chip_5|C3~0_combout\);

-- Location: LCCOMB_X1_Y47_N24
\Chip1|chip_5|C2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_5|C2~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Chip1|chip_5|C2~0_combout\);

-- Location: IOIBUF_X0_Y44_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X1_Y47_N26
\Chip1|chip_5|P2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_5|P2~0_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Chip1|chip_5|P2~0_combout\);

-- Location: LCCOMB_X1_Y47_N12
\Chip1|chip_3|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_3|Chip2|Y~0_combout\ = \Chip1|chip_5|P2~0_combout\ $ (((\Chip1|chip_5|C2~0_combout\) # ((\Chip1|chip_5|C3~0_combout\ & \Chip1|chip_5|P1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|chip_5|C3~0_combout\,
	datab => \Chip1|chip_5|C2~0_combout\,
	datac => \Chip1|chip_5|P2~0_combout\,
	datad => \Chip1|chip_5|P1~0_combout\,
	combout => \Chip1|chip_3|Chip2|Y~0_combout\);

-- Location: IOIBUF_X0_Y42_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X1_Y47_N30
\Chip1|chip_5|P3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_5|P3~0_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	combout => \Chip1|chip_5|P3~0_combout\);

-- Location: LCCOMB_X1_Y47_N16
\Chip1|chip_4|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_4|Chip2|Y~0_combout\ = (\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Chip1|chip_4|Chip2|Y~0_combout\);

-- Location: LCCOMB_X1_Y47_N10
\Chip1|chip_4|Chip2|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_4|Chip2|Y~1_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # (\Chip1|chip_4|Chip2|Y~0_combout\))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & \Chip1|chip_4|Chip2|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => \Chip1|chip_4|Chip2|Y~0_combout\,
	combout => \Chip1|chip_4|Chip2|Y~1_combout\);

-- Location: LCCOMB_X1_Y47_N28
\Chip1|chip_4|Chip2|Y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_4|Chip2|Y~2_combout\ = \Chip1|chip_5|P3~0_combout\ $ (((\A[2]~input_o\ & ((\B[2]~input_o\) # (\Chip1|chip_4|Chip2|Y~1_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \Chip1|chip_4|Chip2|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|chip_5|P3~0_combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Chip1|chip_4|Chip2|Y~1_combout\,
	combout => \Chip1|chip_4|Chip2|Y~2_combout\);

-- Location: IOIBUF_X0_Y53_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X1_Y47_N0
\Chip1|chip_5|C4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_5|C4~1_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Chip1|chip_5|C4~1_combout\);

-- Location: LCCOMB_X1_Y47_N2
\Chip1|chip_5|C4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_5|C4~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Chip1|chip_5|C4~2_combout\);

-- Location: LCCOMB_X1_Y47_N20
\Chip1|chip_5|C4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_5|C4~3_combout\ = (\Chip1|chip_5|C4~1_combout\) # ((\Chip1|chip_5|P2~0_combout\ & (\Chip1|chip_5|P3~0_combout\ & \Chip1|chip_5|C4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|chip_5|P2~0_combout\,
	datab => \Chip1|chip_5|C4~1_combout\,
	datac => \Chip1|chip_5|P3~0_combout\,
	datad => \Chip1|chip_5|C4~2_combout\,
	combout => \Chip1|chip_5|C4~3_combout\);

-- Location: LCCOMB_X1_Y47_N14
\Chip1|chip_5|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|chip_5|C4~0_combout\ = (\Chip1|chip_5|P2~0_combout\ & (\Chip1|chip_5|P1~0_combout\ & (\Chip1|chip_5|P3~0_combout\ & \Chip1|chip_5|C3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|chip_5|P2~0_combout\,
	datab => \Chip1|chip_5|P1~0_combout\,
	datac => \Chip1|chip_5|P3~0_combout\,
	datad => \Chip1|chip_5|C3~0_combout\,
	combout => \Chip1|chip_5|C4~0_combout\);

-- Location: LCCOMB_X1_Y49_N16
\Chip2|chip_1|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_1|Chip2|Y~0_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (((\Chip1|chip_5|C4~3_combout\) # (\Chip1|chip_5|C4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Chip1|chip_5|C4~3_combout\,
	datad => \Chip1|chip_5|C4~0_combout\,
	combout => \Chip2|chip_1|Chip2|Y~0_combout\);

-- Location: IOIBUF_X0_Y45_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X1_Y49_N10
\Chip2|chip_5|C1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_5|C1~0_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # ((\Chip1|chip_5|C4~3_combout\) # (\Chip1|chip_5|C4~0_combout\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & ((\Chip1|chip_5|C4~3_combout\) # (\Chip1|chip_5|C4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Chip1|chip_5|C4~3_combout\,
	datad => \Chip1|chip_5|C4~0_combout\,
	combout => \Chip2|chip_5|C1~0_combout\);

-- Location: LCCOMB_X1_Y49_N4
\Chip2|chip_2|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_2|Chip2|Y~0_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ (\Chip2|chip_5|C1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Chip2|chip_5|C1~0_combout\,
	combout => \Chip2|chip_2|Chip2|Y~0_combout\);

-- Location: IOIBUF_X0_Y52_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X1_Y49_N14
\Chip2|chip_5|C2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_5|C2~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\A[5]~input_o\ & (\A[4]~input_o\ & (\B[5]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Chip2|chip_5|C2~0_combout\);

-- Location: LCCOMB_X1_Y49_N0
\Chip2|chip_5|C2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_5|C2~1_combout\ = (\A[4]~input_o\ & (!\B[4]~input_o\ & (\A[5]~input_o\ $ (\B[5]~input_o\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & (\A[5]~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Chip2|chip_5|C2~1_combout\);

-- Location: LCCOMB_X1_Y49_N26
\Chip2|chip_5|C2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_5|C2~2_combout\ = (\Chip2|chip_5|C2~1_combout\ & ((\Chip1|chip_5|C4~0_combout\) # (\Chip1|chip_5|C4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|chip_5|C4~0_combout\,
	datac => \Chip1|chip_5|C4~3_combout\,
	datad => \Chip2|chip_5|C2~1_combout\,
	combout => \Chip2|chip_5|C2~2_combout\);

-- Location: IOIBUF_X0_Y46_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X1_Y49_N12
\Chip2|chip_3|Chip2|Y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_3|Chip2|Y~2_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\ $ (((\Chip2|chip_5|C2~0_combout\) # (\Chip2|chip_5|C2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \Chip2|chip_5|C2~0_combout\,
	datac => \Chip2|chip_5|C2~2_combout\,
	datad => \B[6]~input_o\,
	combout => \Chip2|chip_3|Chip2|Y~2_combout\);

-- Location: IOIBUF_X0_Y50_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X1_Y50_N16
\Chip2|chip_5|P3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_5|P3~0_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Chip2|chip_5|P3~0_combout\);

-- Location: LCCOMB_X1_Y49_N6
\Chip2|chip_4|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_4|Chip2|Y~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\A[5]~input_o\ & (\A[4]~input_o\ & (\B[5]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Chip2|chip_4|Chip2|Y~0_combout\);

-- Location: LCCOMB_X1_Y49_N24
\Chip2|chip_4|Chip2|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_4|Chip2|Y~1_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # (\Chip2|chip_4|Chip2|Y~0_combout\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & \Chip2|chip_4|Chip2|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \Chip2|chip_4|Chip2|Y~0_combout\,
	combout => \Chip2|chip_4|Chip2|Y~1_combout\);

-- Location: LCCOMB_X1_Y49_N28
\Chip2|chip_5|P2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_5|P2~0_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	combout => \Chip2|chip_5|P2~0_combout\);

-- Location: LCCOMB_X1_Y49_N18
\Chip2|chip_4|Chip2|Y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_4|Chip2|Y~2_combout\ = \Chip2|chip_5|P3~0_combout\ $ (((\Chip2|chip_4|Chip2|Y~1_combout\) # ((\Chip2|chip_5|C2~2_combout\ & \Chip2|chip_5|P2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|chip_5|P3~0_combout\,
	datab => \Chip2|chip_4|Chip2|Y~1_combout\,
	datac => \Chip2|chip_5|C2~2_combout\,
	datad => \Chip2|chip_5|P2~0_combout\,
	combout => \Chip2|chip_4|Chip2|Y~2_combout\);

-- Location: IOIBUF_X0_Y58_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X1_Y49_N22
\Chip2|chip_5|C4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_5|C4~7_combout\ = (\Chip2|chip_5|C2~2_combout\ & (\Chip2|chip_5|P3~0_combout\ & (\A[6]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \Chip2|chip_5|C2~2_combout\,
	datad => \Chip2|chip_5|P3~0_combout\,
	combout => \Chip2|chip_5|C4~7_combout\);

-- Location: LCCOMB_X1_Y50_N26
\Chip2|chip_5|C4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_5|C4~4_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\A[7]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Chip2|chip_5|C4~4_combout\);

-- Location: LCCOMB_X1_Y49_N20
\Chip2|chip_5|C4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_5|C4~5_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\A[5]~input_o\ & (\A[4]~input_o\ & (\B[5]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Chip2|chip_5|C4~5_combout\);

-- Location: LCCOMB_X1_Y49_N30
\Chip2|chip_5|C4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|chip_5|C4~6_combout\ = (\Chip2|chip_5|C4~4_combout\) # ((\Chip2|chip_5|P3~0_combout\ & (\Chip2|chip_5|P2~0_combout\ & \Chip2|chip_5|C4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|chip_5|P3~0_combout\,
	datab => \Chip2|chip_5|P2~0_combout\,
	datac => \Chip2|chip_5|C4~4_combout\,
	datad => \Chip2|chip_5|C4~5_combout\,
	combout => \Chip2|chip_5|C4~6_combout\);

-- Location: LCCOMB_X1_Y51_N8
\Chip3|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip2|Y~0_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (((\Chip2|chip_5|C4~7_combout\) # (\Chip2|chip_5|C4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \Chip2|chip_5|C4~7_combout\,
	datad => \Chip2|chip_5|C4~6_combout\,
	combout => \Chip3|Chip2|Y~0_combout\);

-- Location: IOIBUF_X0_Y59_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X1_Y51_N18
\Chip3|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip1|Y~0_combout\ = (\A[8]~input_o\ & ((\B[8]~input_o\) # ((\Chip2|chip_5|C4~7_combout\) # (\Chip2|chip_5|C4~6_combout\)))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & ((\Chip2|chip_5|C4~7_combout\) # (\Chip2|chip_5|C4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \Chip2|chip_5|C4~7_combout\,
	datad => \Chip2|chip_5|C4~6_combout\,
	combout => \Chip3|Chip1|Y~0_combout\);

-- Location: LCCOMB_X1_Y51_N12
\Chip4|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip2|Y~0_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\ $ (\Chip3|Chip1|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	datad => \Chip3|Chip1|Y~0_combout\,
	combout => \Chip4|Chip2|Y~0_combout\);

-- Location: LCCOMB_X1_Y51_N6
\Chip4|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip1|Y~0_combout\ = (\A[9]~input_o\ & ((\B[9]~input_o\) # (\Chip3|Chip1|Y~0_combout\))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & \Chip3|Chip1|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	datad => \Chip3|Chip1|Y~0_combout\,
	combout => \Chip4|Chip1|Y~0_combout\);

-- Location: LCCOMB_X1_Y49_N8
\Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~0_combout\ = (\Chip1|chip_5|C4~0_combout\) # ((\Chip1|chip_4|Chip2|Y~2_combout\) # ((\Chip1|chip_5|C4~3_combout\) # (\Chip2|chip_1|Chip2|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|chip_5|C4~0_combout\,
	datab => \Chip1|chip_4|Chip2|Y~2_combout\,
	datac => \Chip1|chip_5|C4~3_combout\,
	datad => \Chip2|chip_1|Chip2|Y~0_combout\,
	combout => \Z~0_combout\);

-- Location: LCCOMB_X1_Y51_N24
\Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~1_combout\ = (\Chip1|chip_2|Chip2|Y~0_combout\) # ((\Chip2|chip_2|Chip2|Y~0_combout\) # ((\Chip1|chip_1|Chip2|Y~0_combout\) # (\Chip3|Chip1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|chip_2|Chip2|Y~0_combout\,
	datab => \Chip2|chip_2|Chip2|Y~0_combout\,
	datac => \Chip1|chip_1|Chip2|Y~0_combout\,
	datad => \Chip3|Chip1|Y~0_combout\,
	combout => \Z~1_combout\);

-- Location: LCCOMB_X1_Y51_N10
\Z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~2_combout\ = (\Chip4|Chip1|Y~0_combout\) # ((\Z~1_combout\) # ((\Chip1|chip_3|Chip2|Y~0_combout\) # (\Chip4|Chip2|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip4|Chip1|Y~0_combout\,
	datab => \Z~1_combout\,
	datac => \Chip1|chip_3|Chip2|Y~0_combout\,
	datad => \Chip4|Chip2|Y~0_combout\,
	combout => \Z~2_combout\);

-- Location: LCCOMB_X1_Y49_N2
\Z~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~3_combout\ = (\Chip2|chip_3|Chip2|Y~2_combout\) # ((\Chip2|chip_4|Chip2|Y~2_combout\) # ((\Z~0_combout\) # (\Z~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|chip_3|Chip2|Y~2_combout\,
	datab => \Chip2|chip_4|Chip2|Y~2_combout\,
	datac => \Z~0_combout\,
	datad => \Z~2_combout\,
	combout => \Z~3_combout\);

-- Location: LCCOMB_X1_Y51_N28
\Z~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~4_combout\ = (\Chip2|chip_5|C4~6_combout\) # ((\Z~3_combout\) # ((\Chip2|chip_5|C4~7_combout\) # (\Chip3|Chip2|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|chip_5|C4~6_combout\,
	datab => \Z~3_combout\,
	datac => \Chip2|chip_5|C4~7_combout\,
	datad => \Chip3|Chip2|Y~0_combout\,
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


