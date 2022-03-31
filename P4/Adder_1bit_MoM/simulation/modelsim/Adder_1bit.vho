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

-- DATE "03/29/2022 18:15:52"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	Adder_1bit IS
    PORT (
	Ai : IN std_logic;
	Bi : IN std_logic;
	Ci : IN std_logic;
	So : BUFFER std_logic;
	Co : BUFFER std_logic
	);
END Adder_1bit;

-- Design Ports Information
-- So	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Co	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ci	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Adder_1bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ai : std_logic;
SIGNAL ww_Bi : std_logic;
SIGNAL ww_Ci : std_logic;
SIGNAL ww_So : std_logic;
SIGNAL ww_Co : std_logic;
SIGNAL \So~output_o\ : std_logic;
SIGNAL \Co~output_o\ : std_logic;
SIGNAL \Bi~input_o\ : std_logic;
SIGNAL \Ai~input_o\ : std_logic;
SIGNAL \Ci~input_o\ : std_logic;
SIGNAL \Chip2|Y~0_combout\ : std_logic;
SIGNAL \Chip1|Y~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Ai <= Ai;
ww_Bi <= Bi;
ww_Ci <= Ci;
So <= ww_So;
Co <= ww_Co;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y28_N16
\So~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip2|Y~0_combout\,
	devoe => ww_devoe,
	o => \So~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\Co~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip1|Y~0_combout\,
	devoe => ww_devoe,
	o => \Co~output_o\);

-- Location: IOIBUF_X0_Y29_N15
\Bi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi,
	o => \Bi~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\Ai~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai,
	o => \Ai~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\Ci~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ci,
	o => \Ci~input_o\);

-- Location: LCCOMB_X1_Y29_N16
\Chip2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Y~0_combout\ = \Bi~input_o\ $ (\Ai~input_o\ $ (\Ci~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi~input_o\,
	datab => \Ai~input_o\,
	datad => \Ci~input_o\,
	combout => \Chip2|Y~0_combout\);

-- Location: LCCOMB_X1_Y29_N18
\Chip1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Y~0_combout\ = (\Bi~input_o\ & ((\Ai~input_o\) # (\Ci~input_o\))) # (!\Bi~input_o\ & (\Ai~input_o\ & \Ci~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi~input_o\,
	datab => \Ai~input_o\,
	datad => \Ci~input_o\,
	combout => \Chip1|Y~0_combout\);

ww_So <= \So~output_o\;

ww_Co <= \Co~output_o\;
END structure;


