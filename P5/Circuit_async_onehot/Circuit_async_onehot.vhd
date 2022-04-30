--------------------------------------------------------------------------------
-- Example of a sequential circuit.c 
-- This VHDL file is a translation of the Fig. 6 schematic in
-- https://digsys.upc.edu/csd/P05/P5.html
---------------------------------------------------
-- Exercise P5 - CSD - latches and flip-flops
-- http://digsys.upc.edu
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY Circuit_async_onehot IS
		PORT (
			CLK, CD	: IN 		STD_LOGIC; 
			Q			: OUT  	STD_LOGIC_VECTOR(15 DOWNTO 0)    
			);
END Circuit_async_onehot;

ARCHITECTURE hierarchical_structure OF Circuit_async_onehot IS

-- Components to be used:
	COMPONENT T_FF IS     -- From P5 tutorial
		Port (	
	     	CLK 	: IN	STD_LOGIC;
			CD 		: IN	STD_LOGIC;
			T		: IN	STD_LOGIC;
			Q 		: OUT	STD_LOGIC  
		);
	END COMPONENT;

	COMPONENT Dec_4_16 IS     -- From P2 
		PORT (
			D	: IN 	STD_LOGIC_VECTOR(3 DOWNTO 0);
			E	: IN  	STD_LOGIC;
			Y	: OUT  	STD_LOGIC_VECTOR(15 DOWNTO 0)    
		);
	END COMPONENT;
	
	
-- Signals
	SIGNAL	K	: STD_LOGIC_VECTOR (3 DOWNTO 0);

BEGIN

-- Instantiation of components

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
		
	Chip5	: Dec_4_16
		PORT MAP (
-- from component name 	=> to signal or port name
				D		=> K,   
				E		=> '1',     
				Y		=> Q     
		);
				
		
-- Other circuits and equations: 

 		   	 		 		   	   
END hierarchical_structure;
