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

-- DATE "03/28/2022 00:17:43"

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

ENTITY 	Comp_1bit IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	Gi : IN std_logic;
	Ei : IN std_logic;
	Li : IN std_logic;
	Gt : OUT std_logic;
	Eq : OUT std_logic;
	Lt : OUT std_logic
	);
END Comp_1bit;

-- Design Ports Information
-- Gt	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Eq	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lt	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ei	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gi	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Li	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Comp_1bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Gi : std_logic;
SIGNAL ww_Ei : std_logic;
SIGNAL ww_Li : std_logic;
SIGNAL ww_Gt : std_logic;
SIGNAL ww_Eq : std_logic;
SIGNAL ww_Lt : std_logic;
SIGNAL \process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gt~output_o\ : std_logic;
SIGNAL \Eq~output_o\ : std_logic;
SIGNAL \Lt~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \Gi~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Gt$latch~0_combout\ : std_logic;
SIGNAL \Gt$latch~combout\ : std_logic;
SIGNAL \Ei~input_o\ : std_logic;
SIGNAL \Eq$latch~combout\ : std_logic;
SIGNAL \Li~input_o\ : std_logic;
SIGNAL \Lt$latch~0_combout\ : std_logic;
SIGNAL \Lt$latch~combout\ : std_logic;

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

\process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_0~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X49_Y73_N23
\Gt~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gt$latch~combout\,
	devoe => ww_devoe,
	o => \Gt~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\Eq~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Eq$latch~combout\,
	devoe => ww_devoe,
	o => \Eq~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Lt~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Lt$latch~combout\,
	devoe => ww_devoe,
	o => \Lt~output_o\);

-- Location: IOIBUF_X52_Y73_N15
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X52_Y72_N12
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\A~input_o\) # (!\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~input_o\,
	datad => \B~input_o\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X52_Y72_N14
\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\B~input_o\) # (!\A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~input_o\,
	datad => \B~input_o\,
	combout => \comb~1_combout\);

-- Location: IOIBUF_X52_Y73_N8
\Gi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Gi,
	o => \Gi~input_o\);

-- Location: LCCOMB_X52_Y72_N26
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = \A~input_o\ $ (\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~input_o\,
	datad => \B~input_o\,
	combout => \process_0~0_combout\);

-- Location: CLKCTRL_G13
\process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X52_Y72_N10
\Gt$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gt$latch~0_combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & ((\Gt$latch~combout\))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (\Gi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gi~input_o\,
	datac => \process_0~0clkctrl_outclk\,
	datad => \Gt$latch~combout\,
	combout => \Gt$latch~0_combout\);

-- Location: LCCOMB_X52_Y72_N24
\Gt$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gt$latch~combout\ = (\comb~0_combout\ & ((\Gt$latch~0_combout\) # (!\comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datac => \comb~1_combout\,
	datad => \Gt$latch~0_combout\,
	combout => \Gt$latch~combout\);

-- Location: IOIBUF_X52_Y73_N1
\Ei~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ei,
	o => \Ei~input_o\);

-- Location: LCCOMB_X52_Y72_N0
\Eq$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \Eq$latch~combout\ = (\Ei~input_o\ & (\B~input_o\ $ (!\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \Ei~input_o\,
	datad => \A~input_o\,
	combout => \Eq$latch~combout\);

-- Location: IOIBUF_X54_Y73_N8
\Li~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Li,
	o => \Li~input_o\);

-- Location: LCCOMB_X52_Y72_N6
\Lt$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Lt$latch~0_combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & ((\Lt$latch~combout\))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (\Li~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Li~input_o\,
	datac => \process_0~0clkctrl_outclk\,
	datad => \Lt$latch~combout\,
	combout => \Lt$latch~0_combout\);

-- Location: LCCOMB_X52_Y72_N28
\Lt$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \Lt$latch~combout\ = (\comb~1_combout\ & ((\Lt$latch~0_combout\) # (!\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datac => \comb~1_combout\,
	datad => \Lt$latch~0_combout\,
	combout => \Lt$latch~combout\);

ww_Gt <= \Gt~output_o\;

ww_Eq <= \Eq~output_o\;

ww_Lt <= \Lt~output_o\;
END structure;


