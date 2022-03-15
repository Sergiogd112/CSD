-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/21/2018 21:20:14"
                                                            
-- Vhdl Test Bench template for design  :  MUX_8
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MUX_8_vhd_tst IS
END MUX_8_vhd_tst;
ARCHITECTURE MUX_8_arch OF MUX_8_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Ch0 : STD_LOGIC;
SIGNAL Ch1 : STD_LOGIC;
SIGNAL Ch2 : STD_LOGIC;
SIGNAL Ch3 : STD_LOGIC;
SIGNAL Ch4 : STD_LOGIC;
SIGNAL Ch5 : STD_LOGIC;
SIGNAL Ch6 : STD_LOGIC;
SIGNAL Ch7 : STD_LOGIC;
SIGNAL E_L : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Y : STD_LOGIC;
COMPONENT MUX_8
	PORT (
	Ch0 : IN STD_LOGIC;
	Ch1 : IN STD_LOGIC;
	Ch2 : IN STD_LOGIC;
	Ch3 : IN STD_LOGIC;
	Ch4 : IN STD_LOGIC;
	Ch5 : IN STD_LOGIC;
	Ch6 : IN STD_LOGIC;
	Ch7 : IN STD_LOGIC;
	E_L : IN STD_LOGIC;
	S : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Y : OUT STD_LOGIC
	);
END COMPONENT;     

 
-- constants: 
	constant Min_Pulse : time := 25.5 us; -- run 1000 us
 
 
 
BEGIN
	i1 : MUX_8
	PORT MAP (
-- list connections between master ports and signals
	Ch0 => Ch0,
	Ch1 => Ch1,
	Ch2 => Ch2,
	Ch3 => Ch3,
	Ch4 => Ch4,
	Ch5 => Ch5,
	Ch6 => Ch6,
	Ch7 => Ch7,
	E_L => E_L,
	S => S,
	Y => Y
	);
   -- Stimulus process
   stim_proc: process
   begin		

	-- Circuit initialisation period (do nothing). 
		wait for 100 ns;	
      	wait for Min_Pulse*1.5; 

	-- Let's start the stimulus activity:
		E_L <= '1';  
		Ch0 <= '1'; Ch1 <= '1';	Ch2 <= '1'; Ch3 <= '1'; 
		Ch4 <= '1'; Ch5 <= '1';	Ch6 <= '1'; Ch7 <= '1'; 
	
		S <= "000";  
		wait for Min_Pulse*1.2;
		
		-- Let's start the stimulus activity:
		E_L <= '0';  
		wait for Min_Pulse*3.2;


		S <= "000";  -- Select Chnnel 0
		Ch0 <= '0'; 	
		wait for Min_Pulse*3.2;
		Ch0 <= '1'; 	
		wait for Min_Pulse*1.5;
		

		S <= "001";  -- Select Chnnel 1
		Ch1 <= '0'; 	
		wait for Min_Pulse*1.2;
		Ch1 <= '1'; 	
		wait for Min_Pulse*1.2;
		
		S <= "010";  -- Select Chnnel 1
		Ch1 <= '1'; 	
		wait for Min_Pulse*1.2;
		Ch1 <= '0'; 	
		wait for Min_Pulse*1.2;      
		Ch1 <= '0'; 	
		wait for Min_Pulse*1.2;
		Ch2 <= '1'; 	
		wait for Min_Pulse*1.2;		

      wait;
   end process;                                      
END MUX_8_arch;
