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

-- DATE "03/28/2022 00:23:35"

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

ENTITY 	Comp_9bit IS
    PORT (
	A : IN std_logic_vector(8 DOWNTO 0);
	B : IN std_logic_vector(8 DOWNTO 0);
	Gi : IN std_logic;
	Ei : IN std_logic;
	Li : IN std_logic;
	Gt : BUFFER std_logic;
	Eq : BUFFER std_logic;
	Lt : BUFFER std_logic
	);
END Comp_9bit;

-- Design Ports Information
-- Gt	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Eq	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lt	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ei	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gi	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Li	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Comp_9bit IS
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
SIGNAL ww_Gi : std_logic;
SIGNAL ww_Ei : std_logic;
SIGNAL ww_Li : std_logic;
SIGNAL ww_Gt : std_logic;
SIGNAL ww_Eq : std_logic;
SIGNAL ww_Lt : std_logic;
SIGNAL \Chip2|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip1|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip4|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip3|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip5|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip7|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip9|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip6|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip8|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gt~output_o\ : std_logic;
SIGNAL \Eq~output_o\ : std_logic;
SIGNAL \Lt~output_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Chip9|comb~0_combout\ : std_logic;
SIGNAL \Chip9|comb~1_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Chip8|comb~1_combout\ : std_logic;
SIGNAL \Chip8|comb~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Chip7|comb~0_combout\ : std_logic;
SIGNAL \Chip7|comb~1_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Chip6|comb~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Chip5|comb~0_combout\ : std_logic;
SIGNAL \Chip5|comb~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Chip4|comb~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Chip3|comb~0_combout\ : std_logic;
SIGNAL \Chip3|comb~1_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Chip2|comb~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Chip1|comb~0_combout\ : std_logic;
SIGNAL \Chip1|comb~1_combout\ : std_logic;
SIGNAL \Gi~input_o\ : std_logic;
SIGNAL \Chip1|process_0~0_combout\ : std_logic;
SIGNAL \Chip1|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip1|Gt~0_combout\ : std_logic;
SIGNAL \Chip1|Gt~combout\ : std_logic;
SIGNAL \Chip2|process_0~0_combout\ : std_logic;
SIGNAL \Chip2|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip2|Gt~0_combout\ : std_logic;
SIGNAL \Chip2|comb~1_combout\ : std_logic;
SIGNAL \Chip2|Gt~combout\ : std_logic;
SIGNAL \Chip3|process_0~0_combout\ : std_logic;
SIGNAL \Chip3|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip3|Gt~0_combout\ : std_logic;
SIGNAL \Chip3|Gt~combout\ : std_logic;
SIGNAL \Chip4|process_0~0_combout\ : std_logic;
SIGNAL \Chip4|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip4|Gt~0_combout\ : std_logic;
SIGNAL \Chip4|comb~1_combout\ : std_logic;
SIGNAL \Chip4|Gt~combout\ : std_logic;
SIGNAL \Chip5|process_0~0_combout\ : std_logic;
SIGNAL \Chip5|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip5|Gt~0_combout\ : std_logic;
SIGNAL \Chip5|Gt~combout\ : std_logic;
SIGNAL \Chip6|process_0~0_combout\ : std_logic;
SIGNAL \Chip6|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip6|Gt~0_combout\ : std_logic;
SIGNAL \Chip6|comb~0_combout\ : std_logic;
SIGNAL \Chip6|Gt~combout\ : std_logic;
SIGNAL \Chip7|process_0~0_combout\ : std_logic;
SIGNAL \Chip7|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip7|Gt~0_combout\ : std_logic;
SIGNAL \Chip7|Gt~combout\ : std_logic;
SIGNAL \Chip8|process_0~0_combout\ : std_logic;
SIGNAL \Chip8|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip8|Gt~0_combout\ : std_logic;
SIGNAL \Chip8|Gt~combout\ : std_logic;
SIGNAL \Chip9|process_0~0_combout\ : std_logic;
SIGNAL \Chip9|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip9|Gt~0_combout\ : std_logic;
SIGNAL \Chip9|Gt~combout\ : std_logic;
SIGNAL \Chip9|Eq~1_combout\ : std_logic;
SIGNAL \Chip9|Eq~0_combout\ : std_logic;
SIGNAL \Ei~input_o\ : std_logic;
SIGNAL \Chip9|Eq~combout\ : std_logic;
SIGNAL \Li~input_o\ : std_logic;
SIGNAL \Chip1|Lt~0_combout\ : std_logic;
SIGNAL \Chip1|Lt~combout\ : std_logic;
SIGNAL \Chip2|Lt~0_combout\ : std_logic;
SIGNAL \Chip2|Lt~combout\ : std_logic;
SIGNAL \Chip3|Lt~0_combout\ : std_logic;
SIGNAL \Chip3|Lt~combout\ : std_logic;
SIGNAL \Chip4|Lt~0_combout\ : std_logic;
SIGNAL \Chip4|Lt~combout\ : std_logic;
SIGNAL \Chip5|Lt~0_combout\ : std_logic;
SIGNAL \Chip5|Lt~combout\ : std_logic;
SIGNAL \Chip6|Lt~0_combout\ : std_logic;
SIGNAL \Chip6|Lt~combout\ : std_logic;
SIGNAL \Chip7|Lt~0_combout\ : std_logic;
SIGNAL \Chip7|Lt~combout\ : std_logic;
SIGNAL \Chip8|Lt~0_combout\ : std_logic;
SIGNAL \Chip8|Lt~combout\ : std_logic;
SIGNAL \Chip9|Lt~0_combout\ : std_logic;
SIGNAL \Chip9|Lt~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Gi <= Gi;
ww_Ei <= Ei;
ww_Li <= Li;
Gt <= ww_Gt;
Eq <= ww_Eq;
Lt <= ww_Lt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Chip2|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip2|process_0~0_combout\);

