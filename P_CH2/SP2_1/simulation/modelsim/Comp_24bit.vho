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

-- DATE "04/05/2022 18:45:52"

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

ENTITY 	Comp_24bit IS
    PORT (
	A : IN std_logic_vector(23 DOWNTO 0);
	B : IN std_logic_vector(23 DOWNTO 0);
	Gi : IN std_logic;
	Ei : IN std_logic;
	Li : IN std_logic;
	Gt : BUFFER std_logic;
	Eq : BUFFER std_logic;
	Lt : BUFFER std_logic
	);
END Comp_24bit;

-- Design Ports Information
-- Gt	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Eq	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lt	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ei	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gi	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Li	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Comp_24bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_Gi : std_logic;
SIGNAL ww_Ei : std_logic;
SIGNAL ww_Li : std_logic;
SIGNAL ww_Gt : std_logic;
SIGNAL ww_Eq : std_logic;
SIGNAL ww_Lt : std_logic;
SIGNAL \Chip1|Chip2|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip1|Chip1|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip1|Chip4|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip1|Chip3|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip2|Chip1|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip3|Chip2|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip2|Chip3|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip3|Chip1|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip2|Chip2|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip2|Chip4|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip3|Chip3|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip4|Chip2|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip4|Chip3|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip4|Chip4|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip5|Chip2|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip5|Chip1|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip5|Chip3|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip5|Chip4|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip3|Chip4|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Chip4|Chip1|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gt~output_o\ : std_logic;
SIGNAL \Eq~output_o\ : std_logic;
SIGNAL \Lt~output_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Chip6|Chip4|comb~1_combout\ : std_logic;
SIGNAL \Chip6|Chip4|comb~0_combout\ : std_logic;
SIGNAL \Chip6|Chip4|process_0~0_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \Chip6|Chip3|comb~0_combout\ : std_logic;
SIGNAL \Chip6|Chip3|comb~1_combout\ : std_logic;
SIGNAL \Chip6|Chip3|process_0~0_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \Chip6|Chip2|comb~1_combout\ : std_logic;
SIGNAL \Chip6|Chip2|process_0~0_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \Chip6|Chip1|comb~1_combout\ : std_logic;
SIGNAL \Chip6|Chip1|comb~0_combout\ : std_logic;
SIGNAL \Chip6|Chip1|process_0~0_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Chip5|Chip4|comb~0_combout\ : std_logic;
SIGNAL \Chip5|Chip4|comb~1_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \Chip5|Chip3|comb~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Chip5|Chip2|comb~0_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Chip5|Chip1|comb~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Chip4|Chip4|comb~0_combout\ : std_logic;
SIGNAL \Chip4|Chip4|comb~1_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \Chip4|Chip3|comb~0_combout\ : std_logic;
SIGNAL \Chip4|Chip3|comb~1_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Chip4|Chip2|comb~1_combout\ : std_logic;
SIGNAL \Chip4|Chip2|comb~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Chip4|Chip1|comb~0_combout\ : std_logic;
SIGNAL \Chip4|Chip1|comb~1_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Chip3|Chip4|comb~1_combout\ : std_logic;
SIGNAL \Chip3|Chip4|comb~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Chip3|Chip3|comb~0_combout\ : std_logic;
SIGNAL \Chip3|Chip3|comb~1_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Chip3|Chip2|comb~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Chip3|Chip1|comb~0_combout\ : std_logic;
SIGNAL \Chip3|Chip1|comb~1_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Chip2|Chip4|comb~1_combout\ : std_logic;
SIGNAL \Chip2|Chip4|comb~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Chip2|Chip3|comb~1_combout\ : std_logic;
SIGNAL \Chip2|Chip3|comb~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Chip2|Chip2|comb~0_combout\ : std_logic;
SIGNAL \Chip2|Chip2|comb~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Chip2|Chip1|comb~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Chip1|Chip4|comb~0_combout\ : std_logic;
SIGNAL \Chip1|Chip4|comb~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Chip1|Chip3|comb~0_combout\ : std_logic;
SIGNAL \Chip1|Chip3|process_0~0_combout\ : std_logic;
SIGNAL \Chip1|Chip3|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Chip1|Chip2|comb~1_combout\ : std_logic;
SIGNAL \Chip1|Chip2|comb~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Chip1|Chip1|comb~1_combout\ : std_logic;
SIGNAL \Chip1|Chip1|comb~0_combout\ : std_logic;
SIGNAL \Gi~input_o\ : std_logic;
SIGNAL \Chip1|Chip1|process_0~0_combout\ : std_logic;
SIGNAL \Chip1|Chip1|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip1|Chip1|Gt~0_combout\ : std_logic;
SIGNAL \Chip1|Chip1|Gt~combout\ : std_logic;
SIGNAL \Chip1|Chip2|process_0~0_combout\ : std_logic;
SIGNAL \Chip1|Chip2|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip1|Chip2|Gt~0_combout\ : std_logic;
SIGNAL \Chip1|Chip2|Gt~combout\ : std_logic;
SIGNAL \Chip1|Chip3|Gt~0_combout\ : std_logic;
SIGNAL \Chip1|Chip3|comb~1_combout\ : std_logic;
SIGNAL \Chip1|Chip3|Gt~combout\ : std_logic;
SIGNAL \Chip1|Chip4|process_0~0_combout\ : std_logic;
SIGNAL \Chip1|Chip4|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip1|Chip4|Gt~0_combout\ : std_logic;
SIGNAL \Chip1|Chip4|Gt~combout\ : std_logic;
SIGNAL \Chip2|Chip1|process_0~0_combout\ : std_logic;
SIGNAL \Chip2|Chip1|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip2|Chip1|Gt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip1|comb~1_combout\ : std_logic;
SIGNAL \Chip2|Chip1|Gt~combout\ : std_logic;
SIGNAL \Chip2|Chip2|process_0~0_combout\ : std_logic;
SIGNAL \Chip2|Chip2|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip2|Chip2|Gt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip2|Gt~combout\ : std_logic;
SIGNAL \Chip2|Chip3|process_0~0_combout\ : std_logic;
SIGNAL \Chip2|Chip3|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip2|Chip3|Gt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip3|Gt~combout\ : std_logic;
SIGNAL \Chip2|Chip4|process_0~0_combout\ : std_logic;
SIGNAL \Chip2|Chip4|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip2|Chip4|Gt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip4|Gt~combout\ : std_logic;
SIGNAL \Chip3|Chip1|process_0~0_combout\ : std_logic;
SIGNAL \Chip3|Chip1|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip3|Chip1|Gt~0_combout\ : std_logic;
SIGNAL \Chip3|Chip1|Gt~combout\ : std_logic;
SIGNAL \Chip3|Chip2|process_0~0_combout\ : std_logic;
SIGNAL \Chip3|Chip2|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip3|Chip2|Gt~0_combout\ : std_logic;
SIGNAL \Chip3|Chip2|comb~1_combout\ : std_logic;
SIGNAL \Chip3|Chip2|Gt~combout\ : std_logic;
SIGNAL \Chip3|Chip3|process_0~0_combout\ : std_logic;
SIGNAL \Chip3|Chip3|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip3|Chip3|Gt~0_combout\ : std_logic;
SIGNAL \Chip3|Chip3|Gt~combout\ : std_logic;
SIGNAL \Chip3|Chip4|process_0~0_combout\ : std_logic;
SIGNAL \Chip3|Chip4|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip3|Chip4|Gt~0_combout\ : std_logic;
SIGNAL \Chip3|Chip4|Gt~combout\ : std_logic;
SIGNAL \Chip4|Chip1|process_0~0_combout\ : std_logic;
SIGNAL \Chip4|Chip1|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip4|Chip1|Gt~0_combout\ : std_logic;
SIGNAL \Chip4|Chip1|Gt~combout\ : std_logic;
SIGNAL \Chip4|Chip2|process_0~0_combout\ : std_logic;
SIGNAL \Chip4|Chip2|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip4|Chip2|Gt~0_combout\ : std_logic;
SIGNAL \Chip4|Chip2|Gt~combout\ : std_logic;
SIGNAL \Chip4|Chip3|process_0~0_combout\ : std_logic;
SIGNAL \Chip4|Chip3|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip4|Chip3|Gt~0_combout\ : std_logic;
SIGNAL \Chip4|Chip3|Gt~combout\ : std_logic;
SIGNAL \Chip4|Chip4|process_0~0_combout\ : std_logic;
SIGNAL \Chip4|Chip4|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip4|Chip4|Gt~0_combout\ : std_logic;
SIGNAL \Chip4|Chip4|Gt~combout\ : std_logic;
SIGNAL \Chip5|Chip1|process_0~0_combout\ : std_logic;
SIGNAL \Chip5|Chip1|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip5|Chip1|Gt~0_combout\ : std_logic;
SIGNAL \Chip5|Chip1|comb~1_combout\ : std_logic;
SIGNAL \Chip5|Chip1|Gt~combout\ : std_logic;
SIGNAL \Chip5|Chip2|process_0~0_combout\ : std_logic;
SIGNAL \Chip5|Chip2|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip5|Chip2|Gt~0_combout\ : std_logic;
SIGNAL \Chip5|Chip2|comb~1_combout\ : std_logic;
SIGNAL \Chip5|Chip2|Gt~combout\ : std_logic;
SIGNAL \Chip5|Chip3|process_0~0_combout\ : std_logic;
SIGNAL \Chip5|Chip3|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip5|Chip3|Gt~0_combout\ : std_logic;
SIGNAL \Chip5|Chip3|comb~1_combout\ : std_logic;
SIGNAL \Chip5|Chip3|Gt~combout\ : std_logic;
SIGNAL \Chip5|Chip4|process_0~0_combout\ : std_logic;
SIGNAL \Chip5|Chip4|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Chip5|Chip4|Gt~0_combout\ : std_logic;
SIGNAL \Chip5|Chip4|Gt~combout\ : std_logic;
SIGNAL \Chip6|Chip1|Gt~0_combout\ : std_logic;
SIGNAL \Chip6|Chip1|Gt~combout\ : std_logic;
SIGNAL \Chip6|Chip2|Gt~0_combout\ : std_logic;
SIGNAL \Chip6|Chip2|comb~0_combout\ : std_logic;
SIGNAL \Chip6|Chip2|Gt~combout\ : std_logic;
SIGNAL \Chip6|Chip3|Gt~0_combout\ : std_logic;
SIGNAL \Chip6|Chip3|Gt~combout\ : std_logic;
SIGNAL \Chip6|Chip4|Gt~0_combout\ : std_logic;
SIGNAL \Chip6|Chip4|Gt~combout\ : std_logic;
SIGNAL \Chip6|Chip4|Eq~6_combout\ : std_logic;
SIGNAL \Chip6|Chip4|Eq~1_combout\ : std_logic;
SIGNAL \Chip6|Chip4|Eq~2_combout\ : std_logic;
SIGNAL \Chip6|Chip4|Eq~3_combout\ : std_logic;
SIGNAL \Chip6|Chip4|Eq~0_combout\ : std_logic;
SIGNAL \Chip6|Chip4|Eq~4_combout\ : std_logic;
SIGNAL \Chip6|Chip4|Eq~5_combout\ : std_logic;
SIGNAL \Ei~input_o\ : std_logic;
SIGNAL \Chip6|Chip4|Eq~7_combout\ : std_logic;
SIGNAL \Li~input_o\ : std_logic;
SIGNAL \Chip1|Chip1|Lt~0_combout\ : std_logic;
SIGNAL \Chip1|Chip1|Lt~combout\ : std_logic;
SIGNAL \Chip1|Chip2|Lt~0_combout\ : std_logic;
SIGNAL \Chip1|Chip2|Lt~combout\ : std_logic;
SIGNAL \Chip1|Chip3|Lt~0_combout\ : std_logic;
SIGNAL \Chip1|Chip3|Lt~combout\ : std_logic;
SIGNAL \Chip1|Chip4|Lt~0_combout\ : std_logic;
SIGNAL \Chip1|Chip4|Lt~combout\ : std_logic;
SIGNAL \Chip2|Chip1|Lt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip1|Lt~combout\ : std_logic;
SIGNAL \Chip2|Chip2|Lt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip2|Lt~combout\ : std_logic;
SIGNAL \Chip2|Chip3|Lt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip3|Lt~combout\ : std_logic;
SIGNAL \Chip2|Chip4|Lt~0_combout\ : std_logic;
SIGNAL \Chip2|Chip4|Lt~combout\ : std_logic;
SIGNAL \Chip3|Chip1|Lt~0_combout\ : std_logic;
SIGNAL \Chip3|Chip1|Lt~combout\ : std_logic;
SIGNAL \Chip3|Chip2|Lt~0_combout\ : std_logic;
SIGNAL \Chip3|Chip2|Lt~combout\ : std_logic;
SIGNAL \Chip3|Chip3|Lt~0_combout\ : std_logic;
SIGNAL \Chip3|Chip3|Lt~combout\ : std_logic;
SIGNAL \Chip3|Chip4|Lt~0_combout\ : std_logic;
SIGNAL \Chip3|Chip4|Lt~combout\ : std_logic;
SIGNAL \Chip4|Chip1|Lt~0_combout\ : std_logic;
SIGNAL \Chip4|Chip1|Lt~combout\ : std_logic;
SIGNAL \Chip4|Chip2|Lt~0_combout\ : std_logic;
SIGNAL \Chip4|Chip2|Lt~combout\ : std_logic;
SIGNAL \Chip4|Chip3|Lt~0_combout\ : std_logic;
SIGNAL \Chip4|Chip3|Lt~combout\ : std_logic;
SIGNAL \Chip4|Chip4|Lt~0_combout\ : std_logic;
SIGNAL \Chip4|Chip4|Lt~combout\ : std_logic;
SIGNAL \Chip5|Chip1|Lt~0_combout\ : std_logic;
SIGNAL \Chip5|Chip1|Lt~combout\ : std_logic;
SIGNAL \Chip5|Chip2|Lt~0_combout\ : std_logic;
SIGNAL \Chip5|Chip2|Lt~combout\ : std_logic;
SIGNAL \Chip5|Chip3|Lt~0_combout\ : std_logic;
SIGNAL \Chip5|Chip3|Lt~combout\ : std_logic;
SIGNAL \Chip5|Chip4|Lt~0_combout\ : std_logic;
SIGNAL \Chip5|Chip4|Lt~combout\ : std_logic;
SIGNAL \Chip6|Chip1|Lt~0_combout\ : std_logic;
SIGNAL \Chip6|Chip1|Lt~combout\ : std_logic;
SIGNAL \Chip6|Chip2|Lt~0_combout\ : std_logic;
SIGNAL \Chip6|Chip2|Lt~combout\ : std_logic;
SIGNAL \Chip6|Chip3|Lt~0_combout\ : std_logic;
SIGNAL \Chip6|Chip3|Lt~combout\ : std_logic;
SIGNAL \Chip6|Chip4|Lt~0_combout\ : std_logic;
SIGNAL \Chip6|Chip4|Lt~combout\ : std_logic;

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

