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
-- Generated on "05/13/2022 10:54:27"
                                                            
-- Vhdl Test Bench template for design  :  Datapath
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Datapath_vhd_tst IS
END Datapath_vhd_tst;
ARCHITECTURE Datapath_arch OF Datapath_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CD : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL CNT_E : STD_LOGIC;
SIGNAL LD_PC : STD_LOGIC;
SIGNAL PC : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
SIGNAL TOF : STD_LOGIC;
COMPONENT Datapath
	PORT (
	CD : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	CNT_E : IN STD_LOGIC;
	LD_PC : IN STD_LOGIC;
	PC : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
	RST : IN STD_LOGIC;
	TOF : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Datapath
	PORT MAP (
-- list connections between master ports and signals
	CD => CD,
	CLK => CLK,
	CNT_E => CNT_E,
	LD_PC => LD_PC,
	PC => PC,
	RST => RST,
	TOF => TOF
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Datapath_arch;
