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
-- Generated on "03/19/2022 16:45:39"
                                                            
-- Vhdl Test Bench template for design  :  Adder_1bit
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Adder_1bit_vhd_tst IS
END Adder_1bit_vhd_tst;
ARCHITECTURE Adder_1bit_arch OF Adder_1bit_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Ai : STD_LOGIC;
SIGNAL Bi : STD_LOGIC;
SIGNAL Ci : STD_LOGIC;
SIGNAL Co : STD_LOGIC;
SIGNAL So : STD_LOGIC;


COMPONENT Adder_1bit
	PORT (
	Ai : IN STD_LOGIC;
	Bi : IN STD_LOGIC;
	Ci : IN STD_LOGIC;
	Co : OUT STD_LOGIC;
	So : OUT STD_LOGIC
	);
END COMPONENT;


	constant Min_Pulse : time :=  3.55 ms;
	-- This means that the simulation will run for instance 80 ms
	-- Enough time for covering all stimulus vectors
	
BEGIN
	i1 : Adder_1bit
	PORT MAP (
-- list connections between master ports and signals
	Ai => Ai,
	Bi => Bi,
	Ci => Ci,
	Co => Co,
	So => So
	);



   tb : PROCESS
   BEGIN
   
      -- Circuit initialisation period (do nothing). 
      wait for 100 ns;	
      wait for Min_Pulse*2.25; 

-- Let's start the stimulus activity 
		Ai <= '0';
		Bi <= '0';
		Ci <= '0';
		wait for Min_Pulse*1.2;
		Ai <= '1';
		Bi <= '0';
		Ci <= '0';
		wait for Min_Pulse*3.2;
		Ai <= '0';
		Bi <= '1';
		Ci <= '0';
		wait for Min_Pulse*2.2;
		Ai <= '1';
		Bi <= '1';
		Ci <= '0';
		wait for Min_Pulse*2.2;
		Ai <= '0';
		Bi <= '0';
		Ci <= '1';
		wait for Min_Pulse*1.2;
		Ai <= '1';
		Bi <= '0';
		Ci <= '1';
		wait for Min_Pulse*1.2;
		Ai <= '0';
		Bi <= '1';
		Ci <= '1';
		wait for Min_Pulse*1.2;
		Ai <= '1';
		Bi <= '1';
		Ci <= '1';
		wait for Min_Pulse*2.2;
		
      wait; -- will wait forever
   END PROCESS;
   


                                 
END Adder_1bit_arch;