\Chip1|Chip2|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip1|Chip2|process_0~0_combout\);

\Chip1|Chip1|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip1|Chip1|process_0~0_combout\);

\Chip1|Chip4|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip1|Chip4|process_0~0_combout\);

\Chip1|Chip3|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip1|Chip3|process_0~0_combout\);

\Chip2|Chip1|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip2|Chip1|process_0~0_combout\);

\Chip3|Chip2|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip3|Chip2|process_0~0_combout\);

\Chip2|Chip3|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip2|Chip3|process_0~0_combout\);

\Chip3|Chip1|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip3|Chip1|process_0~0_combout\);

\Chip2|Chip2|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip2|Chip2|process_0~0_combout\);

\Chip2|Chip4|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip2|Chip4|process_0~0_combout\);

\Chip3|Chip3|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip3|Chip3|process_0~0_combout\);

\Chip4|Chip2|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip4|Chip2|process_0~0_combout\);

\Chip4|Chip3|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip4|Chip3|process_0~0_combout\);

\Chip4|Chip4|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip4|Chip4|process_0~0_combout\);

\Chip5|Chip2|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip5|Chip2|process_0~0_combout\);

\Chip5|Chip1|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip5|Chip1|process_0~0_combout\);

\Chip5|Chip3|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip5|Chip3|process_0~0_combout\);

\Chip5|Chip4|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip5|Chip4|process_0~0_combout\);

\Chip3|Chip4|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip3|Chip4|process_0~0_combout\);

\Chip4|Chip1|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Chip4|Chip1|process_0~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X47_Y0_N2
\Gt~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip6|Chip4|Gt~combout\,
	devoe => ww_devoe,
	o => \Gt~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\Eq~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip6|Chip4|Eq~7_combout\,
	devoe => ww_devoe,
	o => \Eq~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\Lt~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Chip6|Chip4|Lt~combout\,
	devoe => ww_devoe,
	o => \Lt~output_o\);

-- Location: IOIBUF_X45_Y0_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X49_Y1_N0
\Chip6|Chip4|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|comb~1_combout\ = (\B[23]~input_o\) # (!\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Chip6|Chip4|comb~1_combout\);

-- Location: LCCOMB_X49_Y1_N30
\Chip6|Chip4|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|comb~0_combout\ = (\A[23]~input_o\) # (!\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Chip6|Chip4|comb~0_combout\);

-- Location: LCCOMB_X49_Y1_N10
\Chip6|Chip4|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|process_0~0_combout\ = \B[23]~input_o\ $ (\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Chip6|Chip4|process_0~0_combout\);

-- Location: IOIBUF_X45_Y0_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X49_Y1_N26
\Chip6|Chip3|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip3|comb~0_combout\ = (\A[22]~input_o\) # (!\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \Chip6|Chip3|comb~0_combout\);

-- Location: LCCOMB_X49_Y1_N28
\Chip6|Chip3|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip3|comb~1_combout\ = (\B[22]~input_o\) # (!\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \Chip6|Chip3|comb~1_combout\);

-- Location: LCCOMB_X49_Y1_N16
\Chip6|Chip3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip3|process_0~0_combout\ = \A[22]~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \Chip6|Chip3|process_0~0_combout\);

-- Location: IOIBUF_X47_Y0_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X50_Y1_N6
\Chip6|Chip2|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip2|comb~1_combout\ = (\B[21]~input_o\) # (!\A[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Chip6|Chip2|comb~1_combout\);

-- Location: LCCOMB_X50_Y1_N18
\Chip6|Chip2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip2|process_0~0_combout\ = \A[21]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Chip6|Chip2|process_0~0_combout\);

-- Location: IOIBUF_X52_Y0_N1
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X50_Y1_N26
\Chip6|Chip1|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip1|comb~1_combout\ = (\B[20]~input_o\) # (!\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	combout => \Chip6|Chip1|comb~1_combout\);

-- Location: LCCOMB_X50_Y1_N8
\Chip6|Chip1|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip1|comb~0_combout\ = (\A[20]~input_o\) # (!\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	combout => \Chip6|Chip1|comb~0_combout\);

-- Location: LCCOMB_X50_Y1_N24
\Chip6|Chip1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip1|process_0~0_combout\ = \B[20]~input_o\ $ (\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	combout => \Chip6|Chip1|process_0~0_combout\);

-- Location: IOIBUF_X56_Y0_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X56_Y1_N12
\Chip5|Chip4|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip4|comb~0_combout\ = (\A[19]~input_o\) # (!\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Chip5|Chip4|comb~0_combout\);

-- Location: LCCOMB_X56_Y1_N30
\Chip5|Chip4|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip4|comb~1_combout\ = (\B[19]~input_o\) # (!\A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Chip5|Chip4|comb~1_combout\);

-- Location: IOIBUF_X56_Y0_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X56_Y1_N8
\Chip5|Chip3|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip3|comb~0_combout\ = (\A[18]~input_o\) # (!\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	combout => \Chip5|Chip3|comb~0_combout\);

-- Location: IOIBUF_X54_Y0_N1
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X56_Y4_N12
\Chip5|Chip2|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip2|comb~0_combout\ = (\A[17]~input_o\) # (!\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Chip5|Chip2|comb~0_combout\);

-- Location: IOIBUF_X54_Y0_N15
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X56_Y4_N8
\Chip5|Chip1|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip1|comb~0_combout\ = (\A[16]~input_o\) # (!\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	combout => \Chip5|Chip1|comb~0_combout\);

-- Location: IOIBUF_X60_Y0_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X59_Y4_N10
\Chip4|Chip4|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip4|comb~0_combout\ = (\A[15]~input_o\) # (!\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Chip4|Chip4|comb~0_combout\);

-- Location: LCCOMB_X59_Y4_N28
\Chip4|Chip4|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip4|comb~1_combout\ = (\B[15]~input_o\) # (!\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Chip4|Chip4|comb~1_combout\);

-- Location: IOIBUF_X60_Y0_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X61_Y1_N12
\Chip4|Chip3|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip3|comb~0_combout\ = (\A[14]~input_o\) # (!\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Chip4|Chip3|comb~0_combout\);

-- Location: LCCOMB_X61_Y1_N30
\Chip4|Chip3|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip3|comb~1_combout\ = (\B[14]~input_o\) # (!\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Chip4|Chip3|comb~1_combout\);

-- Location: IOIBUF_X62_Y0_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X61_Y1_N26
\Chip4|Chip2|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip2|comb~1_combout\ = (\B[13]~input_o\) # (!\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Chip4|Chip2|comb~1_combout\);

-- Location: LCCOMB_X61_Y1_N8
\Chip4|Chip2|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip2|comb~0_combout\ = (\A[13]~input_o\) # (!\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Chip4|Chip2|comb~0_combout\);

-- Location: IOIBUF_X65_Y0_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X65_Y4_N12
\Chip4|Chip1|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip1|comb~0_combout\ = (\A[12]~input_o\) # (!\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Chip4|Chip1|comb~0_combout\);

-- Location: LCCOMB_X65_Y4_N30
\Chip4|Chip1|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip1|comb~1_combout\ = (\B[12]~input_o\) # (!\A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Chip4|Chip1|comb~1_combout\);

-- Location: IOIBUF_X69_Y0_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X65_Y4_N26
\Chip3|Chip4|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip4|comb~1_combout\ = (\B[11]~input_o\) # (!\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Chip3|Chip4|comb~1_combout\);

-- Location: LCCOMB_X65_Y4_N8
\Chip3|Chip4|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip4|comb~0_combout\ = (\A[11]~input_o\) # (!\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Chip3|Chip4|comb~0_combout\);

-- Location: IOIBUF_X69_Y0_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X65_Y7_N12
\Chip3|Chip3|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip3|comb~0_combout\ = (\A[10]~input_o\) # (!\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \Chip3|Chip3|comb~0_combout\);

-- Location: LCCOMB_X65_Y7_N30
\Chip3|Chip3|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip3|comb~1_combout\ = (\B[10]~input_o\) # (!\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \Chip3|Chip3|comb~1_combout\);

