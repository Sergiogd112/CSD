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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/13/2022 11:51:13"

-- Vhdl Test Bench template for design  :  Prog_Timer
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Prog_Timer_vhd_tst IS
END Prog_Timer_vhd_tst;
ARCHITECTURE Prog_Timer_arch OF Prog_Timer_vhd_tst IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL CD : STD_LOGIC;
	SIGNAL CLK : STD_LOGIC;
	SIGNAL ETP : STD_LOGIC;
	SIGNAL PC : STD_LOGIC_VECTOR(23 DOWNTO 0);
	SIGNAL Timer_out : STD_LOGIC;
	SIGNAL TRG : STD_LOGIC;
	COMPONENT Prog_Timer
		PORT (
			CD : IN STD_LOGIC;
			CLK : IN STD_LOGIC;
			ETP : OUT STD_LOGIC;
			PC : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
			Timer_out : OUT STD_LOGIC;
			TRG : IN STD_LOGIC
		);
	END COMPONENT;
CONSTANT CLK_period : TIME := 62.5 ns; -- 16 MHz
	-- ***************************************************************************
BEGIN
	i1 : Prog_Timer
	PORT MAP(
		-- list connections between master ports and signals
		CD => CD,
		CLK => CLK,
		ETP => ETP,
		PC => PC,
		Timer_out => Timer_out,
		TRG => TRG
	);
	-- ***************************************************************************
	-- Clock process definitions
	CLK_process : PROCESS
	BEGIN
		CLK <= '0';
		WAIT FOR 3 * CLK_period/5;
		CLK <= '1';
		WAIT FOR 2 * CLK_period/5; -- Duty cycle of 40%, rectangular wave
	END PROCESS;

	-- ***************************************************************************
	-- Stimulus process for signals CD, TRG and TOF
	stim_proc : PROCESS
	BEGIN
		WAIT FOR CLK_period * 7.65;

		CD <= '0';
		TRG <= '0';
		PC<="0000000000000000000000000";
		WAIT FOR CLK_period * 3.53;

		-- Clear direct pulse:
		CD <= '1';
		WAIT FOR CLK_period * 2.23;
		CD <= '0';
		WAIT FOR CLK_period * 6.78;
		PC <= "111111111111111111111111";
		WAIT FOR CLK_period * 2.23;
		-- Trigger pulse:
		TRG <= '1';
		WAIT FOR CLK_period * 2.23;
		TRG <= '0';
		WAIT FOR CLK_period * 205;
	END PROCESS;
END Prog_Timer_arch;