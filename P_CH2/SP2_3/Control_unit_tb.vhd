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
-- Generated on "05/09/2022 14:03:45"

-- Vhdl Test Bench template for design  :  Control_unit
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Control_unit_vhd_tst IS
END Control_unit_vhd_tst;
ARCHITECTURE Control_unit_arch OF Control_unit_vhd_tst IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL CD : STD_LOGIC;
	SIGNAL Clk : STD_LOGIC;
	SIGNAL CLR_C : STD_LOGIC;
	SIGNAL CNT_E : STD_LOGIC;
	SIGNAL ETP : STD_LOGIC;
	SIGNAL LD_R : STD_LOGIC;
	SIGNAL Timer_out : STD_LOGIC;
	SIGNAL TOF : STD_LOGIC;
	SIGNAL TRG : STD_LOGIC;
	COMPONENT Control_unit
		PORT (
			CD : IN STD_LOGIC;
			Clk : IN STD_LOGIC;
			CLR_C : OUT STD_LOGIC;
			CNT_E : OUT STD_LOGIC;
			ETP : OUT STD_LOGIC;
			LD_R : OUT STD_LOGIC;
			Timer_out : OUT STD_LOGIC;
			TOF : IN STD_LOGIC;
			TRG : IN STD_LOGIC
		);
	END COMPONENT;
	-- ***************************************************************************
	-- Clock period definitions
	CONSTANT CLK_period : TIME := 62.5 ns; -- 16 MHz
	-- ***************************************************************************
BEGIN
	i1 : Control_unit
	PORT MAP(
		-- list connections between master ports and signals
		CD => CD,
		Clk => Clk,
		CLR_C => CLR_C,
		CNT_E => CNT_E,
		ETP => ETP,
		LD_R => LD_R,
		Timer_out => Timer_out,
		TOF => TOF,
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
		TOF <= '0';
		WAIT FOR CLK_period * 3.53;

		-- Clear direct pulse:
		CD <= '1';
		WAIT FOR CLK_period * 2.23;
		CD <= '0';
		WAIT FOR CLK_period * 6.78;

		
		
		-- Trigger pulse:
		TRG <= '1';
		WAIT FOR CLK_period * 2.23;
		TRG <= '0';

		-- ***************************************************************************
		-- From now on the FMS must send automatically control signals to the datapath
		-- Once enabled, the datapath counts up at each CLK rising edge.
		-- Thus, for instance, waiting now for 200·CLK_period
		WAIT FOR CLK_period * 200;
		-- means that the datapath will set the timeout flag (TOF)for the FSM
		-- after reaching 200.
		-- Let's simulate such datapath response:
		TOF <= '1';
		WAIT FOR CLK_period * 1.3;
		-- And, so, when sampled, the FSM must generate ETP indicator and be ready at

		-- Idle for a new operation.
		TOF <= '0';
		WAIT FOR CLK_period * 6.2; -- (or any other time until the next operation)

		-- Here you can add other TOF durations to check this FSM for other PC values
		WAIT;
	END PROCESS;
END Control_unit_arch;