-- Location: IOIBUF_X67_Y0_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X65_Y7_N24
\Chip3|Chip2|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip2|comb~0_combout\ = (\A[9]~input_o\) # (!\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	combout => \Chip3|Chip2|comb~0_combout\);

-- Location: IOIBUF_X115_Y24_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X115_Y26_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X114_Y24_N12
\Chip3|Chip1|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip1|comb~0_combout\ = (\A[8]~input_o\) # (!\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Chip3|Chip1|comb~0_combout\);

-- Location: LCCOMB_X114_Y24_N30
\Chip3|Chip1|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip1|comb~1_combout\ = (\B[8]~input_o\) # (!\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Chip3|Chip1|comb~1_combout\);

-- Location: IOIBUF_X115_Y24_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X115_Y26_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X114_Y24_N26
\Chip2|Chip4|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip4|comb~1_combout\ = (\B[7]~input_o\) # (!\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	combout => \Chip2|Chip4|comb~1_combout\);

-- Location: LCCOMB_X114_Y24_N8
\Chip2|Chip4|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip4|comb~0_combout\ = (\A[7]~input_o\) # (!\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	combout => \Chip2|Chip4|comb~0_combout\);

-- Location: IOIBUF_X115_Y25_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X115_Y25_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X114_Y25_N12
\Chip2|Chip3|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip3|comb~1_combout\ = (\B[6]~input_o\) # (!\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Chip2|Chip3|comb~1_combout\);

-- Location: LCCOMB_X114_Y25_N2
\Chip2|Chip3|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip3|comb~0_combout\ = (\A[6]~input_o\) # (!\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Chip2|Chip3|comb~0_combout\);

-- Location: IOIBUF_X115_Y31_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X115_Y31_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X113_Y31_N12
\Chip2|Chip2|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip2|comb~0_combout\ = (\A[5]~input_o\) # (!\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Chip2|Chip2|comb~0_combout\);

-- Location: LCCOMB_X113_Y31_N30
\Chip2|Chip2|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip2|comb~1_combout\ = (\B[5]~input_o\) # (!\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Chip2|Chip2|comb~1_combout\);

-- Location: IOIBUF_X115_Y30_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X113_Y31_N24
\Chip2|Chip1|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip1|comb~0_combout\ = (\A[4]~input_o\) # (!\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Chip2|Chip1|comb~0_combout\);

-- Location: IOIBUF_X115_Y34_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X114_Y35_N12
\Chip1|Chip4|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip4|comb~0_combout\ = (\A[3]~input_o\) # (!\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Chip1|Chip4|comb~0_combout\);

-- Location: LCCOMB_X114_Y35_N30
\Chip1|Chip4|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip4|comb~1_combout\ = (\B[3]~input_o\) # (!\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Chip1|Chip4|comb~1_combout\);

-- Location: IOIBUF_X115_Y35_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X114_Y35_N24
\Chip1|Chip3|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip3|comb~0_combout\ = (\A[2]~input_o\) # (!\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Chip1|Chip3|comb~0_combout\);

-- Location: LCCOMB_X114_Y35_N8
\Chip1|Chip3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip3|process_0~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Chip1|Chip3|process_0~0_combout\);

-- Location: CLKCTRL_G9
\Chip1|Chip3|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip1|Chip3|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip1|Chip3|process_0~0clkctrl_outclk\);

-- Location: IOIBUF_X115_Y36_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X114_Y37_N16
\Chip1|Chip2|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip2|comb~1_combout\ = (\B[1]~input_o\) # (!\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Chip1|Chip2|comb~1_combout\);

-- Location: LCCOMB_X114_Y37_N30
\Chip1|Chip2|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip2|comb~0_combout\ = (\A[1]~input_o\) # (!\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Chip1|Chip2|comb~0_combout\);

-- Location: IOIBUF_X115_Y37_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X115_Y37_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X114_Y37_N28
\Chip1|Chip1|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|comb~1_combout\ = (\B[0]~input_o\) # (!\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Chip1|Chip1|comb~1_combout\);

-- Location: LCCOMB_X114_Y37_N26
\Chip1|Chip1|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|comb~0_combout\ = (\A[0]~input_o\) # (!\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Chip1|Chip1|comb~0_combout\);

-- Location: IOIBUF_X115_Y36_N15
\Gi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Gi,
	o => \Gi~input_o\);

-- Location: LCCOMB_X114_Y37_N8
\Chip1|Chip1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|process_0~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Chip1|Chip1|process_0~0_combout\);

-- Location: CLKCTRL_G8
\Chip1|Chip1|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip1|Chip1|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip1|Chip1|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X114_Y37_N0
\Chip1|Chip1|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Gt~0_combout\ = (GLOBAL(\Chip1|Chip1|process_0~0clkctrl_outclk\) & ((\Chip1|Chip1|Gt~combout\))) # (!GLOBAL(\Chip1|Chip1|process_0~0clkctrl_outclk\) & (\Gi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gi~input_o\,
	datac => \Chip1|Chip1|Gt~combout\,
	datad => \Chip1|Chip1|process_0~0clkctrl_outclk\,
	combout => \Chip1|Chip1|Gt~0_combout\);

-- Location: LCCOMB_X114_Y37_N22
\Chip1|Chip1|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Gt~combout\ = (\Chip1|Chip1|comb~0_combout\ & ((\Chip1|Chip1|Gt~0_combout\) # (!\Chip1|Chip1|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip1|Chip1|comb~1_combout\,
	datac => \Chip1|Chip1|comb~0_combout\,
	datad => \Chip1|Chip1|Gt~0_combout\,
	combout => \Chip1|Chip1|Gt~combout\);

-- Location: LCCOMB_X114_Y37_N2
\Chip1|Chip2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip2|process_0~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Chip1|Chip2|process_0~0_combout\);

-- Location: CLKCTRL_G7
\Chip1|Chip2|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip1|Chip2|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip1|Chip2|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X114_Y37_N24
\Chip1|Chip2|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip2|Gt~0_combout\ = (GLOBAL(\Chip1|Chip2|process_0~0clkctrl_outclk\) & ((\Chip1|Chip2|Gt~combout\))) # (!GLOBAL(\Chip1|Chip2|process_0~0clkctrl_outclk\) & (\Chip1|Chip1|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Gt~combout\,
	datac => \Chip1|Chip2|process_0~0clkctrl_outclk\,
	datad => \Chip1|Chip2|Gt~combout\,
	combout => \Chip1|Chip2|Gt~0_combout\);

-- Location: LCCOMB_X114_Y37_N6
\Chip1|Chip2|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip2|Gt~combout\ = (\Chip1|Chip2|comb~0_combout\ & ((\Chip1|Chip2|Gt~0_combout\) # (!\Chip1|Chip2|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip1|Chip2|comb~1_combout\,
	datac => \Chip1|Chip2|comb~0_combout\,
	datad => \Chip1|Chip2|Gt~0_combout\,
	combout => \Chip1|Chip2|Gt~combout\);

-- Location: LCCOMB_X114_Y35_N22
\Chip1|Chip3|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip3|Gt~0_combout\ = (GLOBAL(\Chip1|Chip3|process_0~0clkctrl_outclk\) & ((\Chip1|Chip3|Gt~combout\))) # (!GLOBAL(\Chip1|Chip3|process_0~0clkctrl_outclk\) & (\Chip1|Chip2|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip3|process_0~0clkctrl_outclk\,
	datac => \Chip1|Chip2|Gt~combout\,
	datad => \Chip1|Chip3|Gt~combout\,
	combout => \Chip1|Chip3|Gt~0_combout\);

-- Location: LCCOMB_X114_Y35_N18
\Chip1|Chip3|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip3|comb~1_combout\ = (\B[2]~input_o\) # (!\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Chip1|Chip3|comb~1_combout\);

-- Location: LCCOMB_X114_Y35_N20
\Chip1|Chip3|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip3|Gt~combout\ = (\Chip1|Chip3|comb~0_combout\ & ((\Chip1|Chip3|Gt~0_combout\) # (!\Chip1|Chip3|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip1|Chip3|comb~0_combout\,
	datac => \Chip1|Chip3|Gt~0_combout\,
	datad => \Chip1|Chip3|comb~1_combout\,
	combout => \Chip1|Chip3|Gt~combout\);

-- Location: LCCOMB_X114_Y35_N2
\Chip1|Chip4|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip4|process_0~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Chip1|Chip4|process_0~0_combout\);

-- Location: CLKCTRL_G6
\Chip1|Chip4|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip1|Chip4|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip1|Chip4|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X114_Y35_N6
\Chip1|Chip4|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip4|Gt~0_combout\ = (GLOBAL(\Chip1|Chip4|process_0~0clkctrl_outclk\) & ((\Chip1|Chip4|Gt~combout\))) # (!GLOBAL(\Chip1|Chip4|process_0~0clkctrl_outclk\) & (\Chip1|Chip3|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip1|Chip3|Gt~combout\,
	datac => \Chip1|Chip4|process_0~0clkctrl_outclk\,
	datad => \Chip1|Chip4|Gt~combout\,
	combout => \Chip1|Chip4|Gt~0_combout\);

-- Location: LCCOMB_X114_Y35_N28
\Chip1|Chip4|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip4|Gt~combout\ = (\Chip1|Chip4|comb~0_combout\ & ((\Chip1|Chip4|Gt~0_combout\) # (!\Chip1|Chip4|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip4|comb~0_combout\,
	datac => \Chip1|Chip4|comb~1_combout\,
	datad => \Chip1|Chip4|Gt~0_combout\,
	combout => \Chip1|Chip4|Gt~combout\);

-- Location: LCCOMB_X113_Y31_N8
\Chip2|Chip1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip1|process_0~0_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Chip2|Chip1|process_0~0_combout\);

-- Location: CLKCTRL_G0
\Chip2|Chip1|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip2|Chip1|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip2|Chip1|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X113_Y31_N22
\Chip2|Chip1|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip1|Gt~0_combout\ = (GLOBAL(\Chip2|Chip1|process_0~0clkctrl_outclk\) & ((\Chip2|Chip1|Gt~combout\))) # (!GLOBAL(\Chip2|Chip1|process_0~0clkctrl_outclk\) & (\Chip1|Chip4|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip1|Chip4|Gt~combout\,
	datac => \Chip2|Chip1|process_0~0clkctrl_outclk\,
	datad => \Chip2|Chip1|Gt~combout\,
	combout => \Chip2|Chip1|Gt~0_combout\);

-- Location: LCCOMB_X113_Y31_N18
\Chip2|Chip1|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip1|comb~1_combout\ = (\B[4]~input_o\) # (!\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Chip2|Chip1|comb~1_combout\);

-- Location: LCCOMB_X113_Y31_N28
\Chip2|Chip1|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip1|Gt~combout\ = (\Chip2|Chip1|comb~0_combout\ & ((\Chip2|Chip1|Gt~0_combout\) # (!\Chip2|Chip1|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip1|comb~0_combout\,
	datac => \Chip2|Chip1|Gt~0_combout\,
	datad => \Chip2|Chip1|comb~1_combout\,
	combout => \Chip2|Chip1|Gt~combout\);

-- Location: LCCOMB_X113_Y31_N2
\Chip2|Chip2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip2|process_0~0_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Chip2|Chip2|process_0~0_combout\);