\Chip1|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip1|process_0~0_combout\);

\Chip4|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip4|process_0~0_combout\);

\Chip3|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip3|process_0~0_combout\);

\Chip5|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip5|process_0~0_combout\);

\Chip7|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip7|process_0~0_combout\);

\Chip9|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip9|process_0~0_combout\);

\Chip6|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip6|process_0~0_combout\);

\Chip8|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip8|process_0~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y0_N2
\Gt~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip9|Gt~combout\,
	devoe => ww_devoe,
	o => \Gt~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\Eq~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip9|Eq~combout\,
	devoe => ww_devoe,
	o => \Eq~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\Lt~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip9|Lt~combout\,
	devoe => ww_devoe,
	o => \Lt~output_o\);

-- Location: IOIBUF_X38_Y0_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X34_Y4_N24
\Chip9|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip9|comb~0_combout\ = (\A[8]~input_o\) # (!\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	combout => \Chip9|comb~0_combout\);

-- Location: LCCOMB_X34_Y4_N18
\Chip9|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip9|comb~1_combout\ = (\B[8]~input_o\) # (!\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	combout => \Chip9|comb~1_combout\);

-- Location: IOIBUF_X38_Y0_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X34_Y4_N30
\Chip8|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip8|comb~1_combout\ = (\B[7]~input_o\) # (!\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Chip8|comb~1_combout\);

-- Location: LCCOMB_X34_Y4_N4
\Chip8|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip8|comb~0_combout\ = (\A[7]~input_o\) # (!\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Chip8|comb~0_combout\);

-- Location: IOIBUF_X29_Y0_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X32_Y4_N12
\Chip7|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip7|comb~0_combout\ = (\A[6]~input_o\) # (!\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Chip7|comb~0_combout\);

-- Location: LCCOMB_X32_Y4_N30
\Chip7|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip7|comb~1_combout\ = (\B[6]~input_o\) # (!\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Chip7|comb~1_combout\);

-- Location: IOIBUF_X31_Y0_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X32_Y4_N18
\Chip6|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|comb~1_combout\ = (\B[5]~input_o\) # (!\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Chip6|comb~1_combout\);

-- Location: IOIBUF_X0_Y24_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X1_Y24_N12
\Chip5|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|comb~0_combout\ = (\A[4]~input_o\) # (!\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Chip5|comb~0_combout\);

-- Location: LCCOMB_X1_Y24_N30
\Chip5|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|comb~1_combout\ = (\B[4]~input_o\) # (!\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Chip5|comb~1_combout\);

-- Location: IOIBUF_X0_Y24_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N24
\Chip4|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|comb~0_combout\ = (\A[3]~input_o\) # (!\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Chip4|comb~0_combout\);

