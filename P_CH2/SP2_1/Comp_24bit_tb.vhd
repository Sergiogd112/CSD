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
-- Generated on "04/04/2022 15:13:30"

-- Vhdl Test Bench template for design  :  Comp_24bit
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Comp_24bit_vhd_tst IS
END Comp_24bit_vhd_tst;
ARCHITECTURE Comp_24bit_arch OF Comp_24bit_vhd_tst IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL A : STD_LOGIC_VECTOR(23 DOWNTO 0);
	SIGNAL B : STD_LOGIC_VECTOR(23 DOWNTO 0);
	SIGNAL Ei : STD_LOGIC;
	SIGNAL Eq : STD_LOGIC;
	SIGNAL Gi : STD_LOGIC;
	SIGNAL Gt : STD_LOGIC;
	SIGNAL Li : STD_LOGIC;
	SIGNAL Lt : STD_LOGIC;
	COMPONENT Comp_24bit
		PORT (
			A : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
			B : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
			Ei : IN STD_LOGIC;
			Eq : OUT STD_LOGIC;
			Gi : IN STD_LOGIC;
			Gt : OUT STD_LOGIC;
			Li : IN STD_LOGIC;
			Lt : OUT STD_LOGIC
		);
	END COMPONENT;
	CONSTANT Min_Pulse : TIME := 2.57 us;

BEGIN
	i1 : Comp_24bit
	PORT MAP(
		-- list connections between master ports and signals
		A => A,
		B => B,
		Ei => Ei,
		Eq => Eq,
		Gi => Gi,
		Gt => Gt,
		Li => Li,
		Lt => Lt
	);
	-- code that executes only once                      
	stim_proc : PROCESS
	BEGIN
		Gi <= '0';
		Ei <= '1';
		Li <= '0';
		WAIT FOR 70 ns;
		WAIT FOR Min_Pulse * 5;

		-- Some input values:
		A <= "000000000000000101100110"; -- 358
		B <= "000000000000000011011110"; --  222
		------
		-- 16 ==> 0 00010000
		WAIT FOR Min_Pulse * 5;

		B <= "000000000000000101100110"; -- 358
		A <= "000000000000000011011110"; -- 222
		------
		-- 41 ==> 0 00101000	
		WAIT FOR Min_Pulse * 5;

		A <= "000000000000000101100110"; -- 358
		B <= "000000000000000101100110"; -- 222
		------
		-- 378 ==> 1 01111010	
		WAIT FOR Min_Pulse * 5;

		-- Let's try the flag Z
		A <= "000000000000000011011110"; -- 222
		B <= "000000000000000011011110"; -- 222
		------
		-- 0 ==> 0 00000000	
		WAIT FOR Min_Pulse * 5;

		-- Some input values:
		A <= "001000000000000101100110"; -- 358
		B <= "000010000000000011011110"; --  222
		------
		-- 16 ==> 0 00010000
		WAIT FOR Min_Pulse * 5;

		B <= "010000010000000101100110"; -- 358
		A <= "000000100000000011011110"; -- 222
		------
		-- 41 ==> 0 00101000	
		WAIT FOR Min_Pulse * 5;

		A <= "000000100000000101100110"; -- 358
		B <= "000000100000000101100110"; -- 222
		------
		-- 378 ==> 1 01111010	
		WAIT FOR Min_Pulse * 5;

		-- Let's try the flag Z
		A <= "100000000000000011011110"; -- 222
		B <= "100000000000000011011110"; -- 222
		WAIT FOR Min_Pulse * 5;
		WAIT;
	END PROCESS;
END Comp_24bit_arch;