-- Location: CLKCTRL_G11
\Chip2|Chip2|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip2|Chip2|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip2|Chip2|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X113_Y31_N6
\Chip2|Chip2|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip2|Gt~0_combout\ = (GLOBAL(\Chip2|Chip2|process_0~0clkctrl_outclk\) & ((\Chip2|Chip2|Gt~combout\))) # (!GLOBAL(\Chip2|Chip2|process_0~0clkctrl_outclk\) & (\Chip2|Chip1|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip1|Gt~combout\,
	datac => \Chip2|Chip2|process_0~0clkctrl_outclk\,
	datad => \Chip2|Chip2|Gt~combout\,
	combout => \Chip2|Chip2|Gt~0_combout\);

-- Location: LCCOMB_X113_Y31_N20
\Chip2|Chip2|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip2|Gt~combout\ = (\Chip2|Chip2|comb~0_combout\ & ((\Chip2|Chip2|Gt~0_combout\) # (!\Chip2|Chip2|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip2|comb~0_combout\,
	datac => \Chip2|Chip2|comb~1_combout\,
	datad => \Chip2|Chip2|Gt~0_combout\,
	combout => \Chip2|Chip2|Gt~combout\);

-- Location: LCCOMB_X114_Y25_N24
\Chip2|Chip3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip3|process_0~0_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Chip2|Chip3|process_0~0_combout\);

-- Location: CLKCTRL_G13
\Chip2|Chip3|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip2|Chip3|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip2|Chip3|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X114_Y25_N16
\Chip2|Chip3|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip3|Gt~0_combout\ = (GLOBAL(\Chip2|Chip3|process_0~0clkctrl_outclk\) & ((\Chip2|Chip3|Gt~combout\))) # (!GLOBAL(\Chip2|Chip3|process_0~0clkctrl_outclk\) & (\Chip2|Chip2|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip2|Gt~combout\,
	datac => \Chip2|Chip3|process_0~0clkctrl_outclk\,
	datad => \Chip2|Chip3|Gt~combout\,
	combout => \Chip2|Chip3|Gt~0_combout\);

-- Location: LCCOMB_X114_Y25_N6
\Chip2|Chip3|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip3|Gt~combout\ = (\Chip2|Chip3|comb~0_combout\ & ((\Chip2|Chip3|Gt~0_combout\) # (!\Chip2|Chip3|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip3|comb~1_combout\,
	datab => \Chip2|Chip3|comb~0_combout\,
	datad => \Chip2|Chip3|Gt~0_combout\,
	combout => \Chip2|Chip3|Gt~combout\);

-- Location: LCCOMB_X114_Y24_N24
\Chip2|Chip4|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip4|process_0~0_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	combout => \Chip2|Chip4|process_0~0_combout\);

-- Location: CLKCTRL_G5
\Chip2|Chip4|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip2|Chip4|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip2|Chip4|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X114_Y24_N22
\Chip2|Chip4|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip4|Gt~0_combout\ = (GLOBAL(\Chip2|Chip4|process_0~0clkctrl_outclk\) & ((\Chip2|Chip4|Gt~combout\))) # (!GLOBAL(\Chip2|Chip4|process_0~0clkctrl_outclk\) & (\Chip2|Chip3|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip3|Gt~combout\,
	datac => \Chip2|Chip4|process_0~0clkctrl_outclk\,
	datad => \Chip2|Chip4|Gt~combout\,
	combout => \Chip2|Chip4|Gt~0_combout\);

-- Location: LCCOMB_X114_Y24_N20
\Chip2|Chip4|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip4|Gt~combout\ = (\Chip2|Chip4|comb~0_combout\ & ((\Chip2|Chip4|Gt~0_combout\) # (!\Chip2|Chip4|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip4|comb~1_combout\,
	datab => \Chip2|Chip4|comb~0_combout\,
	datac => \Chip2|Chip4|Gt~0_combout\,
	combout => \Chip2|Chip4|Gt~combout\);

-- Location: LCCOMB_X114_Y24_N18
\Chip3|Chip1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip1|process_0~0_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Chip3|Chip1|process_0~0_combout\);

-- Location: CLKCTRL_G12
\Chip3|Chip1|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip3|Chip1|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip3|Chip1|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X114_Y24_N6
\Chip3|Chip1|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip1|Gt~0_combout\ = (GLOBAL(\Chip3|Chip1|process_0~0clkctrl_outclk\) & ((\Chip3|Chip1|Gt~combout\))) # (!GLOBAL(\Chip3|Chip1|process_0~0clkctrl_outclk\) & (\Chip2|Chip4|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip4|Gt~combout\,
	datac => \Chip3|Chip1|process_0~0clkctrl_outclk\,
	datad => \Chip3|Chip1|Gt~combout\,
	combout => \Chip3|Chip1|Gt~0_combout\);

-- Location: LCCOMB_X114_Y24_N28
\Chip3|Chip1|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip1|Gt~combout\ = (\Chip3|Chip1|comb~0_combout\ & ((\Chip3|Chip1|Gt~0_combout\) # (!\Chip3|Chip1|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip3|Chip1|comb~0_combout\,
	datac => \Chip3|Chip1|comb~1_combout\,
	datad => \Chip3|Chip1|Gt~0_combout\,
	combout => \Chip3|Chip1|Gt~combout\);

-- Location: LCCOMB_X65_Y7_N8
\Chip3|Chip2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip2|process_0~0_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	combout => \Chip3|Chip2|process_0~0_combout\);

-- Location: CLKCTRL_G3
\Chip3|Chip2|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip3|Chip2|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip3|Chip2|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X65_Y7_N22
\Chip3|Chip2|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip2|Gt~0_combout\ = (GLOBAL(\Chip3|Chip2|process_0~0clkctrl_outclk\) & ((\Chip3|Chip2|Gt~combout\))) # (!GLOBAL(\Chip3|Chip2|process_0~0clkctrl_outclk\) & (\Chip3|Chip1|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip3|Chip1|Gt~combout\,
	datac => \Chip3|Chip2|process_0~0clkctrl_outclk\,
	datad => \Chip3|Chip2|Gt~combout\,
	combout => \Chip3|Chip2|Gt~0_combout\);

-- Location: LCCOMB_X65_Y7_N18
\Chip3|Chip2|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip2|comb~1_combout\ = (\B[9]~input_o\) # (!\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	combout => \Chip3|Chip2|comb~1_combout\);

-- Location: LCCOMB_X65_Y7_N20
\Chip3|Chip2|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip2|Gt~combout\ = (\Chip3|Chip2|comb~0_combout\ & ((\Chip3|Chip2|Gt~0_combout\) # (!\Chip3|Chip2|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip3|Chip2|comb~0_combout\,
	datac => \Chip3|Chip2|Gt~0_combout\,
	datad => \Chip3|Chip2|comb~1_combout\,
	combout => \Chip3|Chip2|Gt~combout\);

-- Location: LCCOMB_X65_Y7_N10
\Chip3|Chip3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip3|process_0~0_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \Chip3|Chip3|process_0~0_combout\);

-- Location: CLKCTRL_G4
\Chip3|Chip3|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip3|Chip3|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip3|Chip3|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X65_Y7_N6
\Chip3|Chip3|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip3|Gt~0_combout\ = (GLOBAL(\Chip3|Chip3|process_0~0clkctrl_outclk\) & ((\Chip3|Chip3|Gt~combout\))) # (!GLOBAL(\Chip3|Chip3|process_0~0clkctrl_outclk\) & (\Chip3|Chip2|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip3|Chip2|Gt~combout\,
	datac => \Chip3|Chip3|process_0~0clkctrl_outclk\,
	datad => \Chip3|Chip3|Gt~combout\,
	combout => \Chip3|Chip3|Gt~0_combout\);

-- Location: LCCOMB_X65_Y7_N28
\Chip3|Chip3|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip3|Gt~combout\ = (\Chip3|Chip3|comb~0_combout\ & ((\Chip3|Chip3|Gt~0_combout\) # (!\Chip3|Chip3|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip3|Chip3|comb~0_combout\,
	datac => \Chip3|Chip3|comb~1_combout\,
	datad => \Chip3|Chip3|Gt~0_combout\,
	combout => \Chip3|Chip3|Gt~combout\);

-- Location: LCCOMB_X65_Y4_N24
\Chip3|Chip4|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip4|process_0~0_combout\ = \B[11]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Chip3|Chip4|process_0~0_combout\);

-- Location: CLKCTRL_G19
\Chip3|Chip4|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip3|Chip4|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip3|Chip4|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X65_Y4_N22
\Chip3|Chip4|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip4|Gt~0_combout\ = (GLOBAL(\Chip3|Chip4|process_0~0clkctrl_outclk\) & ((\Chip3|Chip4|Gt~combout\))) # (!GLOBAL(\Chip3|Chip4|process_0~0clkctrl_outclk\) & (\Chip3|Chip3|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip3|Chip3|Gt~combout\,
	datac => \Chip3|Chip4|process_0~0clkctrl_outclk\,
	datad => \Chip3|Chip4|Gt~combout\,
	combout => \Chip3|Chip4|Gt~0_combout\);

-- Location: LCCOMB_X65_Y4_N20
\Chip3|Chip4|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip4|Gt~combout\ = (\Chip3|Chip4|comb~0_combout\ & ((\Chip3|Chip4|Gt~0_combout\) # (!\Chip3|Chip4|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip3|Chip4|comb~1_combout\,
	datab => \Chip3|Chip4|comb~0_combout\,
	datac => \Chip3|Chip4|Gt~0_combout\,
	combout => \Chip3|Chip4|Gt~combout\);

-- Location: LCCOMB_X65_Y4_N2
\Chip4|Chip1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip1|process_0~0_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Chip4|Chip1|process_0~0_combout\);

-- Location: CLKCTRL_G10
\Chip4|Chip1|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip4|Chip1|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip4|Chip1|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X65_Y4_N6
\Chip4|Chip1|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip1|Gt~0_combout\ = (GLOBAL(\Chip4|Chip1|process_0~0clkctrl_outclk\) & ((\Chip4|Chip1|Gt~combout\))) # (!GLOBAL(\Chip4|Chip1|process_0~0clkctrl_outclk\) & (\Chip3|Chip4|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip3|Chip4|Gt~combout\,
	datac => \Chip4|Chip1|process_0~0clkctrl_outclk\,
	datad => \Chip4|Chip1|Gt~combout\,
	combout => \Chip4|Chip1|Gt~0_combout\);

-- Location: LCCOMB_X65_Y4_N28
\Chip4|Chip1|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip1|Gt~combout\ = (\Chip4|Chip1|comb~0_combout\ & ((\Chip4|Chip1|Gt~0_combout\) # (!\Chip4|Chip1|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip4|Chip1|comb~0_combout\,
	datac => \Chip4|Chip1|comb~1_combout\,
	datad => \Chip4|Chip1|Gt~0_combout\,
	combout => \Chip4|Chip1|Gt~combout\);

-- Location: LCCOMB_X61_Y1_N24
\Chip4|Chip2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip2|process_0~0_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Chip4|Chip2|process_0~0_combout\);

-- Location: CLKCTRL_G17
\Chip4|Chip2|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip4|Chip2|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip4|Chip2|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X61_Y1_N22
\Chip4|Chip2|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip2|Gt~0_combout\ = (GLOBAL(\Chip4|Chip2|process_0~0clkctrl_outclk\) & ((\Chip4|Chip2|Gt~combout\))) # (!GLOBAL(\Chip4|Chip2|process_0~0clkctrl_outclk\) & (\Chip4|Chip1|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip4|Chip1|Gt~combout\,
	datac => \Chip4|Chip2|process_0~0clkctrl_outclk\,
	datad => \Chip4|Chip2|Gt~combout\,
	combout => \Chip4|Chip2|Gt~0_combout\);