-- Location: IOIBUF_X0_Y28_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X1_Y28_N12
\Chip3|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|comb~0_combout\ = (\A[2]~input_o\) # (!\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Chip3|comb~0_combout\);

-- Location: LCCOMB_X1_Y28_N30
\Chip3|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|comb~1_combout\ = (\B[2]~input_o\) # (!\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Chip3|comb~1_combout\);

-- Location: IOIBUF_X0_Y27_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y28_N24
\Chip2|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|comb~0_combout\ = (\A[1]~input_o\) # (!\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Chip2|comb~0_combout\);

-- Location: IOIBUF_X0_Y31_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X1_Y32_N12
\Chip1|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|comb~0_combout\ = (\A[0]~input_o\) # (!\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Chip1|comb~0_combout\);

-- Location: LCCOMB_X1_Y32_N14
\Chip1|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|comb~1_combout\ = (\B[0]~input_o\) # (!\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Chip1|comb~1_combout\);

-- Location: IOIBUF_X0_Y32_N15
\Gi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Gi,
	o => \Gi~input_o\);

-- Location: LCCOMB_X1_Y32_N0
\Chip1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|process_0~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Chip1|process_0~0_combout\);

-- Location: CLKCTRL_G4
\Chip1|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip1|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip1|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y32_N10
\Chip1|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Gt~0_combout\ = (GLOBAL(\Chip1|process_0~0clkctrl_outclk\) & ((\Chip1|Gt~combout\))) # (!GLOBAL(\Chip1|process_0~0clkctrl_outclk\) & (\Gi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gi~input_o\,
	datac => \Chip1|process_0~0clkctrl_outclk\,
	datad => \Chip1|Gt~combout\,
	combout => \Chip1|Gt~0_combout\);

-- Location: LCCOMB_X1_Y32_N16
\Chip1|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Gt~combout\ = (\Chip1|comb~0_combout\ & ((\Chip1|Gt~0_combout\) # (!\Chip1|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|comb~0_combout\,
	datac => \Chip1|comb~1_combout\,
	datad => \Chip1|Gt~0_combout\,
	combout => \Chip1|Gt~combout\);

-- Location: LCCOMB_X1_Y28_N8
\Chip2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|process_0~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Chip2|process_0~0_combout\);

-- Location: CLKCTRL_G1
\Chip2|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip2|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip2|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y28_N22
\Chip2|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Gt~0_combout\ = (GLOBAL(\Chip2|process_0~0clkctrl_outclk\) & ((\Chip2|Gt~combout\))) # (!GLOBAL(\Chip2|process_0~0clkctrl_outclk\) & (\Chip1|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip1|Gt~combout\,
	datac => \Chip2|process_0~0clkctrl_outclk\,
	datad => \Chip2|Gt~combout\,
	combout => \Chip2|Gt~0_combout\);

-- Location: LCCOMB_X1_Y28_N2
\Chip2|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|comb~1_combout\ = (\B[1]~input_o\) # (!\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Chip2|comb~1_combout\);

-- Location: LCCOMB_X1_Y28_N20
\Chip2|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Gt~combout\ = (\Chip2|comb~0_combout\ & ((\Chip2|Gt~0_combout\) # (!\Chip2|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|comb~0_combout\,
	datac => \Chip2|Gt~0_combout\,
	datad => \Chip2|comb~1_combout\,
	combout => \Chip2|Gt~combout\);

-- Location: LCCOMB_X1_Y28_N26
\Chip3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|process_0~0_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Chip3|process_0~0_combout\);

-- Location: CLKCTRL_G3
\Chip3|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip3|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip3|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y28_N6
\Chip3|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Gt~0_combout\ = (GLOBAL(\Chip3|process_0~0clkctrl_outclk\) & ((\Chip3|Gt~combout\))) # (!GLOBAL(\Chip3|process_0~0clkctrl_outclk\) & (\Chip2|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Gt~combout\,
	datac => \Chip3|process_0~0clkctrl_outclk\,
	datad => \Chip3|Gt~combout\,
	combout => \Chip3|Gt~0_combout\);

-- Location: LCCOMB_X1_Y28_N28
\Chip3|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Gt~combout\ = (\Chip3|comb~0_combout\ & ((\Chip3|Gt~0_combout\) # (!\Chip3|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip3|comb~0_combout\,
	datac => \Chip3|comb~1_combout\,
	datad => \Chip3|Gt~0_combout\,
	combout => \Chip3|Gt~combout\);

-- Location: LCCOMB_X1_Y24_N8
\Chip4|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|process_0~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Chip4|process_0~0_combout\);

