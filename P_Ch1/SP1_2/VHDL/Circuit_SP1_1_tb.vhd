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
-- Generated on "03/15/2022 12:15:30"
                                                            
-- Vhdl Test Bench template for design  :  Circuit_SP1_1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Circuit_SP1_1_vhd_tst IS
END Circuit_SP1_1_vhd_tst;
ARCHITECTURE Circuit_SP1_1_arch OF Circuit_SP1_1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL E : STD_LOGIC;
COMPONENT Circuit_SP1_1
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	D : OUT STD_LOGIC;
	E : OUT STD_LOGIC
	);
END COMPONENT;
CONSTANT Min_Pulse : TIME := 20 us;

BEGIN
	i1 : Circuit_SP1_1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	D => D,
	E => E
	);
	stim_proc : PROCESS
	BEGIN

		-- Circuit initialisation period (do nothing). 
		WAIT FOR 100 ns;
		WAIT FOR Min_Pulse * 1.5;

		-- Let's start the stimulus activity:
		A <= '1';
		B <= '0'; -- "100"
		C <= '0';

		WAIT FOR Min_Pulse * 3.1;

		A <= '0';
		B <= '0'; -- "000" 
		C <= '0';

		WAIT FOR Min_Pulse * 3.1;
		A <= '0';
		B <= '1'; -- "011"
		C <= '1';

		WAIT FOR Min_Pulse * 1.1;
		A <= '1';
		B <= '1'; -- "111" 
		C <= '1';

		WAIT FOR Min_Pulse * 1.1;
		A <= '0';
		B <= '0'; -- "001"
		C <= '1';

		WAIT FOR Min_Pulse * 1.1;

		A <= '1';
		B <= '0'; -- "101"
		C <= '1';

		WAIT FOR Min_Pulse * 1.1;

		A <= '0';
		B <= '1'; -- "010"
		C <= '0';

		WAIT FOR Min_Pulse * 1.1;
		A <= '1';
		B <= '1'; -- "110"
		C <= '0';

		WAIT FOR Min_Pulse * 1.1;
		WAIT;
	END PROCESS;
                                          
END Circuit_SP1_1_arch;