-- Location: LCCOMB_X61_Y1_N28
\Chip4|Chip2|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip2|Gt~combout\ = (\Chip4|Chip2|comb~0_combout\ & ((\Chip4|Chip2|Gt~0_combout\) # (!\Chip4|Chip2|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip4|Chip2|comb~1_combout\,
	datab => \Chip4|Chip2|comb~0_combout\,
	datac => \Chip4|Chip2|Gt~0_combout\,
	combout => \Chip4|Chip2|Gt~combout\);

-- Location: LCCOMB_X61_Y1_N2
\Chip4|Chip3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip3|process_0~0_combout\ = \B[14]~input_o\ $ (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Chip4|Chip3|process_0~0_combout\);

-- Location: CLKCTRL_G16
\Chip4|Chip3|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip4|Chip3|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip4|Chip3|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X61_Y1_N6
\Chip4|Chip3|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip3|Gt~0_combout\ = (GLOBAL(\Chip4|Chip3|process_0~0clkctrl_outclk\) & ((\Chip4|Chip3|Gt~combout\))) # (!GLOBAL(\Chip4|Chip3|process_0~0clkctrl_outclk\) & (\Chip4|Chip2|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip4|Chip2|Gt~combout\,
	datac => \Chip4|Chip3|process_0~0clkctrl_outclk\,
	datad => \Chip4|Chip3|Gt~combout\,
	combout => \Chip4|Chip3|Gt~0_combout\);

-- Location: LCCOMB_X61_Y1_N20
\Chip4|Chip3|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip3|Gt~combout\ = (\Chip4|Chip3|comb~0_combout\ & ((\Chip4|Chip3|Gt~0_combout\) # (!\Chip4|Chip3|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip4|Chip3|comb~0_combout\,
	datac => \Chip4|Chip3|comb~1_combout\,
	datad => \Chip4|Chip3|Gt~0_combout\,
	combout => \Chip4|Chip3|Gt~combout\);

-- Location: LCCOMB_X59_Y4_N24
\Chip4|Chip4|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip4|process_0~0_combout\ = \B[15]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Chip4|Chip4|process_0~0_combout\);

-- Location: CLKCTRL_G2
\Chip4|Chip4|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip4|Chip4|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip4|Chip4|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X59_Y4_N16
\Chip4|Chip4|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip4|Gt~0_combout\ = (GLOBAL(\Chip4|Chip4|process_0~0clkctrl_outclk\) & ((\Chip4|Chip4|Gt~combout\))) # (!GLOBAL(\Chip4|Chip4|process_0~0clkctrl_outclk\) & (\Chip4|Chip3|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip4|Chip3|Gt~combout\,
	datac => \Chip4|Chip4|process_0~0clkctrl_outclk\,
	datad => \Chip4|Chip4|Gt~combout\,
	combout => \Chip4|Chip4|Gt~0_combout\);

-- Location: LCCOMB_X59_Y4_N6
\Chip4|Chip4|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip4|Gt~combout\ = (\Chip4|Chip4|comb~0_combout\ & ((\Chip4|Chip4|Gt~0_combout\) # (!\Chip4|Chip4|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip4|Chip4|comb~0_combout\,
	datab => \Chip4|Chip4|comb~1_combout\,
	datad => \Chip4|Chip4|Gt~0_combout\,
	combout => \Chip4|Chip4|Gt~combout\);

-- Location: LCCOMB_X56_Y4_N24
\Chip5|Chip1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip1|process_0~0_combout\ = \A[16]~input_o\ $ (\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	combout => \Chip5|Chip1|process_0~0_combout\);

-- Location: CLKCTRL_G1
\Chip5|Chip1|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip5|Chip1|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip5|Chip1|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X56_Y4_N14
\Chip5|Chip1|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip1|Gt~0_combout\ = (GLOBAL(\Chip5|Chip1|process_0~0clkctrl_outclk\) & ((\Chip5|Chip1|Gt~combout\))) # (!GLOBAL(\Chip5|Chip1|process_0~0clkctrl_outclk\) & (\Chip4|Chip4|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip4|Chip4|Gt~combout\,
	datac => \Chip5|Chip1|process_0~0clkctrl_outclk\,
	datad => \Chip5|Chip1|Gt~combout\,
	combout => \Chip5|Chip1|Gt~0_combout\);

-- Location: LCCOMB_X56_Y4_N18
\Chip5|Chip1|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip1|comb~1_combout\ = (\B[16]~input_o\) # (!\A[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	combout => \Chip5|Chip1|comb~1_combout\);

-- Location: LCCOMB_X56_Y4_N20
\Chip5|Chip1|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip1|Gt~combout\ = (\Chip5|Chip1|comb~0_combout\ & ((\Chip5|Chip1|Gt~0_combout\) # (!\Chip5|Chip1|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip5|Chip1|comb~0_combout\,
	datac => \Chip5|Chip1|Gt~0_combout\,
	datad => \Chip5|Chip1|comb~1_combout\,
	combout => \Chip5|Chip1|Gt~combout\);

-- Location: LCCOMB_X56_Y4_N10
\Chip5|Chip2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip2|process_0~0_combout\ = \B[17]~input_o\ $ (\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Chip5|Chip2|process_0~0_combout\);

-- Location: CLKCTRL_G14
\Chip5|Chip2|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip5|Chip2|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip5|Chip2|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X56_Y4_N30
\Chip5|Chip2|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip2|Gt~0_combout\ = (GLOBAL(\Chip5|Chip2|process_0~0clkctrl_outclk\) & ((\Chip5|Chip2|Gt~combout\))) # (!GLOBAL(\Chip5|Chip2|process_0~0clkctrl_outclk\) & (\Chip5|Chip1|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip5|Chip1|Gt~combout\,
	datac => \Chip5|Chip2|process_0~0clkctrl_outclk\,
	datad => \Chip5|Chip2|Gt~combout\,
	combout => \Chip5|Chip2|Gt~0_combout\);

-- Location: LCCOMB_X56_Y4_N6
\Chip5|Chip2|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip2|comb~1_combout\ = (\B[17]~input_o\) # (!\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Chip5|Chip2|comb~1_combout\);

-- Location: LCCOMB_X56_Y4_N28
\Chip5|Chip2|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip2|Gt~combout\ = (\Chip5|Chip2|comb~0_combout\ & ((\Chip5|Chip2|Gt~0_combout\) # (!\Chip5|Chip2|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip5|Chip2|comb~0_combout\,
	datac => \Chip5|Chip2|Gt~0_combout\,
	datad => \Chip5|Chip2|comb~1_combout\,
	combout => \Chip5|Chip2|Gt~combout\);

-- Location: LCCOMB_X56_Y1_N24
\Chip5|Chip3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip3|process_0~0_combout\ = \A[18]~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	combout => \Chip5|Chip3|process_0~0_combout\);

-- Location: CLKCTRL_G15
\Chip5|Chip3|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip5|Chip3|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip5|Chip3|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X56_Y1_N22
\Chip5|Chip3|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip3|Gt~0_combout\ = (GLOBAL(\Chip5|Chip3|process_0~0clkctrl_outclk\) & ((\Chip5|Chip3|Gt~combout\))) # (!GLOBAL(\Chip5|Chip3|process_0~0clkctrl_outclk\) & (\Chip5|Chip2|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip5|Chip2|Gt~combout\,
	datac => \Chip5|Chip3|process_0~0clkctrl_outclk\,
	datad => \Chip5|Chip3|Gt~combout\,
	combout => \Chip5|Chip3|Gt~0_combout\);

-- Location: LCCOMB_X56_Y1_N10
\Chip5|Chip3|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip3|comb~1_combout\ = (\B[18]~input_o\) # (!\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	combout => \Chip5|Chip3|comb~1_combout\);

-- Location: LCCOMB_X56_Y1_N20
\Chip5|Chip3|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip3|Gt~combout\ = (\Chip5|Chip3|comb~0_combout\ & ((\Chip5|Chip3|Gt~0_combout\) # (!\Chip5|Chip3|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip5|Chip3|comb~0_combout\,
	datac => \Chip5|Chip3|Gt~0_combout\,
	datad => \Chip5|Chip3|comb~1_combout\,
	combout => \Chip5|Chip3|Gt~combout\);

-- Location: LCCOMB_X56_Y1_N2
\Chip5|Chip4|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip4|process_0~0_combout\ = \A[19]~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Chip5|Chip4|process_0~0_combout\);

-- Location: CLKCTRL_G18
\Chip5|Chip4|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Chip5|Chip4|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Chip5|Chip4|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X56_Y1_N6
\Chip5|Chip4|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip4|Gt~0_combout\ = (GLOBAL(\Chip5|Chip4|process_0~0clkctrl_outclk\) & ((\Chip5|Chip4|Gt~combout\))) # (!GLOBAL(\Chip5|Chip4|process_0~0clkctrl_outclk\) & (\Chip5|Chip3|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip5|Chip3|Gt~combout\,
	datac => \Chip5|Chip4|process_0~0clkctrl_outclk\,
	datad => \Chip5|Chip4|Gt~combout\,
	combout => \Chip5|Chip4|Gt~0_combout\);

-- Location: LCCOMB_X56_Y1_N28
\Chip5|Chip4|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip4|Gt~combout\ = (\Chip5|Chip4|comb~0_combout\ & ((\Chip5|Chip4|Gt~0_combout\) # (!\Chip5|Chip4|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip5|Chip4|comb~0_combout\,
	datac => \Chip5|Chip4|comb~1_combout\,
	datad => \Chip5|Chip4|Gt~0_combout\,
	combout => \Chip5|Chip4|Gt~combout\);

-- Location: LCCOMB_X50_Y1_N30
\Chip6|Chip1|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip1|Gt~0_combout\ = (\Chip6|Chip1|process_0~0_combout\ & ((\Chip6|Chip1|Gt~combout\))) # (!\Chip6|Chip1|process_0~0_combout\ & (\Chip5|Chip4|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip6|Chip1|process_0~0_combout\,
	datac => \Chip5|Chip4|Gt~combout\,
	datad => \Chip6|Chip1|Gt~combout\,
	combout => \Chip6|Chip1|Gt~0_combout\);

-- Location: LCCOMB_X50_Y1_N20
\Chip6|Chip1|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip1|Gt~combout\ = (\Chip6|Chip1|comb~0_combout\ & ((\Chip6|Chip1|Gt~0_combout\) # (!\Chip6|Chip1|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip6|Chip1|comb~1_combout\,
	datab => \Chip6|Chip1|comb~0_combout\,
	datac => \Chip6|Chip1|Gt~0_combout\,
	combout => \Chip6|Chip1|Gt~combout\);

-- Location: LCCOMB_X50_Y1_N22
\Chip6|Chip2|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip2|Gt~0_combout\ = (\Chip6|Chip2|process_0~0_combout\ & ((\Chip6|Chip2|Gt~combout\))) # (!\Chip6|Chip2|process_0~0_combout\ & (\Chip6|Chip1|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip6|Chip2|process_0~0_combout\,
	datac => \Chip6|Chip1|Gt~combout\,
	datad => \Chip6|Chip2|Gt~combout\,
	combout => \Chip6|Chip2|Gt~0_combout\);

-- Location: LCCOMB_X50_Y1_N12
\Chip6|Chip2|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip2|comb~0_combout\ = (\A[21]~input_o\) # (!\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Chip6|Chip2|comb~0_combout\);

