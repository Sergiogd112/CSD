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
-- Generated on "03/28/2022 00:24:31"
                                                            
-- Vhdl Test Bench template for design  :  Comp_9bit
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Comp_9bit_vhd_tst IS
END Comp_9bit_vhd_tst;
ARCHITECTURE Comp_9bit_arch OF Comp_9bit_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL Ei : STD_LOGIC;
SIGNAL Eq : STD_LOGIC;
SIGNAL Gi : STD_LOGIC;
SIGNAL Gt : STD_LOGIC;
SIGNAL Li : STD_LOGIC;
SIGNAL Lt : STD_LOGIC;
COMPONENT Comp_9bit
	PORT (
	A : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	Ei : IN STD_LOGIC;
	Eq : BUFFER STD_LOGIC;
	Gi : IN STD_LOGIC;
	Gt : BUFFER STD_LOGIC;
	Li : IN STD_LOGIC;
	Lt : BUFFER STD_LOGIC
	);
END COMPONENT;

constant Min_Pulse : time := 2.57 us;

BEGIN
	i1 : Comp_9bit
	PORT MAP (
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

   tb : PROCESS
   BEGIN			 
		
		wait for 100 ns;
		
      	wait for Min_Pulse*1.5; 
		
		A(0) <= '0'; 
		A(1) <= '0';
		A(2) <= '0';
		A(3) <= '0';
		A(4) <= '0';
		A(5) <= '0';
		A(6) <= '0';
		A(7) <= '0';
		A(8) <= '0';
		
		B(0) <= '0';
		B(1) <= '0';
		B(2) <= '0';
		B(3) <= '0';
		B(4) <= '0';
		B(5) <= '0';
		B(6) <= '0';
		B(7) <= '0';
		B(8) <= '0';
		
		Gi <= '0';
		Ei <= '0';
		Li <= '1';
		
		wait for Min_Pulse*1.5; 

		A(0) <= '0'; 
		A(1) <= '0';
		A(2) <= '0';
		A(3) <= '0';
		A(4) <= '0';
		A(5) <= '0';
		A(6) <= '0';
		A(7) <= '0';
		A(8) <= '0';
		
		B(0) <= '0';
		B(1) <= '0';
		B(2) <= '0';
		B(3) <= '0';
		B(4) <= '0';
		B(5) <= '0';
		B(6) <= '0';
		B(7) <= '0';
		B(8) <= '0';
		
		Gi <= '0';
		Ei <= '1';
		Li <= '0';
		
		wait for Min_Pulse*1.5; 
		
		A(0) <= '0'; 
		A(1) <= '0';
		A(2) <= '0';
		A(3) <= '0';
		A(4) <= '0';
		A(5) <= '0';
		A(6) <= '0';
		A(7) <= '0';
		A(8) <= '0';
		
		B(0) <= '0';
		B(1) <= '0';
		B(2) <= '0';
		B(3) <= '0';
		B(4) <= '0';
		B(5) <= '0';
		B(6) <= '0';
		B(7) <= '0';
		B(8) <= '0';
		
		Gi <= '1';
		Ei <= '0';
		Li <= '0';
		
		wait for Min_Pulse*1.5; 
		
		A(0) <= '0'; 
		A(1) <= '1';
		A(2) <= '0';
		A(3) <= '0';
		A(4) <= '0';
		A(5) <= '0';
		A(6) <= '0';
		A(7) <= '0';
		A(8) <= '0';
		
		B(0) <= '0';
		B(1) <= '0';
		B(2) <= '0';
		B(3) <= '0';
		B(4) <= '0';
		B(5) <= '0';
		B(6) <= '0';
		B(7) <= '0';
		B(8) <= '0';
		
		Gi <= '0';
		Ei <= '1';
		Li <= '0';
		
		wait for Min_Pulse*1.5; 
		
		A(0) <= '0'; 
		A(1) <= '0';
		A(2) <= '0';
		A(3) <= '0';
		A(4) <= '0';
		A(5) <= '0';
		A(6) <= '0';
		A(7) <= '0';
		A(8) <= '0';
		
		B(0) <= '0';
		B(1) <= '1';
		B(2) <= '0';
		B(3) <= '0';
		B(4) <= '0';
		B(5) <= '0';
		B(6) <= '0';
		B(7) <= '0';
		B(8) <= '0';
		
		Gi <= '0';
		Ei <= '1';
		Li <= '0';
		
		wait for Min_Pulse*1.5; 
		
		
		
	   
      wait; 
   END PROCESS;



                      
                                        
END Comp_9bit_arch;
