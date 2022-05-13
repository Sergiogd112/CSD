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

-- DATE "05/09/2022 14:39:29"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Control_unit IS
    PORT (
	TRG : IN std_logic;
	CD : IN std_logic;
	Clk : IN std_logic;
	TOF : IN std_logic;
	Timer_out : BUFFER std_logic;
	ETP : BUFFER std_logic;
	CNT_E : BUFFER std_logic;
	CLR_C : BUFFER std_logic;
	LD_R : BUFFER std_logic
	);
END Control_unit;

-- Design Ports Information
-- Timer_out	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ETP	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CNT_E	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR_C	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD_R	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TRG	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CD	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TOF	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Control_unit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TRG : std_logic;
SIGNAL ww_CD : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_TOF : std_logic;
SIGNAL ww_Timer_out : std_logic;
SIGNAL ww_ETP : std_logic;
SIGNAL ww_CNT_E : std_logic;
SIGNAL ww_CLR_C : std_logic;
SIGNAL ww_LD_R : std_logic;
SIGNAL \CD~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Timer_out~output_o\ : std_logic;
SIGNAL \ETP~output_o\ : std_logic;
SIGNAL \CNT_E~output_o\ : std_logic;
SIGNAL \CLR_C~output_o\ : std_logic;
SIGNAL \LD_R~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \TOF~input_o\ : std_logic;
SIGNAL \TRG~input_o\ : std_logic;
SIGNAL \next_state.End_Pulse~0_combout\ : std_logic;
SIGNAL \CD~input_o\ : std_logic;
SIGNAL \CD~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.End_Pulse~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \current_state.Trigger_Check~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \current_state.Idle~q\ : std_logic;
SIGNAL \next_state.Load_Register~0_combout\ : std_logic;
SIGNAL \current_state.Load_Register~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \current_state.Timing~q\ : std_logic;
SIGNAL \Timer_out~0_combout\ : std_logic;
SIGNAL \CNT_E~0_combout\ : std_logic;
SIGNAL \ALT_INV_CD~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_TRG <= TRG;
ww_CD <= CD;
ww_Clk <= Clk;
ww_TOF <= TOF;
Timer_out <= ww_Timer_out;
ETP <= ww_ETP;
CNT_E <= ww_CNT_E;
CLR_C <= ww_CLR_C;
LD_R <= ww_LD_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CD~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CD~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_CD~inputclkctrl_outclk\ <= NOT \CD~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X29_Y73_N2
\Timer_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Timer_out~0_combout\,
	devoe => ww_devoe,
	o => \Timer_out~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\ETP~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETP~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\CNT_E~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CNT_E~0_combout\,
	devoe => ww_devoe,
	o => \CNT_E~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\CLR_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.Load_Register~q\,
	devoe => ww_devoe,
	o => \CLR_C~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\LD_R~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.Load_Register~q\,
	devoe => ww_devoe,
	o => \LD_R~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y73_N8
\TOF~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOF,
	o => \TOF~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\TRG~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TRG,
	o => \TRG~input_o\);

-- Location: LCCOMB_X30_Y72_N10
\next_state.End_Pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.End_Pulse~0_combout\ = (\TOF~input_o\ & \current_state.Timing~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TOF~input_o\,
	datad => \current_state.Timing~q\,
	combout => \next_state.End_Pulse~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\CD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CD,
	o => \CD~input_o\);

-- Location: CLKCTRL_G4
\CD~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CD~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CD~inputclkctrl_outclk\);

-- Location: FF_X30_Y72_N11
\current_state.End_Pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \next_state.End_Pulse~0_combout\,
	clrn => \ALT_INV_CD~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.End_Pulse~q\);

-- Location: LCCOMB_X30_Y72_N12
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\current_state.End_Pulse~q\) # ((\TRG~input_o\ & \current_state.Trigger_Check~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TRG~input_o\,
	datac => \current_state.Trigger_Check~q\,
	datad => \current_state.End_Pulse~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X30_Y72_N13
\current_state.Trigger_Check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_CD~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.Trigger_Check~q\);

-- Location: LCCOMB_X30_Y72_N18
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\TRG~input_o\) # ((\current_state.Idle~q\ & !\current_state.Trigger_Check~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TRG~input_o\,
	datac => \current_state.Idle~q\,
	datad => \current_state.Trigger_Check~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X30_Y72_N19
\current_state.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_CD~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.Idle~q\);

-- Location: LCCOMB_X30_Y72_N28
\next_state.Load_Register~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.Load_Register~0_combout\ = (\TRG~input_o\ & !\current_state.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TRG~input_o\,
	datad => \current_state.Idle~q\,
	combout => \next_state.Load_Register~0_combout\);

-- Location: FF_X30_Y72_N29
\current_state.Load_Register\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \next_state.Load_Register~0_combout\,
	clrn => \ALT_INV_CD~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.Load_Register~q\);

-- Location: LCCOMB_X30_Y72_N2
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\current_state.Load_Register~q\) # ((!\TOF~input_o\ & \current_state.Timing~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TOF~input_o\,
	datac => \current_state.Timing~q\,
	datad => \current_state.Load_Register~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X30_Y72_N3
\current_state.Timing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_CD~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.Timing~q\);

-- Location: LCCOMB_X30_Y72_N0
\Timer_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer_out~0_combout\ = (\current_state.Timing~q\) # (\current_state.Load_Register~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.Timing~q\,
	datac => \current_state.Load_Register~q\,
	combout => \Timer_out~0_combout\);

-- Location: LCCOMB_X30_Y72_N8
\CNT_E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_E~0_combout\ = (\current_state.Timing~q\) # (\current_state.End_Pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.Timing~q\,
	datac => \current_state.End_Pulse~q\,
	combout => \CNT_E~0_combout\);

ww_Timer_out <= \Timer_out~output_o\;

ww_ETP <= \ETP~output_o\;

ww_CNT_E <= \CNT_E~output_o\;

ww_CLR_C <= \CLR_C~output_o\;

ww_LD_R <= \LD_R~output_o\;
END structure;


