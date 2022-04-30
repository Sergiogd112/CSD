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
-- Generated on "03/26/2021 01:43:46"
                                                            
-- Vhdl Test Bench template for design  :  Circuit_async_onehot
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Circuit_async_onehot_vhd_tst IS
END Circuit_async_onehot_vhd_tst;

ARCHITECTURE Circuit_async_onehot_arch OF Circuit_async_onehot_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CD : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(15 DOWNTO 0);

COMPONENT Circuit_async_onehot
	PORT (
	CD : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

   -- Clock period definitions
   constant CLK_period : time := 10 us; -- Meaning a F_CLK = 100 KHz
										-- Run simulation for 300 us


BEGIN
	i1 : Circuit_async_onehot
	PORT MAP (
-- list connections between master ports and signals
	CD => CD,
	CLK => CLK,
	Q => Q
	);
	
	   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period*3/4;
		CLK <= '1';
		wait for CLK_period/4; -- Duty cycle of 25%
   end process;	


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      wait for CLK_period*2.3;
	
		CD <= '0';  -- This time only CD is required as input
      wait for CLK_period*2.56;

      -- Clear direct 
		CD <= '1';
      wait for CLK_period*4.56;
		
		CD <= '0';
      wait for CLK_period*25.4;


     -- Clear direct 
		CD <= '1';
      wait for CLK_period*4.56;
		
		CD <= '0';
      wait for CLK_period*25.4;		
      wait;
      
      -- end of user generated stimulus
  
   end process stim_proc;
   
                             
	
END Circuit_async_onehot_arch;