-- Location: LCCOMB_X50_Y1_N28
\Chip6|Chip2|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip2|Gt~combout\ = (\Chip6|Chip2|comb~0_combout\ & ((\Chip6|Chip2|Gt~0_combout\) # (!\Chip6|Chip2|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip6|Chip2|comb~1_combout\,
	datac => \Chip6|Chip2|Gt~0_combout\,
	datad => \Chip6|Chip2|comb~0_combout\,
	combout => \Chip6|Chip2|Gt~combout\);

-- Location: LCCOMB_X49_Y1_N8
\Chip6|Chip3|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip3|Gt~0_combout\ = (\Chip6|Chip3|process_0~0_combout\ & (\Chip6|Chip3|Gt~combout\)) # (!\Chip6|Chip3|process_0~0_combout\ & ((\Chip6|Chip2|Gt~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip6|Chip3|process_0~0_combout\,
	datac => \Chip6|Chip3|Gt~combout\,
	datad => \Chip6|Chip2|Gt~combout\,
	combout => \Chip6|Chip3|Gt~0_combout\);

-- Location: LCCOMB_X49_Y1_N22
\Chip6|Chip3|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip3|Gt~combout\ = (\Chip6|Chip3|comb~0_combout\ & ((\Chip6|Chip3|Gt~0_combout\) # (!\Chip6|Chip3|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip6|Chip3|comb~0_combout\,
	datab => \Chip6|Chip3|comb~1_combout\,
	datac => \Chip6|Chip3|Gt~0_combout\,
	combout => \Chip6|Chip3|Gt~combout\);

-- Location: LCCOMB_X49_Y1_N24
\Chip6|Chip4|Gt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|Gt~0_combout\ = (\Chip6|Chip4|process_0~0_combout\ & ((\Chip6|Chip4|Gt~combout\))) # (!\Chip6|Chip4|process_0~0_combout\ & (\Chip6|Chip3|Gt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip6|Chip4|process_0~0_combout\,
	datac => \Chip6|Chip3|Gt~combout\,
	datad => \Chip6|Chip4|Gt~combout\,
	combout => \Chip6|Chip4|Gt~0_combout\);

