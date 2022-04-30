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

-- DATE "04/01/2022 00:19:51"

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

ENTITY 	Arith_9bit IS
    PORT (
	A : IN std_logic_vector(8 DOWNTO 0);
	B : IN std_logic_vector(8 DOWNTO 0);
	OP : IN std_logic_vector(1 DOWNTO 0);
	OV : BUFFER std_logic;
	Z : BUFFER std_logic;
	Cout : BUFFER std_logic;
	R : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END Arith_9bit;

-- Design Ports Information
-- OV	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[8]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Arith_9bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_OP : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_OV : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_R : std_logic_vector(8 DOWNTO 0);
SIGNAL \OV~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \R[4]~output_o\ : std_logic;
SIGNAL \R[5]~output_o\ : std_logic;
SIGNAL \R[6]~output_o\ : std_logic;
SIGNAL \R[7]~output_o\ : std_logic;
SIGNAL \R[8]~output_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \OP[0]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Chip1|Chip1|Chip1|Chip2|Y~0_combout\ : std_logic;
SIGNAL \Chip1|Chip1|Chip2|Chip2|Y~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Chip1|Chip1|Chip3|Chip2|Y~combout\ : std_logic;
SIGNAL \Chip1|Chip1|Chip4|Chip2|Y~combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Chip1|Chip1|Chip5|Chip2|Y~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Chip1|Chip1|Chip6|Chip2|Y~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Chip1|Chip1|Chip7|Chip2|Y~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Chip1|Chip1|Chip8|Chip2|Y~combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Chip1|Chip1|Chip9|Chip2|Y~combout\ : std_logic;
SIGNAL \OP[1]~input_o\ : std_logic;
SIGNAL \Chip1|Chip1|Chip8|Chip1|Y~0_combout\ : std_logic;
SIGNAL \Chip1|Chip1|Chip9|Chip2|Y~0_combout\ : std_logic;
SIGNAL \Chip1|Chip1|Chip7|Chip1|Y~0_combout\ : std_logic;
SIGNAL \Chip1|Chip1|Chip5|Chip1|Y~0_combout\ : std_logic;
SIGNAL \Chip1|Chip1|Chip6|Chip1|Y~0_combout\ : std_logic;
SIGNAL \Chip1|Chip1|Chip3|Chip1|Y~0_combout\ : std_logic;
SIGNAL \Chip1|Chip1|Chip4|Chip1|Y~0_combout\ : std_logic;
SIGNAL \Chip1|Chip1|Chip1|Chip1|Y~0_combout\ : std_logic;
SIGNAL \Chip1|Chip1|Chip2|Chip1|Y~0_combout\ : std_logic;
SIGNAL \Chip1|Chip1|Z~0_combout\ : std_logic;
SIGNAL \Chip1|Chip1|Z~1_combout\ : std_logic;
SIGNAL \Chip1|Chip1|Z~2_combout\ : std_logic;
SIGNAL \Chip1|OV~combout\ : std_logic;
SIGNAL \Chip1|Z~0_combout\ : std_logic;
SIGNAL \Chip1|W~combout\ : std_logic;
SIGNAL \Chip2|Chip9|comb~0_combout\ : std_logic;
SIGNAL \Chip2|Chip9|comb~1_combout\ : std_logic;
SIGNAL \Chip2|Chip9|process_0~0_combout\ : std_logic;
SIGNAL \Chip2|Chip8|comb~1_combout\ : std_logic;
SIGNAL \Chip2|Chip8|comb~0_combout\ : std_logic;
SIGNAL \Chip2|Chip7|comb~1_combout\ : std_logic;
SIGNAL \Chip2|Chip7|comb~0_combout\ : std_logic;
SIGNAL \Chip2|Chip6|comb~0_combout\ : std_logic;
SIGNAL \Chip2|Chip6|comb~1_combout\ : std_logic;
SIGNAL \Chip2|Chip6|process_0~0_combout\ : std_logic;
SIGNAL \Chip2|Chip5|comb~1_combout\ : std_logic;
SIGNAL \Chip2|Chip5|comb~0_combout\ : std_logic;
SIGNAL \Chip2|Chip4|comb~1_combout\ : std_logic;
SIGNAL \Chip2|Chip4|comb~0_combout\ : std_logic;
SIGNAL \Chip2|Chip4|process_0~0_combout\ : std_logic;
SIGNAL \Chip2|Chip3|comb~1_combout\ : std_logic;
SIGNAL \Chip2|Chip3|comb~0_combout\ : std_logic;
SIGNAL \Chip2|Chip2|comb~1_combout\ : std_logic;
SIGNAL \Chip2|Chip2|comb~0_combout\ : std_logic;
SIGNAL \Chip2|Chip1|comb~0_combout\ : std_logic;
SIGNAL \Chip2|Chip1|process_0~0_combout\ : std_logic;
SIGNAL \Chip2|Chip1|comb~1_combout\ : std_logic;
SIGNAL \Chip2|Chip1|Lt~combout\ : std_logic;
SIGNAL \Chip2|Chip2|process_0~0_combout\ : std_logic;
SIGNAL \Chip2|Chip2|Lt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip2|Lt~combout\ : std_logic;
SIGNAL \Chip2|Chip3|process_0~0_combout\ : std_logic;
SIGNAL \Chip2|Chip3|Lt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip3|Lt~combout\ : std_logic;
SIGNAL \Chip2|Chip4|Lt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip4|Lt~combout\ : std_logic;
SIGNAL \Chip2|Chip5|process_0~0_combout\ : std_logic;
SIGNAL \Chip2|Chip5|Lt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip5|Lt~combout\ : std_logic;
SIGNAL \Chip2|Chip6|Lt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip6|Lt~combout\ : std_logic;
SIGNAL \Chip2|Chip7|process_0~0_combout\ : std_logic;
SIGNAL \Chip2|Chip7|Lt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip7|Lt~combout\ : std_logic;
SIGNAL \Chip2|Chip8|process_0~0_combout\ : std_logic;
SIGNAL \Chip2|Chip8|Lt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip8|Lt~combout\ : std_logic;
SIGNAL \Chip2|Chip9|Lt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip9|Lt~combout\ : std_logic;
SIGNAL \W~combout\ : std_logic;
SIGNAL \Chip3|Y~9_combout\ : std_logic;
SIGNAL \R~12_combout\ : std_logic;
SIGNAL \R~13_combout\ : std_logic;
SIGNAL \R~14_combout\ : std_logic;
SIGNAL \Chip3|Y~6_combout\ : std_logic;
SIGNAL \Chip3|Y~7_combout\ : std_logic;
SIGNAL \Chip3|Y~8_combout\ : std_logic;
SIGNAL \Chip3|Y~10_combout\ : std_logic;
SIGNAL \R~15_combout\ : std_logic;
SIGNAL \R~16_combout\ : std_logic;
SIGNAL \R~17_combout\ : std_logic;
SIGNAL \Chip1|ALT_INV_W~combout\ : std_logic;
SIGNAL \Chip1|ALT_INV_Z~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_OP <= OP;
OV <= ww_OV;
Z <= ww_Z;
Cout <= ww_Cout;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Chip1|ALT_INV_W~combout\ <= NOT \Chip1|W~combout\;
\Chip1|ALT_INV_Z~0_combout\ <= NOT \Chip1|Z~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y55_N23
\OV~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip1|OV~combout\,
	devoe => ww_devoe,
	o => \OV~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip1|ALT_INV_Z~0_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip1|ALT_INV_W~combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip3|Y~9_combout\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R~12_combout\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R~13_combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R~14_combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip3|Y~10_combout\,
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R~15_combout\,
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R~16_combout\,
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R~17_combout\,
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\R[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip3|Y~9_combout\,
	devoe => ww_devoe,
	o => \R[8]~output_o\);

-- Location: IOIBUF_X115_Y42_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X115_Y51_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X115_Y49_N8
\OP[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(0),
	o => \OP[0]~input_o\);

-- Location: IOIBUF_X115_Y46_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X115_Y47_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X115_Y49_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X114_Y48_N24
\Chip1|Chip1|Chip1|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip1|Chip2|Y~0_combout\ = (\B[8]~input_o\ & (\A[0]~input_o\)) # (!\B[8]~input_o\ & ((\OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \OP[0]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Chip1|Chip1|Chip1|Chip2|Y~0_combout\);

-- Location: LCCOMB_X114_Y48_N30
\Chip1|Chip1|Chip2|Chip2|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip2|Chip2|Y~combout\ = (\A[1]~input_o\ & ((\Chip1|Chip1|Chip1|Chip2|Y~0_combout\) # (\OP[0]~input_o\ $ (\B[7]~input_o\)))) # (!\A[1]~input_o\ & (\Chip1|Chip1|Chip1|Chip2|Y~0_combout\ & (\OP[0]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[7]~input_o\,
	datad => \Chip1|Chip1|Chip1|Chip2|Y~0_combout\,
	combout => \Chip1|Chip1|Chip2|Chip2|Y~combout\);

-- Location: IOIBUF_X115_Y45_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X115_Y47_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X114_Y48_N0
\Chip1|Chip1|Chip3|Chip2|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip3|Chip2|Y~combout\ = (\Chip1|Chip1|Chip2|Chip2|Y~combout\ & ((\A[2]~input_o\) # (\OP[0]~input_o\ $ (\B[6]~input_o\)))) # (!\Chip1|Chip1|Chip2|Chip2|Y~combout\ & (\A[2]~input_o\ & (\OP[0]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip2|Chip2|Y~combout\,
	datab => \A[2]~input_o\,
	datac => \OP[0]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Chip1|Chip1|Chip3|Chip2|Y~combout\);

-- Location: LCCOMB_X114_Y48_N18
\Chip1|Chip1|Chip4|Chip2|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip4|Chip2|Y~combout\ = (\A[3]~input_o\ & ((\Chip1|Chip1|Chip3|Chip2|Y~combout\) # (\OP[0]~input_o\ $ (\B[5]~input_o\)))) # (!\A[3]~input_o\ & (\Chip1|Chip1|Chip3|Chip2|Y~combout\ & (\OP[0]~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Chip1|Chip1|Chip3|Chip2|Y~combout\,
	combout => \Chip1|Chip1|Chip4|Chip2|Y~combout\);

-- Location: IOIBUF_X115_Y55_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X115_Y51_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X114_Y51_N28
\Chip1|Chip1|Chip5|Chip2|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip5|Chip2|Y~combout\ = (\Chip1|Chip1|Chip4|Chip2|Y~combout\ & ((\A[4]~input_o\) # (\B[4]~input_o\ $ (\OP[0]~input_o\)))) # (!\Chip1|Chip1|Chip4|Chip2|Y~combout\ & (\A[4]~input_o\ & (\B[4]~input_o\ $ (\OP[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip4|Chip2|Y~combout\,
	datab => \B[4]~input_o\,
	datac => \OP[0]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Chip1|Chip1|Chip5|Chip2|Y~combout\);

-- Location: IOIBUF_X115_Y54_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X114_Y51_N10
\Chip1|Chip1|Chip6|Chip2|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip6|Chip2|Y~combout\ = (\Chip1|Chip1|Chip5|Chip2|Y~combout\ & ((\A[5]~input_o\) # (\B[3]~input_o\ $ (\OP[0]~input_o\)))) # (!\Chip1|Chip1|Chip5|Chip2|Y~combout\ & (\A[5]~input_o\ & (\B[3]~input_o\ $ (\OP[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Chip1|Chip1|Chip5|Chip2|Y~combout\,
	datac => \OP[0]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Chip1|Chip1|Chip6|Chip2|Y~combout\);

-- Location: IOIBUF_X115_Y45_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X114_Y48_N4
\Chip1|Chip1|Chip7|Chip2|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip7|Chip2|Y~combout\ = (\A[6]~input_o\ & ((\Chip1|Chip1|Chip6|Chip2|Y~combout\) # (\OP[0]~input_o\ $ (\B[2]~input_o\)))) # (!\A[6]~input_o\ & (\Chip1|Chip1|Chip6|Chip2|Y~combout\ & (\OP[0]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \Chip1|Chip1|Chip6|Chip2|Y~combout\,
	datac => \OP[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Chip1|Chip1|Chip7|Chip2|Y~combout\);

-- Location: IOIBUF_X115_Y53_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X115_Y57_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X114_Y52_N0
\Chip1|Chip1|Chip8|Chip2|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip8|Chip2|Y~combout\ = (\Chip1|Chip1|Chip7|Chip2|Y~combout\ & ((\A[7]~input_o\) # (\B[1]~input_o\ $ (\OP[0]~input_o\)))) # (!\Chip1|Chip1|Chip7|Chip2|Y~combout\ & (\A[7]~input_o\ & (\B[1]~input_o\ $ (\OP[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip7|Chip2|Y~combout\,
	datab => \B[1]~input_o\,
	datac => \OP[0]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Chip1|Chip1|Chip8|Chip2|Y~combout\);

-- Location: IOIBUF_X115_Y56_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X115_Y57_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X114_Y52_N26
\Chip1|Chip1|Chip9|Chip2|Y\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip9|Chip2|Y~combout\ = (\Chip1|Chip1|Chip8|Chip2|Y~combout\ & ((\A[8]~input_o\) # (\OP[0]~input_o\ $ (\B[0]~input_o\)))) # (!\Chip1|Chip1|Chip8|Chip2|Y~combout\ & (\A[8]~input_o\ & (\OP[0]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip8|Chip2|Y~combout\,
	datab => \A[8]~input_o\,
	datac => \OP[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Chip1|Chip1|Chip9|Chip2|Y~combout\);

-- Location: IOIBUF_X115_Y50_N1
\OP[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(1),
	o => \OP[1]~input_o\);

-- Location: LCCOMB_X114_Y52_N10
\Chip1|Chip1|Chip8|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip8|Chip1|Y~0_combout\ = \Chip1|Chip1|Chip7|Chip2|Y~combout\ $ (\B[1]~input_o\ $ (\OP[0]~input_o\ $ (\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip7|Chip2|Y~combout\,
	datab => \B[1]~input_o\,
	datac => \OP[0]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Chip1|Chip1|Chip8|Chip1|Y~0_combout\);

-- Location: LCCOMB_X114_Y52_N24
\Chip1|Chip1|Chip9|Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip9|Chip2|Y~0_combout\ = \A[8]~input_o\ $ (\OP[0]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \OP[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Chip1|Chip1|Chip9|Chip2|Y~0_combout\);

-- Location: LCCOMB_X114_Y48_N12
\Chip1|Chip1|Chip7|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip7|Chip1|Y~0_combout\ = \A[6]~input_o\ $ (\Chip1|Chip1|Chip6|Chip2|Y~combout\ $ (\OP[0]~input_o\ $ (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \Chip1|Chip1|Chip6|Chip2|Y~combout\,
	datac => \OP[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Chip1|Chip1|Chip7|Chip1|Y~0_combout\);

-- Location: LCCOMB_X114_Y51_N26
\Chip1|Chip1|Chip5|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip5|Chip1|Y~0_combout\ = \Chip1|Chip1|Chip4|Chip2|Y~combout\ $ (\B[4]~input_o\ $ (\OP[0]~input_o\ $ (\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip4|Chip2|Y~combout\,
	datab => \B[4]~input_o\,
	datac => \OP[0]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Chip1|Chip1|Chip5|Chip1|Y~0_combout\);

-- Location: LCCOMB_X114_Y51_N12
\Chip1|Chip1|Chip6|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip6|Chip1|Y~0_combout\ = \B[3]~input_o\ $ (\Chip1|Chip1|Chip5|Chip2|Y~combout\ $ (\OP[0]~input_o\ $ (\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Chip1|Chip1|Chip5|Chip2|Y~combout\,
	datac => \OP[0]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Chip1|Chip1|Chip6|Chip1|Y~0_combout\);

-- Location: LCCOMB_X114_Y48_N10
\Chip1|Chip1|Chip3|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip3|Chip1|Y~0_combout\ = \Chip1|Chip1|Chip2|Chip2|Y~combout\ $ (\A[2]~input_o\ $ (\OP[0]~input_o\ $ (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip2|Chip2|Y~combout\,
	datab => \A[2]~input_o\,
	datac => \OP[0]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Chip1|Chip1|Chip3|Chip1|Y~0_combout\);

-- Location: LCCOMB_X114_Y48_N20
\Chip1|Chip1|Chip4|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip4|Chip1|Y~0_combout\ = \OP[0]~input_o\ $ (\B[5]~input_o\ $ (\A[3]~input_o\ $ (\Chip1|Chip1|Chip3|Chip2|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Chip1|Chip1|Chip3|Chip2|Y~combout\,
	combout => \Chip1|Chip1|Chip4|Chip1|Y~0_combout\);

-- Location: LCCOMB_X114_Y48_N26
\Chip1|Chip1|Chip1|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip1|Chip1|Y~0_combout\ = \A[0]~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Chip1|Chip1|Chip1|Chip1|Y~0_combout\);

-- Location: LCCOMB_X114_Y48_N16
\Chip1|Chip1|Chip2|Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Chip2|Chip1|Y~0_combout\ = \OP[0]~input_o\ $ (\A[1]~input_o\ $ (\B[7]~input_o\ $ (\Chip1|Chip1|Chip1|Chip2|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[7]~input_o\,
	datad => \Chip1|Chip1|Chip1|Chip2|Y~0_combout\,
	combout => \Chip1|Chip1|Chip2|Chip1|Y~0_combout\);

-- Location: LCCOMB_X114_Y48_N2
\Chip1|Chip1|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Z~0_combout\ = (!\Chip1|Chip1|Chip3|Chip1|Y~0_combout\ & (!\Chip1|Chip1|Chip4|Chip1|Y~0_combout\ & (!\Chip1|Chip1|Chip1|Chip1|Y~0_combout\ & !\Chip1|Chip1|Chip2|Chip1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip3|Chip1|Y~0_combout\,
	datab => \Chip1|Chip1|Chip4|Chip1|Y~0_combout\,
	datac => \Chip1|Chip1|Chip1|Chip1|Y~0_combout\,
	datad => \Chip1|Chip1|Chip2|Chip1|Y~0_combout\,
	combout => \Chip1|Chip1|Z~0_combout\);

-- Location: LCCOMB_X114_Y48_N6
\Chip1|Chip1|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Z~1_combout\ = (!\Chip1|Chip1|Chip7|Chip1|Y~0_combout\ & (!\Chip1|Chip1|Chip5|Chip1|Y~0_combout\ & (!\Chip1|Chip1|Chip6|Chip1|Y~0_combout\ & \Chip1|Chip1|Z~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip7|Chip1|Y~0_combout\,
	datab => \Chip1|Chip1|Chip5|Chip1|Y~0_combout\,
	datac => \Chip1|Chip1|Chip6|Chip1|Y~0_combout\,
	datad => \Chip1|Chip1|Z~0_combout\,
	combout => \Chip1|Chip1|Z~1_combout\);

-- Location: LCCOMB_X114_Y52_N16
\Chip1|Chip1|Z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Z~2_combout\ = (!\Chip1|Chip1|Chip8|Chip1|Y~0_combout\ & (\Chip1|Chip1|Z~1_combout\ & (\Chip1|Chip1|Chip9|Chip2|Y~0_combout\ $ (!\Chip1|Chip1|Chip8|Chip2|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip8|Chip1|Y~0_combout\,
	datab => \Chip1|Chip1|Chip9|Chip2|Y~0_combout\,
	datac => \Chip1|Chip1|Z~1_combout\,
	datad => \Chip1|Chip1|Chip8|Chip2|Y~combout\,
	combout => \Chip1|Chip1|Z~2_combout\);

-- Location: LCCOMB_X114_Y52_N18
\Chip1|OV\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|OV~combout\ = (\OP[1]~input_o\ & (\Chip1|Chip1|Chip9|Chip2|Y~combout\ $ (\Chip1|Chip1|Z~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip9|Chip2|Y~combout\,
	datac => \OP[1]~input_o\,
	datad => \Chip1|Chip1|Z~2_combout\,
	combout => \Chip1|OV~combout\);

-- Location: LCCOMB_X114_Y52_N4
\Chip1|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Z~0_combout\ = (!\Chip1|Chip1|Z~2_combout\) # (!\OP[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[1]~input_o\,
	datad => \Chip1|Chip1|Z~2_combout\,
	combout => \Chip1|Z~0_combout\);

-- Location: LCCOMB_X114_Y52_N2
\Chip1|W\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|W~combout\ = (\OP[1]~input_o\) # (!\Chip1|Chip1|Z~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[1]~input_o\,
	datad => \Chip1|Chip1|Z~2_combout\,
	combout => \Chip1|W~combout\);

-- Location: LCCOMB_X114_Y52_N12
\Chip2|Chip9|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip9|comb~0_combout\ = (\B[8]~input_o\) # (!\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Chip2|Chip9|comb~0_combout\);

-- Location: LCCOMB_X114_Y52_N22
\Chip2|Chip9|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip9|comb~1_combout\ = (\A[8]~input_o\) # (!\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Chip2|Chip9|comb~1_combout\);

-- Location: LCCOMB_X114_Y52_N30
\Chip2|Chip9|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip9|process_0~0_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Chip2|Chip9|process_0~0_combout\);

-- Location: LCCOMB_X114_Y50_N10
\Chip2|Chip8|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip8|comb~1_combout\ = (\A[7]~input_o\) # (!\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Chip2|Chip8|comb~1_combout\);

-- Location: LCCOMB_X114_Y50_N8
\Chip2|Chip8|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip8|comb~0_combout\ = (\B[7]~input_o\) # (!\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Chip2|Chip8|comb~0_combout\);

-- Location: LCCOMB_X114_Y50_N30
\Chip2|Chip7|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip7|comb~1_combout\ = (\A[6]~input_o\) # (!\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Chip2|Chip7|comb~1_combout\);

-- Location: LCCOMB_X114_Y50_N4
\Chip2|Chip7|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip7|comb~0_combout\ = (\B[6]~input_o\) # (!\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Chip2|Chip7|comb~0_combout\);

-- Location: LCCOMB_X114_Y50_N12
\Chip2|Chip6|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip6|comb~0_combout\ = (\B[5]~input_o\) # (!\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Chip2|Chip6|comb~0_combout\);

-- Location: LCCOMB_X114_Y50_N22
\Chip2|Chip6|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip6|comb~1_combout\ = (\A[5]~input_o\) # (!\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Chip2|Chip6|comb~1_combout\);

-- Location: LCCOMB_X114_Y50_N0
\Chip2|Chip6|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip6|process_0~0_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Chip2|Chip6|process_0~0_combout\);

-- Location: LCCOMB_X114_Y51_N0
\Chip2|Chip5|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip5|comb~1_combout\ = (\A[4]~input_o\) # (!\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Chip2|Chip5|comb~1_combout\);

-- Location: LCCOMB_X114_Y51_N22
\Chip2|Chip5|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip5|comb~0_combout\ = (\B[4]~input_o\) # (!\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Chip2|Chip5|comb~0_combout\);

-- Location: LCCOMB_X114_Y51_N4
\Chip2|Chip4|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip4|comb~1_combout\ = (\A[3]~input_o\) # (!\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Chip2|Chip4|comb~1_combout\);

-- Location: LCCOMB_X114_Y51_N30
\Chip2|Chip4|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip4|comb~0_combout\ = (\B[3]~input_o\) # (!\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Chip2|Chip4|comb~0_combout\);

-- Location: LCCOMB_X114_Y51_N8
\Chip2|Chip4|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip4|process_0~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Chip2|Chip4|process_0~0_combout\);

-- Location: LCCOMB_X114_Y49_N28
\Chip2|Chip3|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip3|comb~1_combout\ = (\A[2]~input_o\) # (!\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Chip2|Chip3|comb~1_combout\);

-- Location: LCCOMB_X114_Y49_N4
\Chip2|Chip3|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip3|comb~0_combout\ = (\B[2]~input_o\) # (!\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Chip2|Chip3|comb~0_combout\);

-- Location: LCCOMB_X114_Y49_N10
\Chip2|Chip2|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip2|comb~1_combout\ = (\A[1]~input_o\) # (!\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Chip2|Chip2|comb~1_combout\);

-- Location: LCCOMB_X114_Y49_N8
\Chip2|Chip2|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip2|comb~0_combout\ = (\B[1]~input_o\) # (!\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Chip2|Chip2|comb~0_combout\);

-- Location: LCCOMB_X114_Y49_N0
\Chip2|Chip1|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip1|comb~0_combout\ = (\B[0]~input_o\) # (!\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Chip2|Chip1|comb~0_combout\);

-- Location: LCCOMB_X114_Y49_N14
\Chip2|Chip1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip1|process_0~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Chip2|Chip1|process_0~0_combout\);

-- Location: LCCOMB_X114_Y49_N20
\Chip2|Chip1|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip1|comb~1_combout\ = (\A[0]~input_o\) # (!\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Chip2|Chip1|comb~1_combout\);

-- Location: LCCOMB_X114_Y49_N22
\Chip2|Chip1|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip1|Lt~combout\ = (\Chip2|Chip1|comb~0_combout\ & (((\Chip2|Chip1|Lt~combout\ & \Chip2|Chip1|process_0~0_combout\)) # (!\Chip2|Chip1|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip1|Lt~combout\,
	datab => \Chip2|Chip1|comb~0_combout\,
	datac => \Chip2|Chip1|process_0~0_combout\,
	datad => \Chip2|Chip1|comb~1_combout\,
	combout => \Chip2|Chip1|Lt~combout\);

-- Location: LCCOMB_X114_Y49_N26
\Chip2|Chip2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip2|process_0~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Chip2|Chip2|process_0~0_combout\);

-- Location: LCCOMB_X114_Y49_N16
\Chip2|Chip2|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip2|Lt~0_combout\ = (\Chip2|Chip2|process_0~0_combout\ & ((\Chip2|Chip2|Lt~combout\))) # (!\Chip2|Chip2|process_0~0_combout\ & (\Chip2|Chip1|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip1|Lt~combout\,
	datac => \Chip2|Chip2|process_0~0_combout\,
	datad => \Chip2|Chip2|Lt~combout\,
	combout => \Chip2|Chip2|Lt~0_combout\);

-- Location: LCCOMB_X114_Y49_N18
\Chip2|Chip2|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip2|Lt~combout\ = (\Chip2|Chip2|comb~0_combout\ & ((\Chip2|Chip2|Lt~0_combout\) # (!\Chip2|Chip2|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip2|comb~1_combout\,
	datac => \Chip2|Chip2|comb~0_combout\,
	datad => \Chip2|Chip2|Lt~0_combout\,
	combout => \Chip2|Chip2|Lt~combout\);

-- Location: LCCOMB_X114_Y49_N2
\Chip2|Chip3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip3|process_0~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Chip2|Chip3|process_0~0_combout\);

-- Location: LCCOMB_X114_Y49_N12
\Chip2|Chip3|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip3|Lt~0_combout\ = (\Chip2|Chip3|process_0~0_combout\ & ((\Chip2|Chip3|Lt~combout\))) # (!\Chip2|Chip3|process_0~0_combout\ & (\Chip2|Chip2|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip2|Lt~combout\,
	datac => \Chip2|Chip3|process_0~0_combout\,
	datad => \Chip2|Chip3|Lt~combout\,
	combout => \Chip2|Chip3|Lt~0_combout\);

-- Location: LCCOMB_X114_Y49_N6
\Chip2|Chip3|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip3|Lt~combout\ = (\Chip2|Chip3|comb~0_combout\ & ((\Chip2|Chip3|Lt~0_combout\) # (!\Chip2|Chip3|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip3|comb~1_combout\,
	datac => \Chip2|Chip3|comb~0_combout\,
	datad => \Chip2|Chip3|Lt~0_combout\,
	combout => \Chip2|Chip3|Lt~combout\);

-- Location: LCCOMB_X114_Y51_N2
\Chip2|Chip4|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip4|Lt~0_combout\ = (\Chip2|Chip4|process_0~0_combout\ & ((\Chip2|Chip4|Lt~combout\))) # (!\Chip2|Chip4|process_0~0_combout\ & (\Chip2|Chip3|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip4|process_0~0_combout\,
	datac => \Chip2|Chip3|Lt~combout\,
	datad => \Chip2|Chip4|Lt~combout\,
	combout => \Chip2|Chip4|Lt~0_combout\);

-- Location: LCCOMB_X114_Y51_N24
\Chip2|Chip4|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip4|Lt~combout\ = (\Chip2|Chip4|comb~0_combout\ & ((\Chip2|Chip4|Lt~0_combout\) # (!\Chip2|Chip4|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip4|comb~1_combout\,
	datac => \Chip2|Chip4|comb~0_combout\,
	datad => \Chip2|Chip4|Lt~0_combout\,
	combout => \Chip2|Chip4|Lt~combout\);

-- Location: LCCOMB_X114_Y51_N14
\Chip2|Chip5|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip5|process_0~0_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Chip2|Chip5|process_0~0_combout\);

-- Location: LCCOMB_X114_Y51_N6
\Chip2|Chip5|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip5|Lt~0_combout\ = (\Chip2|Chip5|process_0~0_combout\ & ((\Chip2|Chip5|Lt~combout\))) # (!\Chip2|Chip5|process_0~0_combout\ & (\Chip2|Chip4|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip4|Lt~combout\,
	datac => \Chip2|Chip5|process_0~0_combout\,
	datad => \Chip2|Chip5|Lt~combout\,
	combout => \Chip2|Chip5|Lt~0_combout\);

-- Location: LCCOMB_X114_Y51_N20
\Chip2|Chip5|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip5|Lt~combout\ = (\Chip2|Chip5|comb~0_combout\ & ((\Chip2|Chip5|Lt~0_combout\) # (!\Chip2|Chip5|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip5|comb~1_combout\,
	datac => \Chip2|Chip5|comb~0_combout\,
	datad => \Chip2|Chip5|Lt~0_combout\,
	combout => \Chip2|Chip5|Lt~combout\);

-- Location: LCCOMB_X114_Y50_N18
\Chip2|Chip6|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip6|Lt~0_combout\ = (\Chip2|Chip6|process_0~0_combout\ & ((\Chip2|Chip6|Lt~combout\))) # (!\Chip2|Chip6|process_0~0_combout\ & (\Chip2|Chip5|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip6|process_0~0_combout\,
	datac => \Chip2|Chip5|Lt~combout\,
	datad => \Chip2|Chip6|Lt~combout\,
	combout => \Chip2|Chip6|Lt~0_combout\);

-- Location: LCCOMB_X114_Y50_N20
\Chip2|Chip6|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip6|Lt~combout\ = (\Chip2|Chip6|comb~0_combout\ & ((\Chip2|Chip6|Lt~0_combout\) # (!\Chip2|Chip6|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip6|comb~0_combout\,
	datac => \Chip2|Chip6|comb~1_combout\,
	datad => \Chip2|Chip6|Lt~0_combout\,
	combout => \Chip2|Chip6|Lt~combout\);

-- Location: LCCOMB_X114_Y50_N14
\Chip2|Chip7|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip7|process_0~0_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Chip2|Chip7|process_0~0_combout\);

-- Location: LCCOMB_X114_Y50_N2
\Chip2|Chip7|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip7|Lt~0_combout\ = (\Chip2|Chip7|process_0~0_combout\ & ((\Chip2|Chip7|Lt~combout\))) # (!\Chip2|Chip7|process_0~0_combout\ & (\Chip2|Chip6|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip6|Lt~combout\,
	datac => \Chip2|Chip7|process_0~0_combout\,
	datad => \Chip2|Chip7|Lt~combout\,
	combout => \Chip2|Chip7|Lt~0_combout\);

-- Location: LCCOMB_X114_Y50_N24
\Chip2|Chip7|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip7|Lt~combout\ = (\Chip2|Chip7|comb~0_combout\ & ((\Chip2|Chip7|Lt~0_combout\) # (!\Chip2|Chip7|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip7|comb~1_combout\,
	datac => \Chip2|Chip7|comb~0_combout\,
	datad => \Chip2|Chip7|Lt~0_combout\,
	combout => \Chip2|Chip7|Lt~combout\);

-- Location: LCCOMB_X114_Y50_N28
\Chip2|Chip8|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip8|process_0~0_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Chip2|Chip8|process_0~0_combout\);

-- Location: LCCOMB_X114_Y50_N6
\Chip2|Chip8|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip8|Lt~0_combout\ = (\Chip2|Chip8|process_0~0_combout\ & ((\Chip2|Chip8|Lt~combout\))) # (!\Chip2|Chip8|process_0~0_combout\ & (\Chip2|Chip7|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip7|Lt~combout\,
	datac => \Chip2|Chip8|process_0~0_combout\,
	datad => \Chip2|Chip8|Lt~combout\,
	combout => \Chip2|Chip8|Lt~0_combout\);

-- Location: LCCOMB_X114_Y50_N16
\Chip2|Chip8|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip8|Lt~combout\ = (\Chip2|Chip8|comb~0_combout\ & ((\Chip2|Chip8|Lt~0_combout\) # (!\Chip2|Chip8|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip8|comb~1_combout\,
	datac => \Chip2|Chip8|comb~0_combout\,
	datad => \Chip2|Chip8|Lt~0_combout\,
	combout => \Chip2|Chip8|Lt~combout\);

-- Location: LCCOMB_X114_Y52_N6
\Chip2|Chip9|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip9|Lt~0_combout\ = (\Chip2|Chip9|process_0~0_combout\ & ((\Chip2|Chip9|Lt~combout\))) # (!\Chip2|Chip9|process_0~0_combout\ & (\Chip2|Chip8|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip9|process_0~0_combout\,
	datac => \Chip2|Chip8|Lt~combout\,
	datad => \Chip2|Chip9|Lt~combout\,
	combout => \Chip2|Chip9|Lt~0_combout\);

-- Location: LCCOMB_X114_Y52_N20
\Chip2|Chip9|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip9|Lt~combout\ = (\Chip2|Chip9|comb~0_combout\ & ((\Chip2|Chip9|Lt~0_combout\) # (!\Chip2|Chip9|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip9|comb~0_combout\,
	datac => \Chip2|Chip9|comb~1_combout\,
	datad => \Chip2|Chip9|Lt~0_combout\,
	combout => \Chip2|Chip9|Lt~combout\);

-- Location: LCCOMB_X114_Y52_N8
W : cycloneive_lcell_comb
-- Equation(s):
-- \W~combout\ = (\OP[1]~input_o\) # (!\OP[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP[0]~input_o\,
	datac => \OP[1]~input_o\,
	combout => \W~combout\);

-- Location: LCCOMB_X114_Y49_N30
\Chip3|Y~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Y~9_combout\ = (\W~combout\ & ((\A[0]~input_o\ $ (\B[8]~input_o\)))) # (!\W~combout\ & (\Chip2|Chip9|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip9|Lt~combout\,
	datab => \A[0]~input_o\,
	datac => \B[8]~input_o\,
	datad => \W~combout\,
	combout => \Chip3|Y~9_combout\);

-- Location: LCCOMB_X114_Y48_N28
\R~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~12_combout\ = (\Chip1|Chip1|Chip4|Chip1|Y~0_combout\ & ((\OP[1]~input_o\) # (!\OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip1|Chip1|Chip4|Chip1|Y~0_combout\,
	datac => \OP[0]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \R~12_combout\);

-- Location: LCCOMB_X114_Y48_N14
\R~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~13_combout\ = (\Chip1|Chip1|Chip3|Chip1|Y~0_combout\ & ((\OP[1]~input_o\) # (!\OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip3|Chip1|Y~0_combout\,
	datac => \OP[0]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \R~13_combout\);

-- Location: LCCOMB_X114_Y48_N8
\R~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~14_combout\ = (\Chip1|Chip1|Chip2|Chip1|Y~0_combout\ & ((\OP[1]~input_o\) # (!\OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip1|Chip1|Chip2|Chip1|Y~0_combout\,
	datac => \OP[0]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \R~14_combout\);

-- Location: LCCOMB_X114_Y49_N24
\Chip3|Y~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Y~6_combout\ = (!\Chip2|Chip3|process_0~0_combout\ & (!\Chip2|Chip1|process_0~0_combout\ & (!\Chip2|Chip2|process_0~0_combout\ & !\W~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip3|process_0~0_combout\,
	datab => \Chip2|Chip1|process_0~0_combout\,
	datac => \Chip2|Chip2|process_0~0_combout\,
	datad => \W~combout\,
	combout => \Chip3|Y~6_combout\);

-- Location: LCCOMB_X114_Y50_N26
\Chip3|Y~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Y~7_combout\ = (!\Chip2|Chip4|process_0~0_combout\ & (!\Chip2|Chip8|process_0~0_combout\ & (!\Chip2|Chip7|process_0~0_combout\ & !\Chip2|Chip6|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip4|process_0~0_combout\,
	datab => \Chip2|Chip8|process_0~0_combout\,
	datac => \Chip2|Chip7|process_0~0_combout\,
	datad => \Chip2|Chip6|process_0~0_combout\,
	combout => \Chip3|Y~7_combout\);

-- Location: LCCOMB_X114_Y51_N16
\Chip3|Y~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Y~8_combout\ = (\Chip3|Y~6_combout\ & (!\Chip2|Chip5|process_0~0_combout\ & (!\Chip2|Chip9|process_0~0_combout\ & \Chip3|Y~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip3|Y~6_combout\,
	datab => \Chip2|Chip5|process_0~0_combout\,
	datac => \Chip2|Chip9|process_0~0_combout\,
	datad => \Chip3|Y~7_combout\,
	combout => \Chip3|Y~8_combout\);

-- Location: LCCOMB_X114_Y51_N18
\Chip3|Y~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Y~10_combout\ = (\Chip3|Y~8_combout\) # ((\Chip1|Chip1|Chip5|Chip1|Y~0_combout\ & ((\OP[1]~input_o\) # (!\OP[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip5|Chip1|Y~0_combout\,
	datab => \OP[0]~input_o\,
	datac => \OP[1]~input_o\,
	datad => \Chip3|Y~8_combout\,
	combout => \Chip3|Y~10_combout\);

-- Location: LCCOMB_X114_Y52_N28
\R~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~15_combout\ = (\Chip1|Chip1|Chip8|Chip1|Y~0_combout\ & ((\OP[1]~input_o\) # (!\OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip8|Chip1|Y~0_combout\,
	datab => \OP[0]~input_o\,
	datac => \OP[1]~input_o\,
	combout => \R~15_combout\);

-- Location: LCCOMB_X114_Y52_N14
\R~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~16_combout\ = (\Chip1|Chip1|Chip7|Chip1|Y~0_combout\ & ((\OP[1]~input_o\) # (!\OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Chip7|Chip1|Y~0_combout\,
	datab => \OP[0]~input_o\,
	datac => \OP[1]~input_o\,
	combout => \R~16_combout\);

-- Location: LCCOMB_X114_Y48_N22
\R~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~17_combout\ = (\Chip1|Chip1|Chip6|Chip1|Y~0_combout\ & ((\OP[1]~input_o\) # (!\OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip1|Chip1|Chip6|Chip1|Y~0_combout\,
	datac => \OP[0]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \R~17_combout\);

ww_OV <= \OV~output_o\;

ww_Z <= \Z~output_o\;

ww_Cout <= \Cout~output_o\;

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_R(4) <= \R[4]~output_o\;

ww_R(5) <= \R[5]~output_o\;

ww_R(6) <= \R[6]~output_o\;

ww_R(7) <= \R[7]~output_o\;

ww_R(8) <= \R[8]~output_o\;
END structure;