-- Location: CLKCTRL_G2
\Chip4|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip4|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip4|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y24_N22
\Chip4|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Gt~0_combout\ = (GLOBAL(\Chip4|process_0~0clkctrl_outclk\) & ((\Chip4|Gt~combout\))) # (!GLOBAL(\Chip4|process_0~0clkctrl_outclk\) & (\Chip3|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip3|Gt~combout\,
	datac => \Chip4|process_0~0clkctrl_outclk\,
	datad => \Chip4|Gt~combout\,
	combout => \Chip4|Gt~0_combout\);

-- Location: LCCOMB_X1_Y24_N18
\Chip4|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|comb~1_combout\ = (\B[3]~input_o\) # (!\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Chip4|comb~1_combout\);

-- Location: LCCOMB_X1_Y24_N20
\Chip4|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Gt~combout\ = (\Chip4|comb~0_combout\ & ((\Chip4|Gt~0_combout\) # (!\Chip4|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip4|comb~0_combout\,
	datac => \Chip4|Gt~0_combout\,
	datad => \Chip4|comb~1_combout\,
	combout => \Chip4|Gt~combout\);

-- Location: LCCOMB_X1_Y24_N2
\Chip5|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|process_0~0_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Chip5|process_0~0_combout\);

-- Location: CLKCTRL_G0
\Chip5|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip5|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip5|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y24_N6
\Chip5|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Gt~0_combout\ = (GLOBAL(\Chip5|process_0~0clkctrl_outclk\) & ((\Chip5|Gt~combout\))) # (!GLOBAL(\Chip5|process_0~0clkctrl_outclk\) & (\Chip4|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip4|Gt~combout\,
	datac => \Chip5|process_0~0clkctrl_outclk\,
	datad => \Chip5|Gt~combout\,
	combout => \Chip5|Gt~0_combout\);

-- Location: LCCOMB_X1_Y24_N28
\Chip5|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Gt~combout\ = (\Chip5|comb~0_combout\ & ((\Chip5|Gt~0_combout\) # (!\Chip5|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip5|comb~0_combout\,
	datac => \Chip5|comb~1_combout\,
	datad => \Chip5|Gt~0_combout\,
	combout => \Chip5|Gt~combout\);

-- Location: LCCOMB_X32_Y4_N24
\Chip6|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|process_0~0_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Chip6|process_0~0_combout\);

-- Location: CLKCTRL_G16
\Chip6|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip6|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip6|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X32_Y4_N22
\Chip6|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Gt~0_combout\ = (GLOBAL(\Chip6|process_0~0clkctrl_outclk\) & ((\Chip6|Gt~combout\))) # (!GLOBAL(\Chip6|process_0~0clkctrl_outclk\) & (\Chip5|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip5|Gt~combout\,
	datac => \Chip6|process_0~0clkctrl_outclk\,
	datad => \Chip6|Gt~combout\,
	combout => \Chip6|Gt~0_combout\);

-- Location: LCCOMB_X32_Y4_N8
\Chip6|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|comb~0_combout\ = (\A[5]~input_o\) # (!\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Chip6|comb~0_combout\);

-- Location: LCCOMB_X32_Y4_N28
\Chip6|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Gt~combout\ = (\Chip6|comb~0_combout\ & ((\Chip6|Gt~0_combout\) # (!\Chip6|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip6|comb~1_combout\,
	datac => \Chip6|Gt~0_combout\,
	datad => \Chip6|comb~0_combout\,
	combout => \Chip6|Gt~combout\);

-- Location: LCCOMB_X32_Y4_N2
\Chip7|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip7|process_0~0_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Chip7|process_0~0_combout\);

-- Location: CLKCTRL_G19
\Chip7|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip7|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip7|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X32_Y4_N6
\Chip7|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip7|Gt~0_combout\ = (GLOBAL(\Chip7|process_0~0clkctrl_outclk\) & ((\Chip7|Gt~combout\))) # (!GLOBAL(\Chip7|process_0~0clkctrl_outclk\) & (\Chip6|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip6|Gt~combout\,
	datac => \Chip7|process_0~0clkctrl_outclk\,
	datad => \Chip7|Gt~combout\,
	combout => \Chip7|Gt~0_combout\);