-- Location: LCCOMB_X49_Y1_N6
\Chip6|Chip4|Gt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|Gt~combout\ = (\Chip6|Chip4|comb~0_combout\ & ((\Chip6|Chip4|Gt~0_combout\) # (!\Chip6|Chip4|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip6|Chip4|comb~1_combout\,
	datac => \Chip6|Chip4|comb~0_combout\,
	datad => \Chip6|Chip4|Gt~0_combout\,
	combout => \Chip6|Chip4|Gt~combout\);

-- Location: LCCOMB_X49_Y1_N12
\Chip6|Chip4|Eq~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|Eq~6_combout\ = (!\Chip6|Chip4|process_0~0_combout\ & (!\Chip6|Chip1|process_0~0_combout\ & (!\Chip6|Chip3|process_0~0_combout\ & !\Chip6|Chip2|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip6|Chip4|process_0~0_combout\,
	datab => \Chip6|Chip1|process_0~0_combout\,
	datac => \Chip6|Chip3|process_0~0_combout\,
	datad => \Chip6|Chip2|process_0~0_combout\,
	combout => \Chip6|Chip4|Eq~6_combout\);

-- Location: LCCOMB_X65_Y13_N16
\Chip6|Chip4|Eq~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|Eq~1_combout\ = (!\Chip2|Chip1|process_0~0_combout\ & (!\Chip2|Chip2|process_0~0_combout\ & (!\Chip2|Chip4|process_0~0_combout\ & !\Chip2|Chip3|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip1|process_0~0_combout\,
	datab => \Chip2|Chip2|process_0~0_combout\,
	datac => \Chip2|Chip4|process_0~0_combout\,
	datad => \Chip2|Chip3|process_0~0_combout\,
	combout => \Chip6|Chip4|Eq~1_combout\);

-- Location: LCCOMB_X62_Y7_N24
\Chip6|Chip4|Eq~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|Eq~2_combout\ = (!\Chip3|Chip2|process_0~0_combout\ & (!\Chip3|Chip3|process_0~0_combout\ & (!\Chip3|Chip1|process_0~0_combout\ & !\Chip3|Chip4|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip3|Chip2|process_0~0_combout\,
	datab => \Chip3|Chip3|process_0~0_combout\,
	datac => \Chip3|Chip1|process_0~0_combout\,
	datad => \Chip3|Chip4|process_0~0_combout\,
	combout => \Chip6|Chip4|Eq~2_combout\);

-- Location: LCCOMB_X58_Y4_N24
\Chip6|Chip4|Eq~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|Eq~3_combout\ = (!\Chip4|Chip2|process_0~0_combout\ & (!\Chip4|Chip4|process_0~0_combout\ & (!\Chip4|Chip3|process_0~0_combout\ & !\Chip4|Chip1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip4|Chip2|process_0~0_combout\,
	datab => \Chip4|Chip4|process_0~0_combout\,
	datac => \Chip4|Chip3|process_0~0_combout\,
	datad => \Chip4|Chip1|process_0~0_combout\,
	combout => \Chip6|Chip4|Eq~3_combout\);

-- Location: LCCOMB_X114_Y37_N4
\Chip6|Chip4|Eq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|Eq~0_combout\ = (!\Chip1|Chip3|process_0~0_combout\ & (!\Chip1|Chip4|process_0~0_combout\ & (!\Chip1|Chip1|process_0~0_combout\ & !\Chip1|Chip2|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip3|process_0~0_combout\,
	datab => \Chip1|Chip4|process_0~0_combout\,
	datac => \Chip1|Chip1|process_0~0_combout\,
	datad => \Chip1|Chip2|process_0~0_combout\,
	combout => \Chip6|Chip4|Eq~0_combout\);

-- Location: LCCOMB_X62_Y7_N18
\Chip6|Chip4|Eq~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|Eq~4_combout\ = (\Chip6|Chip4|Eq~1_combout\ & (\Chip6|Chip4|Eq~2_combout\ & (\Chip6|Chip4|Eq~3_combout\ & \Chip6|Chip4|Eq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip6|Chip4|Eq~1_combout\,
	datab => \Chip6|Chip4|Eq~2_combout\,
	datac => \Chip6|Chip4|Eq~3_combout\,
	datad => \Chip6|Chip4|Eq~0_combout\,
	combout => \Chip6|Chip4|Eq~4_combout\);

-- Location: LCCOMB_X62_Y7_N20
\Chip6|Chip4|Eq~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|Eq~5_combout\ = (!\Chip5|Chip4|process_0~0_combout\ & (!\Chip5|Chip3|process_0~0_combout\ & (!\Chip5|Chip1|process_0~0_combout\ & !\Chip5|Chip2|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip5|Chip4|process_0~0_combout\,
	datab => \Chip5|Chip3|process_0~0_combout\,
	datac => \Chip5|Chip1|process_0~0_combout\,
	datad => \Chip5|Chip2|process_0~0_combout\,
	combout => \Chip6|Chip4|Eq~5_combout\);

-- Location: IOIBUF_X67_Y0_N8
\Ei~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ei,
	o => \Ei~input_o\);

-- Location: LCCOMB_X62_Y3_N0
\Chip6|Chip4|Eq~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|Eq~7_combout\ = (\Chip6|Chip4|Eq~6_combout\ & (\Chip6|Chip4|Eq~4_combout\ & (\Chip6|Chip4|Eq~5_combout\ & \Ei~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip6|Chip4|Eq~6_combout\,
	datab => \Chip6|Chip4|Eq~4_combout\,
	datac => \Chip6|Chip4|Eq~5_combout\,
	datad => \Ei~input_o\,
	combout => \Chip6|Chip4|Eq~7_combout\);

-- Location: IOIBUF_X115_Y36_N8
\Li~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Li,
	o => \Li~input_o\);

-- Location: LCCOMB_X114_Y37_N20
\Chip1|Chip1|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Lt~0_combout\ = (GLOBAL(\Chip1|Chip1|process_0~0clkctrl_outclk\) & ((\Chip1|Chip1|Lt~combout\))) # (!GLOBAL(\Chip1|Chip1|process_0~0clkctrl_outclk\) & (\Li~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Li~input_o\,
	datac => \Chip1|Chip1|process_0~0clkctrl_outclk\,
	datad => \Chip1|Chip1|Lt~combout\,
	combout => \Chip1|Chip1|Lt~0_combout\);

-- Location: LCCOMB_X114_Y37_N10
\Chip1|Chip1|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip1|Lt~combout\ = (\Chip1|Chip1|comb~1_combout\ & ((\Chip1|Chip1|Lt~0_combout\) # (!\Chip1|Chip1|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip1|Chip1|comb~1_combout\,
	datac => \Chip1|Chip1|comb~0_combout\,
	datad => \Chip1|Chip1|Lt~0_combout\,
	combout => \Chip1|Chip1|Lt~combout\);

-- Location: LCCOMB_X114_Y37_N12
\Chip1|Chip2|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip2|Lt~0_combout\ = (GLOBAL(\Chip1|Chip2|process_0~0clkctrl_outclk\) & ((\Chip1|Chip2|Lt~combout\))) # (!GLOBAL(\Chip1|Chip2|process_0~0clkctrl_outclk\) & (\Chip1|Chip1|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip1|Lt~combout\,
	datac => \Chip1|Chip2|process_0~0clkctrl_outclk\,
	datad => \Chip1|Chip2|Lt~combout\,
	combout => \Chip1|Chip2|Lt~0_combout\);

-- Location: LCCOMB_X114_Y37_N18
\Chip1|Chip2|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip2|Lt~combout\ = (\Chip1|Chip2|comb~1_combout\ & ((\Chip1|Chip2|Lt~0_combout\) # (!\Chip1|Chip2|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip1|Chip2|comb~1_combout\,
	datac => \Chip1|Chip2|comb~0_combout\,
	datad => \Chip1|Chip2|Lt~0_combout\,
	combout => \Chip1|Chip2|Lt~combout\);

-- Location: LCCOMB_X114_Y35_N26
\Chip1|Chip3|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip3|Lt~0_combout\ = (GLOBAL(\Chip1|Chip3|process_0~0clkctrl_outclk\) & ((\Chip1|Chip3|Lt~combout\))) # (!GLOBAL(\Chip1|Chip3|process_0~0clkctrl_outclk\) & (\Chip1|Chip2|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip3|process_0~0clkctrl_outclk\,
	datac => \Chip1|Chip2|Lt~combout\,
	datad => \Chip1|Chip3|Lt~combout\,
	combout => \Chip1|Chip3|Lt~0_combout\);

-- Location: LCCOMB_X114_Y35_N0
\Chip1|Chip3|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip3|Lt~combout\ = (\Chip1|Chip3|comb~1_combout\ & ((\Chip1|Chip3|Lt~0_combout\) # (!\Chip1|Chip3|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip1|Chip3|comb~0_combout\,
	datac => \Chip1|Chip3|Lt~0_combout\,
	datad => \Chip1|Chip3|comb~1_combout\,
	combout => \Chip1|Chip3|Lt~combout\);

-- Location: LCCOMB_X114_Y35_N10
\Chip1|Chip4|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip4|Lt~0_combout\ = (GLOBAL(\Chip1|Chip4|process_0~0clkctrl_outclk\) & ((\Chip1|Chip4|Lt~combout\))) # (!GLOBAL(\Chip1|Chip4|process_0~0clkctrl_outclk\) & (\Chip1|Chip3|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip1|Chip3|Lt~combout\,
	datac => \Chip1|Chip4|process_0~0clkctrl_outclk\,
	datad => \Chip1|Chip4|Lt~combout\,
	combout => \Chip1|Chip4|Lt~0_combout\);

-- Location: LCCOMB_X114_Y35_N16
\Chip1|Chip4|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip1|Chip4|Lt~combout\ = (\Chip1|Chip4|comb~1_combout\ & ((\Chip1|Chip4|Lt~0_combout\) # (!\Chip1|Chip4|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip1|Chip4|comb~0_combout\,
	datac => \Chip1|Chip4|comb~1_combout\,
	datad => \Chip1|Chip4|Lt~0_combout\,
	combout => \Chip1|Chip4|Lt~combout\);

-- Location: LCCOMB_X113_Y31_N26
\Chip2|Chip1|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip1|Lt~0_combout\ = (GLOBAL(\Chip2|Chip1|process_0~0clkctrl_outclk\) & ((\Chip2|Chip1|Lt~combout\))) # (!GLOBAL(\Chip2|Chip1|process_0~0clkctrl_outclk\) & (\Chip1|Chip4|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip1|Chip4|Lt~combout\,
	datac => \Chip2|Chip1|process_0~0clkctrl_outclk\,
	datad => \Chip2|Chip1|Lt~combout\,
	combout => \Chip2|Chip1|Lt~0_combout\);

-- Location: LCCOMB_X113_Y31_N16
\Chip2|Chip1|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip1|Lt~combout\ = (\Chip2|Chip1|comb~1_combout\ & ((\Chip2|Chip1|Lt~0_combout\) # (!\Chip2|Chip1|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip1|comb~0_combout\,
	datac => \Chip2|Chip1|Lt~0_combout\,
	datad => \Chip2|Chip1|comb~1_combout\,
	combout => \Chip2|Chip1|Lt~combout\);

-- Location: LCCOMB_X113_Y31_N10
\Chip2|Chip2|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip2|Lt~0_combout\ = (GLOBAL(\Chip2|Chip2|process_0~0clkctrl_outclk\) & ((\Chip2|Chip2|Lt~combout\))) # (!GLOBAL(\Chip2|Chip2|process_0~0clkctrl_outclk\) & (\Chip2|Chip1|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip1|Lt~combout\,
	datac => \Chip2|Chip2|process_0~0clkctrl_outclk\,
	datad => \Chip2|Chip2|Lt~combout\,
	combout => \Chip2|Chip2|Lt~0_combout\);

-- Location: LCCOMB_X113_Y31_N0
\Chip2|Chip2|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip2|Lt~combout\ = (\Chip2|Chip2|comb~1_combout\ & ((\Chip2|Chip2|Lt~0_combout\) # (!\Chip2|Chip2|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip2|comb~0_combout\,
	datac => \Chip2|Chip2|comb~1_combout\,
	datad => \Chip2|Chip2|Lt~0_combout\,
	combout => \Chip2|Chip2|Lt~combout\);

-- Location: LCCOMB_X114_Y25_N28
\Chip2|Chip3|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip3|Lt~0_combout\ = (GLOBAL(\Chip2|Chip3|process_0~0clkctrl_outclk\) & ((\Chip2|Chip3|Lt~combout\))) # (!GLOBAL(\Chip2|Chip3|process_0~0clkctrl_outclk\) & (\Chip2|Chip2|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip2|Lt~combout\,
	datac => \Chip2|Chip3|process_0~0clkctrl_outclk\,
	datad => \Chip2|Chip3|Lt~combout\,
	combout => \Chip2|Chip3|Lt~0_combout\);

-- Location: LCCOMB_X114_Y25_N10
\Chip2|Chip3|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip3|Lt~combout\ = (\Chip2|Chip3|comb~1_combout\ & ((\Chip2|Chip3|Lt~0_combout\) # (!\Chip2|Chip3|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip2|Chip3|Lt~0_combout\,
	datab => \Chip2|Chip3|comb~0_combout\,
	datad => \Chip2|Chip3|comb~1_combout\,
	combout => \Chip2|Chip3|Lt~combout\);

-- Location: LCCOMB_X114_Y24_N2
\Chip2|Chip4|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip4|Lt~0_combout\ = (GLOBAL(\Chip2|Chip4|process_0~0clkctrl_outclk\) & ((\Chip2|Chip4|Lt~combout\))) # (!GLOBAL(\Chip2|Chip4|process_0~0clkctrl_outclk\) & (\Chip2|Chip3|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip3|Lt~combout\,
	datac => \Chip2|Chip4|process_0~0clkctrl_outclk\,
	datad => \Chip2|Chip4|Lt~combout\,
	combout => \Chip2|Chip4|Lt~0_combout\);

-- Location: LCCOMB_X114_Y24_N0
\Chip2|Chip4|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip2|Chip4|Lt~combout\ = (\Chip2|Chip4|comb~1_combout\ & ((\Chip2|Chip4|Lt~0_combout\) # (!\Chip2|Chip4|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip4|comb~0_combout\,
	datac => \Chip2|Chip4|comb~1_combout\,
	datad => \Chip2|Chip4|Lt~0_combout\,
	combout => \Chip2|Chip4|Lt~combout\);

-- Location: LCCOMB_X114_Y24_N10
\Chip3|Chip1|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip1|Lt~0_combout\ = (GLOBAL(\Chip3|Chip1|process_0~0clkctrl_outclk\) & ((\Chip3|Chip1|Lt~combout\))) # (!GLOBAL(\Chip3|Chip1|process_0~0clkctrl_outclk\) & (\Chip2|Chip4|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip2|Chip4|Lt~combout\,
	datac => \Chip3|Chip1|process_0~0clkctrl_outclk\,
	datad => \Chip3|Chip1|Lt~combout\,
	combout => \Chip3|Chip1|Lt~0_combout\);

-- Location: LCCOMB_X114_Y24_N16
\Chip3|Chip1|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip1|Lt~combout\ = (\Chip3|Chip1|comb~1_combout\ & ((\Chip3|Chip1|Lt~0_combout\) # (!\Chip3|Chip1|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip3|Chip1|comb~0_combout\,
	datac => \Chip3|Chip1|comb~1_combout\,
	datad => \Chip3|Chip1|Lt~0_combout\,
	combout => \Chip3|Chip1|Lt~combout\);

-- Location: LCCOMB_X65_Y7_N26
\Chip3|Chip2|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip2|Lt~0_combout\ = (GLOBAL(\Chip3|Chip2|process_0~0clkctrl_outclk\) & ((\Chip3|Chip2|Lt~combout\))) # (!GLOBAL(\Chip3|Chip2|process_0~0clkctrl_outclk\) & (\Chip3|Chip1|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip3|Chip1|Lt~combout\,
	datac => \Chip3|Chip2|process_0~0clkctrl_outclk\,
	datad => \Chip3|Chip2|Lt~combout\,
	combout => \Chip3|Chip2|Lt~0_combout\);

-- Location: LCCOMB_X65_Y7_N16
\Chip3|Chip2|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip2|Lt~combout\ = (\Chip3|Chip2|comb~1_combout\ & ((\Chip3|Chip2|Lt~0_combout\) # (!\Chip3|Chip2|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip3|Chip2|comb~0_combout\,
	datac => \Chip3|Chip2|Lt~0_combout\,
	datad => \Chip3|Chip2|comb~1_combout\,
	combout => \Chip3|Chip2|Lt~combout\);

-- Location: LCCOMB_X65_Y7_N2
\Chip3|Chip3|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip3|Lt~0_combout\ = (GLOBAL(\Chip3|Chip3|process_0~0clkctrl_outclk\) & ((\Chip3|Chip3|Lt~combout\))) # (!GLOBAL(\Chip3|Chip3|process_0~0clkctrl_outclk\) & (\Chip3|Chip2|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip3|Chip2|Lt~combout\,
	datac => \Chip3|Chip3|process_0~0clkctrl_outclk\,
	datad => \Chip3|Chip3|Lt~combout\,
	combout => \Chip3|Chip3|Lt~0_combout\);

-- Location: LCCOMB_X65_Y7_N0
\Chip3|Chip3|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip3|Lt~combout\ = (\Chip3|Chip3|comb~1_combout\ & ((\Chip3|Chip3|Lt~0_combout\) # (!\Chip3|Chip3|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip3|Chip3|comb~0_combout\,
	datac => \Chip3|Chip3|comb~1_combout\,
	datad => \Chip3|Chip3|Lt~0_combout\,
	combout => \Chip3|Chip3|Lt~combout\);

-- Location: LCCOMB_X65_Y4_N18
\Chip3|Chip4|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip4|Lt~0_combout\ = (GLOBAL(\Chip3|Chip4|process_0~0clkctrl_outclk\) & ((\Chip3|Chip4|Lt~combout\))) # (!GLOBAL(\Chip3|Chip4|process_0~0clkctrl_outclk\) & (\Chip3|Chip3|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip3|Chip3|Lt~combout\,
	datac => \Chip3|Chip4|process_0~0clkctrl_outclk\,
	datad => \Chip3|Chip4|Lt~combout\,
	combout => \Chip3|Chip4|Lt~0_combout\);

-- Location: LCCOMB_X65_Y4_N16
\Chip3|Chip4|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip3|Chip4|Lt~combout\ = (\Chip3|Chip4|comb~1_combout\ & ((\Chip3|Chip4|Lt~0_combout\) # (!\Chip3|Chip4|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip3|Chip4|comb~0_combout\,
	datac => \Chip3|Chip4|comb~1_combout\,
	datad => \Chip3|Chip4|Lt~0_combout\,
	combout => \Chip3|Chip4|Lt~combout\);

-- Location: LCCOMB_X65_Y4_N10
\Chip4|Chip1|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip1|Lt~0_combout\ = (GLOBAL(\Chip4|Chip1|process_0~0clkctrl_outclk\) & ((\Chip4|Chip1|Lt~combout\))) # (!GLOBAL(\Chip4|Chip1|process_0~0clkctrl_outclk\) & (\Chip3|Chip4|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip3|Chip4|Lt~combout\,
	datac => \Chip4|Chip1|process_0~0clkctrl_outclk\,
	datad => \Chip4|Chip1|Lt~combout\,
	combout => \Chip4|Chip1|Lt~0_combout\);

-- Location: LCCOMB_X65_Y4_N0
\Chip4|Chip1|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip1|Lt~combout\ = (\Chip4|Chip1|comb~1_combout\ & ((\Chip4|Chip1|Lt~0_combout\) # (!\Chip4|Chip1|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip4|Chip1|comb~0_combout\,
	datac => \Chip4|Chip1|comb~1_combout\,
	datad => \Chip4|Chip1|Lt~0_combout\,
	combout => \Chip4|Chip1|Lt~combout\);

-- Location: LCCOMB_X61_Y1_N18
\Chip4|Chip2|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip2|Lt~0_combout\ = (GLOBAL(\Chip4|Chip2|process_0~0clkctrl_outclk\) & ((\Chip4|Chip2|Lt~combout\))) # (!GLOBAL(\Chip4|Chip2|process_0~0clkctrl_outclk\) & (\Chip4|Chip1|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip4|Chip1|Lt~combout\,
	datac => \Chip4|Chip2|process_0~0clkctrl_outclk\,
	datad => \Chip4|Chip2|Lt~combout\,
	combout => \Chip4|Chip2|Lt~0_combout\);

-- Location: LCCOMB_X61_Y1_N16
\Chip4|Chip2|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip2|Lt~combout\ = (\Chip4|Chip2|comb~1_combout\ & ((\Chip4|Chip2|Lt~0_combout\) # (!\Chip4|Chip2|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip4|Chip2|comb~0_combout\,
	datac => \Chip4|Chip2|comb~1_combout\,
	datad => \Chip4|Chip2|Lt~0_combout\,
	combout => \Chip4|Chip2|Lt~combout\);

-- Location: LCCOMB_X61_Y1_N10
\Chip4|Chip3|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip3|Lt~0_combout\ = (GLOBAL(\Chip4|Chip3|process_0~0clkctrl_outclk\) & ((\Chip4|Chip3|Lt~combout\))) # (!GLOBAL(\Chip4|Chip3|process_0~0clkctrl_outclk\) & (\Chip4|Chip2|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip4|Chip2|Lt~combout\,
	datac => \Chip4|Chip3|process_0~0clkctrl_outclk\,
	datad => \Chip4|Chip3|Lt~combout\,
	combout => \Chip4|Chip3|Lt~0_combout\);

-- Location: LCCOMB_X61_Y1_N0
\Chip4|Chip3|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip3|Lt~combout\ = (\Chip4|Chip3|comb~1_combout\ & ((\Chip4|Chip3|Lt~0_combout\) # (!\Chip4|Chip3|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip4|Chip3|comb~0_combout\,
	datac => \Chip4|Chip3|comb~1_combout\,
	datad => \Chip4|Chip3|Lt~0_combout\,
	combout => \Chip4|Chip3|Lt~combout\);

-- Location: LCCOMB_X59_Y4_N12
\Chip4|Chip4|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip4|Lt~0_combout\ = (GLOBAL(\Chip4|Chip4|process_0~0clkctrl_outclk\) & ((\Chip4|Chip4|Lt~combout\))) # (!GLOBAL(\Chip4|Chip4|process_0~0clkctrl_outclk\) & (\Chip4|Chip3|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip4|Chip3|Lt~combout\,
	datac => \Chip4|Chip4|process_0~0clkctrl_outclk\,
	datad => \Chip4|Chip4|Lt~combout\,
	combout => \Chip4|Chip4|Lt~0_combout\);

-- Location: LCCOMB_X59_Y4_N18
\Chip4|Chip4|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip4|Chip4|Lt~combout\ = (\Chip4|Chip4|comb~1_combout\ & ((\Chip4|Chip4|Lt~0_combout\) # (!\Chip4|Chip4|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip4|Chip4|comb~0_combout\,
	datab => \Chip4|Chip4|comb~1_combout\,
	datad => \Chip4|Chip4|Lt~0_combout\,
	combout => \Chip4|Chip4|Lt~combout\);

-- Location: LCCOMB_X56_Y4_N2
\Chip5|Chip1|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip1|Lt~0_combout\ = (GLOBAL(\Chip5|Chip1|process_0~0clkctrl_outclk\) & ((\Chip5|Chip1|Lt~combout\))) # (!GLOBAL(\Chip5|Chip1|process_0~0clkctrl_outclk\) & (\Chip4|Chip4|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip4|Chip4|Lt~combout\,
	datac => \Chip5|Chip1|process_0~0clkctrl_outclk\,
	datad => \Chip5|Chip1|Lt~combout\,
	combout => \Chip5|Chip1|Lt~0_combout\);

-- Location: LCCOMB_X56_Y4_N0
\Chip5|Chip1|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip1|Lt~combout\ = (\Chip5|Chip1|comb~1_combout\ & ((\Chip5|Chip1|Lt~0_combout\) # (!\Chip5|Chip1|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip5|Chip1|comb~1_combout\,
	datac => \Chip5|Chip1|comb~0_combout\,
	datad => \Chip5|Chip1|Lt~0_combout\,
	combout => \Chip5|Chip1|Lt~combout\);

-- Location: LCCOMB_X56_Y4_N26
\Chip5|Chip2|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip2|Lt~0_combout\ = (GLOBAL(\Chip5|Chip2|process_0~0clkctrl_outclk\) & ((\Chip5|Chip2|Lt~combout\))) # (!GLOBAL(\Chip5|Chip2|process_0~0clkctrl_outclk\) & (\Chip5|Chip1|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip5|Chip1|Lt~combout\,
	datac => \Chip5|Chip2|process_0~0clkctrl_outclk\,
	datad => \Chip5|Chip2|Lt~combout\,
	combout => \Chip5|Chip2|Lt~0_combout\);

-- Location: LCCOMB_X56_Y4_N16
\Chip5|Chip2|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip2|Lt~combout\ = (\Chip5|Chip2|comb~1_combout\ & ((\Chip5|Chip2|Lt~0_combout\) # (!\Chip5|Chip2|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip5|Chip2|comb~0_combout\,
	datac => \Chip5|Chip2|Lt~0_combout\,
	datad => \Chip5|Chip2|comb~1_combout\,
	combout => \Chip5|Chip2|Lt~combout\);

-- Location: LCCOMB_X56_Y1_N26
\Chip5|Chip3|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip3|Lt~0_combout\ = (GLOBAL(\Chip5|Chip3|process_0~0clkctrl_outclk\) & ((\Chip5|Chip3|Lt~combout\))) # (!GLOBAL(\Chip5|Chip3|process_0~0clkctrl_outclk\) & (\Chip5|Chip2|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip5|Chip2|Lt~combout\,
	datac => \Chip5|Chip3|process_0~0clkctrl_outclk\,
	datad => \Chip5|Chip3|Lt~combout\,
	combout => \Chip5|Chip3|Lt~0_combout\);

-- Location: LCCOMB_X56_Y1_N0
\Chip5|Chip3|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip3|Lt~combout\ = (\Chip5|Chip3|comb~1_combout\ & ((\Chip5|Chip3|Lt~0_combout\) # (!\Chip5|Chip3|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip5|Chip3|comb~0_combout\,
	datac => \Chip5|Chip3|Lt~0_combout\,
	datad => \Chip5|Chip3|comb~1_combout\,
	combout => \Chip5|Chip3|Lt~combout\);

-- Location: LCCOMB_X56_Y1_N18
\Chip5|Chip4|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip4|Lt~0_combout\ = (GLOBAL(\Chip5|Chip4|process_0~0clkctrl_outclk\) & ((\Chip5|Chip4|Lt~combout\))) # (!GLOBAL(\Chip5|Chip4|process_0~0clkctrl_outclk\) & (\Chip5|Chip3|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip5|Chip3|Lt~combout\,
	datac => \Chip5|Chip4|process_0~0clkctrl_outclk\,
	datad => \Chip5|Chip4|Lt~combout\,
	combout => \Chip5|Chip4|Lt~0_combout\);

-- Location: LCCOMB_X56_Y1_N16
\Chip5|Chip4|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip5|Chip4|Lt~combout\ = (\Chip5|Chip4|comb~1_combout\ & ((\Chip5|Chip4|Lt~0_combout\) # (!\Chip5|Chip4|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip5|Chip4|comb~0_combout\,
	datac => \Chip5|Chip4|comb~1_combout\,
	datad => \Chip5|Chip4|Lt~0_combout\,
	combout => \Chip5|Chip4|Lt~combout\);

-- Location: LCCOMB_X50_Y1_N2
\Chip6|Chip1|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip1|Lt~0_combout\ = (\Chip6|Chip1|process_0~0_combout\ & ((\Chip6|Chip1|Lt~combout\))) # (!\Chip6|Chip1|process_0~0_combout\ & (\Chip5|Chip4|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip5|Chip4|Lt~combout\,
	datab => \Chip6|Chip1|process_0~0_combout\,
	datad => \Chip6|Chip1|Lt~combout\,
	combout => \Chip6|Chip1|Lt~0_combout\);

-- Location: LCCOMB_X50_Y1_N16
\Chip6|Chip1|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip1|Lt~combout\ = (\Chip6|Chip1|comb~1_combout\ & ((\Chip6|Chip1|Lt~0_combout\) # (!\Chip6|Chip1|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip6|Chip1|comb~0_combout\,
	datac => \Chip6|Chip1|comb~1_combout\,
	datad => \Chip6|Chip1|Lt~0_combout\,
	combout => \Chip6|Chip1|Lt~combout\);

-- Location: LCCOMB_X50_Y1_N10
\Chip6|Chip2|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip2|Lt~0_combout\ = (\Chip6|Chip2|process_0~0_combout\ & ((\Chip6|Chip2|Lt~combout\))) # (!\Chip6|Chip2|process_0~0_combout\ & (\Chip6|Chip1|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip6|Chip2|process_0~0_combout\,
	datac => \Chip6|Chip1|Lt~combout\,
	datad => \Chip6|Chip2|Lt~combout\,
	combout => \Chip6|Chip2|Lt~0_combout\);

-- Location: LCCOMB_X50_Y1_N0
\Chip6|Chip2|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip2|Lt~combout\ = (\Chip6|Chip2|comb~1_combout\ & ((\Chip6|Chip2|Lt~0_combout\) # (!\Chip6|Chip2|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip6|Chip2|comb~0_combout\,
	datac => \Chip6|Chip2|comb~1_combout\,
	datad => \Chip6|Chip2|Lt~0_combout\,
	combout => \Chip6|Chip2|Lt~combout\);

-- Location: LCCOMB_X49_Y1_N4
\Chip6|Chip3|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip3|Lt~0_combout\ = (\Chip6|Chip3|process_0~0_combout\ & ((\Chip6|Chip3|Lt~combout\))) # (!\Chip6|Chip3|process_0~0_combout\ & (\Chip6|Chip2|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip6|Chip3|process_0~0_combout\,
	datac => \Chip6|Chip2|Lt~combout\,
	datad => \Chip6|Chip3|Lt~combout\,
	combout => \Chip6|Chip3|Lt~0_combout\);

-- Location: LCCOMB_X49_Y1_N18
\Chip6|Chip3|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip3|Lt~combout\ = (\Chip6|Chip3|comb~1_combout\ & ((\Chip6|Chip3|Lt~0_combout\) # (!\Chip6|Chip3|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip6|Chip3|comb~0_combout\,
	datab => \Chip6|Chip3|comb~1_combout\,
	datac => \Chip6|Chip3|Lt~0_combout\,
	combout => \Chip6|Chip3|Lt~combout\);

-- Location: LCCOMB_X49_Y1_N20
\Chip6|Chip4|Lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|Lt~0_combout\ = (\Chip6|Chip4|process_0~0_combout\ & ((\Chip6|Chip4|Lt~combout\))) # (!\Chip6|Chip4|process_0~0_combout\ & (\Chip6|Chip3|Lt~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Chip6|Chip4|process_0~0_combout\,
	datab => \Chip6|Chip3|Lt~combout\,
	datad => \Chip6|Chip4|Lt~combout\,
	combout => \Chip6|Chip4|Lt~0_combout\);

-- Location: LCCOMB_X49_Y1_N2
\Chip6|Chip4|Lt\ : cycloneive_lcell_comb
-- Equation(s):
-- \Chip6|Chip4|Lt~combout\ = (\Chip6|Chip4|comb~1_combout\ & ((\Chip6|Chip4|Lt~0_combout\) # (!\Chip6|Chip4|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Chip6|Chip4|comb~1_combout\,
	datac => \Chip6|Chip4|comb~0_combout\,
	datad => \Chip6|Chip4|Lt~0_combout\,
	combout => \Chip6|Chip4|Lt~combout\);

ww_Gt <= \Gt~output_o\;

ww_Eq <= \Eq~output_o\;

ww_Lt <= \Lt~output_o\;
END structure;


