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
-- Generated on "03/08/2022 18:10:16"

-- Vhdl Test Bench template for design  :  Circuit_W
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Circuit_W_vhd_tst IS
END Circuit_W_vhd_tst;
ARCHITECTURE Circuit_W_arch OF Circuit_W_vhd_tst IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL A : STD_LOGIC;
	SIGNAL B : STD_LOGIC;
	SIGNAL D : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL W : STD_LOGIC;
	COMPONENT Circuit_W
		PORT (
			A : IN STD_LOGIC;
			B : IN STD_LOGIC;
			D : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			W : OUT STD_LOGIC
		);
	END COMPONENT;
	-- constants: 
	CONSTANT Min_Pulse : TIME := 1.7 us;
BEGIN
	i1 : Circuit_W
	PORT MAP(
		-- list connections between master ports and signals
		A => A,
		B => B,
		D => D,
		W => W
	);
	-- Stimulus process
	stim_proc : PROCESS
	BEGIN

		-- Circuit initialisation period (do nothing). 
		WAIT FOR 100 ns;
		WAIT FOR Min_Pulse * 1.5;

		-- Let's start the stimulus activity:
		D(1) <= '0';
		D(0) <= '0';
		A <= '1';
		B <= '0'; -- "0010" -- It has to be a '0'

		WAIT FOR Min_Pulse * 3.1;

		D <= "00";
		A <= '0';
		B <= '0'; -- "0000" -- It has to be a '1'

		WAIT FOR Min_Pulse * 3.1;
		D <= "11";
		A <= '0';
		B <= '1'; -- "1101" -- It has to be a '1'

		WAIT FOR Min_Pulse * 1.1;
		D <= "11";
		A <= '1';
		B <= '1'; -- "1111" -- It has to be a '1'

		WAIT FOR Min_Pulse * 1.1;
		D <= "11";
		A <= '0';
		B <= '0'; -- "1111" -- It has to be a '1'

		WAIT FOR Min_Pulse * 1.1;

		D <= "10";
		A <= '1';
		B <= '0'; -- "1111" -- It has to be a '1'

		WAIT FOR Min_Pulse * 1.1;

		D <= "11"; -- this is the new vector
		A <= '1';
		B <= '0'; -- "1111" -- It has to be a '1'

		WAIT FOR Min_Pulse * 1.1;

		WAIT;
	END PROCESS;

END Circuit_W_arch;