-- Location: LCCOMB_X32_Y4_N20
\Chip7|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip7|Gt~combout\ = (\Chip7|comb~0_combout\ & ((\Chip7|Gt~0_combout\) # (!\Chip7|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip7|comb~0_combout\,
	datac => \Chip7|comb~1_combout\,
	datad => \Chip7|Gt~0_combout\,
	combout => \Chip7|Gt~combout\);

-- Location: LCCOMB_X34_Y4_N8
\Chip8|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip8|process_0~0_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Chip8|process_0~0_combout\);

-- Location: CLKCTRL_G17
\Chip8|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip8|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip8|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X34_Y4_N26
\Chip8|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip8|Gt~0_combout\ = (GLOBAL(\Chip8|process_0~0clkctrl_outclk\) & ((\Chip8|Gt~combout\))) # (!GLOBAL(\Chip8|process_0~0clkctrl_outclk\) & (\Chip7|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip7|Gt~combout\,
	datac => \Chip8|process_0~0clkctrl_outclk\,
	datad => \Chip8|Gt~combout\,
	combout => \Chip8|Gt~0_combout\);

-- Location: LCCOMB_X34_Y4_N16
\Chip8|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip8|Gt~combout\ = (\Chip8|comb~0_combout\ & ((\Chip8|Gt~0_combout\) # (!\Chip8|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip8|comb~1_combout\,
	datab => \Chip8|comb~0_combout\,
	datac => \Chip8|Gt~0_combout\,
	combout => \Chip8|Gt~combout\);

-- Location: LCCOMB_X34_Y4_N12
\Chip9|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip9|process_0~0_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	combout => \Chip9|process_0~0_combout\);

-- Location: CLKCTRL_G18
\Chip9|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip9|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip9|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X34_Y4_N10
\Chip9|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip9|Gt~0_combout\ = (GLOBAL(\Chip9|process_0~0clkctrl_outclk\) & ((\Chip9|Gt~combout\))) # (!GLOBAL(\Chip9|process_0~0clkctrl_outclk\) & (\Chip8|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip8|Gt~combout\,
	datac => \Chip9|process_0~0clkctrl_outclk\,
	datad => \Chip9|Gt~combout\,
	combout => \Chip9|Gt~0_combout\);

