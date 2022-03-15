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

-- DATE "03/15/2022 17:59:34"

-- 
-- Device: Altera 10M50DCF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MUX_8 IS
    PORT (
	Ch7 : IN std_logic;
	Ch6 : IN std_logic;
	Ch5 : IN std_logic;
	Ch4 : IN std_logic;
	Ch3 : IN std_logic;
	Ch2 : IN std_logic;
	Ch1 : IN std_logic;
	Ch0 : IN std_logic;
	S : IN std_logic_vector(2 DOWNTO 0);
	E_L : IN std_logic;
	Y : OUT std_logic;
	Y_L : OUT std_logic
	);
END MUX_8;

-- Design Ports Information
-- Y	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_L	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ch5	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ch6	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ch4	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ch7	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ch2	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ch1	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ch0	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ch3	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_L	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MUX_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ch7 : std_logic;
SIGNAL ww_Ch6 : std_logic;
SIGNAL ww_Ch5 : std_logic;
SIGNAL ww_Ch4 : std_logic;
SIGNAL ww_Ch3 : std_logic;
SIGNAL ww_Ch2 : std_logic;
SIGNAL ww_Ch1 : std_logic;
SIGNAL ww_Ch0 : std_logic;
SIGNAL ww_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_E_L : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_Y_L : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Y~output_o\ : std_logic;
SIGNAL \Y_L~output_o\ : std_logic;
SIGNAL \Ch5~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \Ch4~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \Ch6~input_o\ : std_logic;
SIGNAL \Q~0_combout\ : std_logic;
SIGNAL \Ch7~input_o\ : std_logic;
SIGNAL \Q~1_combout\ : std_logic;
SIGNAL \E_L~input_o\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \Ch3~input_o\ : std_logic;
SIGNAL \Ch2~input_o\ : std_logic;
SIGNAL \Ch1~input_o\ : std_logic;
SIGNAL \Ch0~input_o\ : std_logic;
SIGNAL \Q~2_combout\ : std_logic;
SIGNAL \Q~3_combout\ : std_logic;
SIGNAL \Q~4_combout\ : std_logic;
SIGNAL \ALT_INV_Q~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Ch7 <= Ch7;
ww_Ch6 <= Ch6;
ww_Ch5 <= Ch5;
ww_Ch4 <= Ch4;
ww_Ch3 <= Ch3;
ww_Ch2 <= Ch2;
ww_Ch1 <= Ch1;
ww_Ch0 <= Ch0;
ww_S <= S;
ww_E_L <= E_L;
Y <= ww_Y;
Y_L <= ww_Y_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_Q~4_combout\ <= NOT \Q~4_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N2
\Y~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q~4_combout\,
	devoe => ww_devoe,
	o => \Y~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\Y_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Q~4_combout\,
	devoe => ww_devoe,
	o => \Y_L~output_o\);

-- Location: IOIBUF_X54_Y54_N15
\Ch5~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ch5,
	o => \Ch5~input_o\);

-- Location: IOIBUF_X56_Y54_N29
\S[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\Ch4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ch4,
	o => \Ch4~input_o\);

-- Location: IOIBUF_X56_Y54_N15
\S[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: IOIBUF_X58_Y54_N22
\Ch6~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ch6,
	o => \Ch6~input_o\);

-- Location: LCCOMB_X57_Y51_N16
\Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~0_combout\ = (\S[1]~input_o\ & (((\S[0]~input_o\) # (\Ch6~input_o\)))) # (!\S[1]~input_o\ & (\Ch4~input_o\ & (!\S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \Ch4~input_o\,
	datac => \S[0]~input_o\,
	datad => \Ch6~input_o\,
	combout => \Q~0_combout\);

-- Location: IOIBUF_X58_Y54_N29
\Ch7~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ch7,
	o => \Ch7~input_o\);

-- Location: LCCOMB_X57_Y51_N10
\Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~1_combout\ = (\Q~0_combout\ & (((\Ch7~input_o\) # (!\S[0]~input_o\)))) # (!\Q~0_combout\ & (\Ch5~input_o\ & (\S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ch5~input_o\,
	datab => \Q~0_combout\,
	datac => \S[0]~input_o\,
	datad => \Ch7~input_o\,
	combout => \Q~1_combout\);

-- Location: IOIBUF_X54_Y54_N29
\E_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E_L,
	o => \E_L~input_o\);

-- Location: IOIBUF_X56_Y54_N22
\S[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\Ch3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ch3,
	o => \Ch3~input_o\);

-- Location: IOIBUF_X54_Y54_N1
\Ch2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ch2,
	o => \Ch2~input_o\);

-- Location: IOIBUF_X58_Y54_N8
\Ch1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ch1,
	o => \Ch1~input_o\);

-- Location: IOIBUF_X56_Y54_N8
\Ch0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ch0,
	o => \Ch0~input_o\);

-- Location: LCCOMB_X57_Y51_N12
\Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~2_combout\ = (\S[0]~input_o\ & ((\Ch1~input_o\) # ((\S[1]~input_o\)))) # (!\S[0]~input_o\ & (((!\S[1]~input_o\ & \Ch0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \Ch1~input_o\,
	datac => \S[1]~input_o\,
	datad => \Ch0~input_o\,
	combout => \Q~2_combout\);

-- Location: LCCOMB_X57_Y51_N6
\Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~3_combout\ = (\S[1]~input_o\ & ((\Q~2_combout\ & (\Ch3~input_o\)) # (!\Q~2_combout\ & ((\Ch2~input_o\))))) # (!\S[1]~input_o\ & (((\Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \Ch3~input_o\,
	datac => \Ch2~input_o\,
	datad => \Q~2_combout\,
	combout => \Q~3_combout\);

-- Location: LCCOMB_X57_Y51_N24
\Q~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~4_combout\ = (!\E_L~input_o\ & ((\S[2]~input_o\ & (\Q~1_combout\)) # (!\S[2]~input_o\ & ((\Q~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~1_combout\,
	datab => \E_L~input_o\,
	datac => \S[2]~input_o\,
	datad => \Q~3_combout\,
	combout => \Q~4_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Y <= \Y~output_o\;

ww_Y_L <= \Y_L~output_o\;
END structure;


