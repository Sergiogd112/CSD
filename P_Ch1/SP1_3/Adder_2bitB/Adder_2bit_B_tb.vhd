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
-- Generated on "03/21/2022 15:15:48"

-- Vhdl Test Bench template for design  :  Adder_2bit_B
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Adder_2bit_B_vhd_tb IS
END Adder_2bit_B_vhd_tb;
ARCHITECTURE Adder_2bit_B_arch OF Adder_2bit_B_vhd_tb IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL A : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL B : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL Cin : STD_LOGIC;
	SIGNAL Cout : STD_LOGIC;
	SIGNAL S : STD_LOGIC_VECTOR(1 DOWNTO 0);
	COMPONENT Adder_2bit_B
		PORT (
			A : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			B : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			Cin : IN STD_LOGIC;
			Cout : OUT STD_LOGIC;
			S : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
		);
	END COMPONENT;
	CONSTANT Min_Pulse : TIME := 20 us;

BEGIN
	i1 : Adder_2bit_B
	PORT MAP(
		-- list connections between master ports and signals
		A => A,
		B => B,
		Cin => Cin,
		Cout => Cout,
		S => S
	);
	stim_proc : PROCESS
	BEGIN

		-- Circuit initialisation period (do nothing). 
		WAIT FOR 100 ns;
		WAIT FOR Min_Pulse * 1.5;

		-- Let's start the stimulus activity:
		A <= "00";
		B <= "00"; -- "00000"
		Cin <= '0';

		WAIT FOR Min_Pulse * 2.1;

		A <= "00";
		B <= "00"; -- "00001"
		Cin <= '1';

		WAIT FOR Min_Pulse * 2.1;
		A <= "00";
		B <= "01"; -- "00010"
		Cin <= '0';

		WAIT FOR Min_Pulse * 1.1;
		A <= "00";
		B <= "01"; -- "00011"
		Cin <= '1';

		WAIT FOR Min_Pulse * 1.1;
		A <= "00";
		B <= "10"; -- "00100"
		Cin <= '0';

		WAIT FOR Min_Pulse * 1.1;

		A <= "00";
		B <= "10"; -- "00101"
		Cin <= '1';

		WAIT FOR Min_Pulse * 1.1;

		A <= "00";
		B <= "11"; -- "00110"
		Cin <= '0';

		WAIT FOR Min_Pulse * 1.1;
		A <= "00";
		B <= "11"; -- "00111"
		Cin <= '1';
		WAIT FOR Min_Pulse * 1.1;
		A <= "01";
		B <= "00"; -- "01000"
		Cin <= '0';
		WAIT FOR Min_Pulse * 1.1;
		A <= "01";
		B <= "00"; -- "01001"
		Cin <= '1';
		WAIT FOR Min_Pulse * 1.1;
		A <= "01";
		B <= "01"; -- "01010"
		Cin <= '0';
		WAIT FOR Min_Pulse * 1.1;
		A <= "01";
		B <= "01"; -- "01011"
		Cin <= '1';
		WAIT FOR Min_Pulse * 1.1;
		A <= "01";
		B <= "10"; -- "01100"
		Cin <= '0';
		WAIT FOR Min_Pulse * 1.1;
		A <= "01";
		B <= "11"; -- "01101"
		Cin <= '1';
		WAIT FOR Min_Pulse * 1.1;
		A <= "01";
		B <= "11"; -- "01110"
		Cin <= '0';
		WAIT FOR Min_Pulse * 1.1;
		A <= "01";
		B <= "11"; -- "01111"
		Cin <= '1';
		WAIT FOR Min_Pulse * 1.5;

		A <= "10";
		B <= "00"; -- "10000"
		Cin <= '0';

		WAIT FOR Min_Pulse * 2.1;

		A <= "10";
		B <= "00"; -- "10001"
		Cin <= '1';

		WAIT FOR Min_Pulse * 2.1;
		A <= "10";
		B <= "01"; -- "10010"
		Cin <= '0';

		WAIT FOR Min_Pulse * 1.1;
		A <= "10";
		B <= "01"; -- "10011"
		Cin <= '1';

		WAIT FOR Min_Pulse * 1.1;
		A <= "10";
		B <= "10"; -- "10100"
		Cin <= '0';

		WAIT FOR Min_Pulse * 1.1;

		A <= "10";
		B <= "10"; -- "10101"
		Cin <= '1';

		WAIT FOR Min_Pulse * 1.1;

		A <= "10";
		B <= "11"; -- "10110"
		Cin <= '0';

		WAIT FOR Min_Pulse * 1.1;
		A <= "10";
		B <= "11"; -- "10111"
		Cin <= '1';
		WAIT FOR Min_Pulse * 1.1;
		A <= "11";
		B <= "00"; -- "11000"
		Cin <= '0';
		WAIT FOR Min_Pulse * 1.1;
		A <= "11";
		B <= "00"; -- "11001"
		Cin <= '1';
		WAIT FOR Min_Pulse * 1.1;
		A <= "11";
		B <= "01"; -- "11010"
		Cin <= '0';
		WAIT FOR Min_Pulse * 1.1;
		A <= "11";
		B <= "01"; -- "11011"
		Cin <= '1';
		WAIT FOR Min_Pulse * 1.1;
		A <= "11";
		B <= "10"; -- "11100"
		Cin <= '0';
		WAIT FOR Min_Pulse * 1.1;
		A <= "11";
		B <= "10"; -- "11101"
		Cin <= '1';
		WAIT FOR Min_Pulse * 1.1;
		A <= "11";
		B <= "11"; -- "11110"
		Cin <= '0';
		WAIT FOR Min_Pulse * 1.1;
		A <= "11";
		B <= "11"; -- "11111"
		Cin <= '1';

		WAIT FOR Min_Pulse * 1.1;
		WAIT;
	END PROCESS;
END Adder_2bit_B_arch;