-- Location: LCCOMB_X34_Y4_N0
\Chip9|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip9|Gt~combout\ = (\Chip9|comb~0_combout\ & ((\Chip9|Gt~0_combout\) # (!\Chip9|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip9|comb~0_combout\,
	datac => \Chip9|comb~1_combout\,
	datad => \Chip9|Gt~0_combout\,
	combout => \Chip9|Gt~combout\);

-- Location: LCCOMB_X34_Y4_N2
\Chip9|Eq~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip9|Eq~1_combout\ = (!\Chip5|process_0~0_combout\ & (!\Chip7|process_0~0_combout\ & (!\Chip8|process_0~0_combout\ & !\Chip6|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip5|process_0~0_combout\,
	datab => \Chip7|process_0~0_combout\,
	datac => \Chip8|process_0~0_combout\,
	datad => \Chip6|process_0~0_combout\,
	combout => \Chip9|Eq~1_combout\);

-- Location: LCCOMB_X1_Y32_N26
\Chip9|Eq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip9|Eq~0_combout\ = (!\Chip3|process_0~0_combout\ & (!\Chip4|process_0~0_combout\ & (!\Chip2|process_0~0_combout\ & !\Chip1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip3|process_0~0_combout\,
	datab => \Chip4|process_0~0_combout\,
	datac => \Chip2|process_0~0_combout\,
	datad => \Chip1|process_0~0_combout\,
	combout => \Chip9|Eq~0_combout\);

-- Location: IOIBUF_X35_Y0_N22
\Ei~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ei,
	o => \Ei~input_o\);

-- Location: LCCOMB_X34_Y4_N22
\Chip9|Eq\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip9|Eq~combout\ = (!\Chip9|process_0~0_combout\ & (\Chip9|Eq~1_combout\ & (\Chip9|Eq~0_combout\ & \Ei~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip9|process_0~0_combout\,
	datab => \Chip9|Eq~1_combout\,
	datac => \Chip9|Eq~0_combout\,
	datad => \Ei~input_o\,
	combout => \Chip9|Eq~combout\);

-- Location: IOIBUF_X0_Y33_N15
\Li~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Li,
	o => \Li~input_o\);

-- Location: LCCOMB_X1_Y32_N6
\Chip1|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Lt~0_combout\ = (GLOBAL(\Chip1|process_0~0clkctrl_outclk\) & ((\Chip1|Lt~combout\))) # (!GLOBAL(\Chip1|process_0~0clkctrl_outclk\) & (\Li~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Li~input_o\,
	datac => \Chip1|process_0~0clkctrl_outclk\,
	datad => \Chip1|Lt~combout\,
	combout => \Chip1|Lt~0_combout\);

-- Location: LCCOMB_X1_Y32_N28
\Chip1|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Lt~combout\ = (\Chip1|comb~1_combout\ & ((\Chip1|Lt~0_combout\) # (!\Chip1|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|comb~0_combout\,
	datac => \Chip1|comb~1_combout\,
	datad => \Chip1|Lt~0_combout\,
	combout => \Chip1|Lt~combout\);

-- Location: LCCOMB_X1_Y28_N18
\Chip2|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Lt~0_combout\ = (GLOBAL(\Chip2|process_0~0clkctrl_outclk\) & ((\Chip2|Lt~combout\))) # (!GLOBAL(\Chip2|process_0~0clkctrl_outclk\) & (\Chip1|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Lt~combout\,
	datac => \Chip2|process_0~0clkctrl_outclk\,
	datad => \Chip2|Lt~combout\,
	combout => \Chip2|Lt~0_combout\);

-- Location: LCCOMB_X1_Y28_N0
\Chip2|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Lt~combout\ = (\Chip2|comb~1_combout\ & ((\Chip2|Lt~0_combout\) # (!\Chip2|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|comb~1_combout\,
	datac => \Chip2|comb~0_combout\,
	datad => \Chip2|Lt~0_combout\,
	combout => \Chip2|Lt~combout\);

-- Location: LCCOMB_X1_Y28_N10
\Chip3|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Lt~0_combout\ = (GLOBAL(\Chip3|process_0~0clkctrl_outclk\) & ((\Chip3|Lt~combout\))) # (!GLOBAL(\Chip3|process_0~0clkctrl_outclk\) & (\Chip2|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Lt~combout\,
	datac => \Chip3|process_0~0clkctrl_outclk\,
	datad => \Chip3|Lt~combout\,
	combout => \Chip3|Lt~0_combout\);

-- Location: LCCOMB_X1_Y28_N16
\Chip3|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Lt~combout\ = (\Chip3|comb~1_combout\ & ((\Chip3|Lt~0_combout\) # (!\Chip3|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip3|comb~0_combout\,
	datac => \Chip3|comb~1_combout\,
	datad => \Chip3|Lt~0_combout\,
	combout => \Chip3|Lt~combout\);

-- Location: LCCOMB_X1_Y24_N26
\Chip4|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Lt~0_combout\ = (GLOBAL(\Chip4|process_0~0clkctrl_outclk\) & ((\Chip4|Lt~combout\))) # (!GLOBAL(\Chip4|process_0~0clkctrl_outclk\) & (\Chip3|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip3|Lt~combout\,
	datac => \Chip4|process_0~0clkctrl_outclk\,
	datad => \Chip4|Lt~combout\,
	combout => \Chip4|Lt~0_combout\);

-- Location: LCCOMB_X1_Y24_N16
\Chip4|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Lt~combout\ = (\Chip4|comb~1_combout\ & ((\Chip4|Lt~0_combout\) # (!\Chip4|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip4|comb~0_combout\,
	datac => \Chip4|Lt~0_combout\,
	datad => \Chip4|comb~1_combout\,
	combout => \Chip4|Lt~combout\);

-- Location: LCCOMB_X1_Y24_N10
\Chip5|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Lt~0_combout\ = (GLOBAL(\Chip5|process_0~0clkctrl_outclk\) & ((\Chip5|Lt~combout\))) # (!GLOBAL(\Chip5|process_0~0clkctrl_outclk\) & (\Chip4|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip4|Lt~combout\,
	datac => \Chip5|process_0~0clkctrl_outclk\,
	datad => \Chip5|Lt~combout\,
	combout => \Chip5|Lt~0_combout\);

-- Location: LCCOMB_X1_Y24_N0
\Chip5|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Lt~combout\ = (\Chip5|comb~1_combout\ & ((\Chip5|Lt~0_combout\) # (!\Chip5|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip5|comb~0_combout\,
	datac => \Chip5|comb~1_combout\,
	datad => \Chip5|Lt~0_combout\,
	combout => \Chip5|Lt~combout\);

-- Location: LCCOMB_X32_Y4_N26
\Chip6|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Lt~0_combout\ = (GLOBAL(\Chip6|process_0~0clkctrl_outclk\) & ((\Chip6|Lt~combout\))) # (!GLOBAL(\Chip6|process_0~0clkctrl_outclk\) & (\Chip5|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip5|Lt~combout\,
	datac => \Chip6|process_0~0clkctrl_outclk\,
	datad => \Chip6|Lt~combout\,
	combout => \Chip6|Lt~0_combout\);

-- Location: LCCOMB_X32_Y4_N0
\Chip6|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Lt~combout\ = (\Chip6|comb~1_combout\ & ((\Chip6|Lt~0_combout\) # (!\Chip6|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip6|comb~1_combout\,
	datac => \Chip6|Lt~0_combout\,
	datad => \Chip6|comb~0_combout\,
	combout => \Chip6|Lt~combout\);

-- Location: LCCOMB_X32_Y4_N10
\Chip7|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip7|Lt~0_combout\ = (GLOBAL(\Chip7|process_0~0clkctrl_outclk\) & ((\Chip7|Lt~combout\))) # (!GLOBAL(\Chip7|process_0~0clkctrl_outclk\) & (\Chip6|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip6|Lt~combout\,
	datac => \Chip7|process_0~0clkctrl_outclk\,
	datad => \Chip7|Lt~combout\,
	combout => \Chip7|Lt~0_combout\);

-- Location: LCCOMB_X32_Y4_N16
\Chip7|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip7|Lt~combout\ = (\Chip7|comb~1_combout\ & ((\Chip7|Lt~0_combout\) # (!\Chip7|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip7|comb~0_combout\,
	datac => \Chip7|comb~1_combout\,
	datad => \Chip7|Lt~0_combout\,
	combout => \Chip7|Lt~combout\);

-- Location: LCCOMB_X34_Y4_N14
\Chip8|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip8|Lt~0_combout\ = (GLOBAL(\Chip8|process_0~0clkctrl_outclk\) & ((\Chip8|Lt~combout\))) # (!GLOBAL(\Chip8|process_0~0clkctrl_outclk\) & (\Chip7|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip7|Lt~combout\,
	datac => \Chip8|process_0~0clkctrl_outclk\,
	datad => \Chip8|Lt~combout\,
	combout => \Chip8|Lt~0_combout\);

-- Location: LCCOMB_X34_Y4_N20
\Chip8|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip8|Lt~combout\ = (\Chip8|comb~1_combout\ & ((\Chip8|Lt~0_combout\) # (!\Chip8|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip8|comb~1_combout\,
	datab => \Chip8|comb~0_combout\,
	datac => \Chip8|Lt~0_combout\,
	combout => \Chip8|Lt~combout\);

-- Location: LCCOMB_X34_Y4_N6
\Chip9|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip9|Lt~0_combout\ = (GLOBAL(\Chip9|process_0~0clkctrl_outclk\) & ((\Chip9|Lt~combout\))) # (!GLOBAL(\Chip9|process_0~0clkctrl_outclk\) & (\Chip8|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip8|Lt~combout\,
	datac => \Chip9|process_0~0clkctrl_outclk\,
	datad => \Chip9|Lt~combout\,
	combout => \Chip9|Lt~0_combout\);

-- Location: LCCOMB_X34_Y4_N28
\Chip9|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip9|Lt~combout\ = (\Chip9|comb~1_combout\ & ((\Chip9|Lt~0_combout\) # (!\Chip9|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip9|comb~0_combout\,
	datac => \Chip9|comb~1_combout\,
	datad => \Chip9|Lt~0_combout\,
	combout => \Chip9|Lt~combout\);

ww_Gt <= \Gt~output_o\;

ww_Eq <= \Eq~output_o\;

ww_Lt <= \Lt~output_o\;
END structure;


