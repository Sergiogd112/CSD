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
-- Generated on "05/06/2022 17:18:16"
                                                            
-- Vhdl Test Bench template for design  :  Counter_mod12
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Counter_mod12_vhd_tst IS
END Counter_mod12_vhd_tst;
ARCHITECTURE Counter_mod12_arch OF Counter_mod12_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CD : STD_LOGIC;
SIGNAL CE : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL TC12 : STD_LOGIC;
SIGNAL UD_L : STD_LOGIC;
COMPONENT Counter_mod12
	PORT (
	CD : IN STD_LOGIC;
	CE : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	TC12 : OUT STD_LOGIC;
	UD_L : IN STD_LOGIC
	);
END COMPONENT;


  -- Clock period definitions
   constant CLK_period : time := 1 ms;  -- f_CLK = 1 kHz -- run 100 ms
 

BEGIN
	i1 : Counter_mod12
	PORT MAP (
-- list connections between master ports and signals
	CD => CD,
	CE => CE,
	CLK => CLK,
	Q => Q,
	TC12 => TC12,
	UD_L => UD_L
	);


   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*6.24;

      -- insert stimulus here 
		CD <=  '0';    
		CE <=  '0';    
		UD_L <=  '0';    
		wait for CLK_period*3.53;

-- Clear direct pulse: 
		CD <=  '1';   
		wait for CLK_period*1.23;

		CD <=  '0';   
		wait for CLK_period*3.23;

-- Let's count up for a while  
		UD_L <=  '1';   
		CE <=  '1'; 		
		wait for CLK_period*18.1;

-- Let's count down for a while  
		UD_L <=  '0';   
		CE <=  '1'; 		
		wait for CLK_period*8.1;
	
-- Let's disable/inhibit the counting (do nothing) 
		CE <=  '0'; 		
		wait for CLK_period*5.1;

		CE <=  '1'; 		
		wait for CLK_period*2.1;
		
-- Let's count up for a while  
		UD_L <=  '1';   
		wait for CLK_period*25.1;
	

      wait;
   end process;


END;


