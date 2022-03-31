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
-- Generated on "03/31/2022 00:54:02"
                                                            
-- Vhdl Test Bench template for design  :  Adder_9bit
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Adder_9bit_vhd_tst IS
END Adder_9bit_vhd_tst;
ARCHITECTURE Adder_9bit_arch OF Adder_9bit_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL Z : STD_LOGIC;
COMPONENT Adder_9bit
	PORT (
	A : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	Cin : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	Z : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL A : STD_LOGIC_VECTOR (8 downto 0) := (others => '0');
SIGNAL B : STD_LOGIC_VECTOR (8 downto 0) := (others => '0');
SIGNAL Cin : STD_LOGIC := '0';

SIGNAL S : STD_LOGIC_VECTOR (8 downto 0);
SIGNAL Cout : STD_LOGIC;
SIGNAL Z : STD_LOGIC;

constant Min_Pulse : time := 25.5 us;

BEGIN
	
	uut: Adder_9bit PORT MAP (
		A => A,
		B => B,
		Cin => Cin,
		S => S,
		Cout => Cout,
		Z => Z
	);
	
	stim_proc: process
	
	begin
	
	wait for 100 ns;
	wait for Min_Pulse*1.5;
	
                                      
END Adder_9bit_arch;
