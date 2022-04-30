--------------------------------------------------------------------------------
-- Example of sequential circuit. 
-- This VHDL file is a translation of the Fig. 5 schematic in
-- https://digsys.upc.edu/csd/P05/P5.html
---------------------------------------------------
-- Project P5 - CSD - latches and flip-flops
-- https://digsys.upc.edu
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY Circuit_async IS
		PORT (
			CLK, CD	: IN 	STD_LOGIC; 
			Q	: OUT  	STD_LOGIC_VECTOR(3 DOWNTO 0)    
			);
END Circuit_async;

ARCHITECTURE hierarchical_planC2 OF Circuit_async IS

-- Components to be used:
					-- From P5 tutorial at:
					-- https://digsys.upc.edu/csd/P05/P5_T/T_FF/T_FF.html
	COMPONENT T_FF IS     
		Port (	
	     	CLK 	: IN	STD_LOGIC;
			CD 		: IN	STD_LOGIC;
			T		: IN	STD_LOGIC;
			Q 		: OUT	STD_LOGIC
		);
	END COMPONENT;
	
-- Signals
	SIGNAL	K	: STD_LOGIC_VECTOR (3 DOWNTO 0);

BEGIN

-- Instantiation of up to 4 basic 1-bit adders:

	Chip1	: T_FF
		PORT MAP (
-- from component name 	=> to signal or port name
				CLK		=> CLK,   
				CD		=> CD,     
				T		=> '1',
				Q		=> K(0)     
		);

	Chip2	: T_FF
		PORT MAP (
-- from component name 	=> to signal or port name
				CLK		=> K(0),    
				CD		=> CD,     
				T		=> '1',
				Q		=> K(1)     
		);
	Chip3	: T_FF
		PORT MAP (
-- from component name 	=> to signal or port name
				CLK		=> K(1),   
				CD		=> CD,     
				T		=> '1',
				Q		=> K(2)     
		);

	Chip4	: T_FF
		PORT MAP (
-- from component name 	=> to signal or port name
				CLK		=> K(2),   
				CD		=> CD,     
				T		=> '1',
				Q		=> K(3)     
		);
		
-- Other circuits and equations:    
Q  <= K; -- these are the four output buffer gates
 		   	 		 		   	   
END hierarchical_planC2;
