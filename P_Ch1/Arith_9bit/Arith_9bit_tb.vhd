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
-- Generated on "03/31/2022 23:32:48"

-- Vhdl Test Bench template for design  :  Arith_9bit
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Arith_9bit_vhd_tst IS
END Arith_9bit_vhd_tst;
ARCHITECTURE Arith_9bit_arch OF Arith_9bit_vhd_tst IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL A : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL B : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL Cout : STD_LOGIC;
	SIGNAL OP : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL OV : STD_LOGIC;
	SIGNAL R : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL Z : STD_LOGIC;
	constant Min_Pulse : time := 25.5 us;

	COMPONENT Arith_9bit
		PORT (
			A : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			B : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			Cout : OUT STD_LOGIC;
			OP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			OV : OUT STD_LOGIC;
			R : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
			Z : OUT STD_LOGIC
		);
	END COMPONENT;
BEGIN
	i1 : Arith_9bit
	PORT MAP(
		-- list connections between master ports and signals
		A => A,
		B => B,
		Cout => Cout,
		OP => OP,
		OV => OV,
		R => R,
		Z => Z
	);
		stim_proc : PROCESS
		BEGIN

			WAIT FOR 70 ns;
			WAIT FOR Min_Pulse * 5;

			-- Some input values:
			OP <= "00"; --	 0
			A <= "101100110"; -- 358
			B <= "011011110"; --  222
			------
			-- 16 ==> 0 00010000
			WAIT FOR Min_Pulse * 5;

			OP <= "01"; --  1
			A <= "101100110"; -- 28
			B <= "011011110"; -- 12
			------
			-- 41 ==> 0 00101000	
			WAIT FOR Min_Pulse * 5;

			OP <= "10"; --   1
			A <= "101100110"; -- 122
			B <= "011011110"; -- 255
			------
			-- 378 ==> 1 01111010	
			WAIT FOR Min_Pulse * 5;

			-- Let's try the flag Z
			OP <= "11"; -- 0
			A <= "101100110"; -- 0
			B <= "011011110"; -- 0
			------
			-- 0 ==> 0 00000000	
			WAIT FOR Min_Pulse * 5;
			WAIT;
		END PROCESS;

	END Arith_9bit_arch;