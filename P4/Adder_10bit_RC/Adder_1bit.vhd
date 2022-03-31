--------------------------------------------------------------------------------
-- An example of using the method of multiplexers for implementing logic 
-- functions. In this project a component MUX_4 is used. 
---------------------------------------------------
-- Adder_1bit structural: using components 
-- Plan: http://digsys.upc.edu/csd/P03/P3_T/MUX/Adder_1bit_MUX_4.pdf
-- Exercise P2 - P3  - CSD - Logic circuits
-- http://digsys.upc.edu
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY Adder_1bit IS
	PORT (
		Ai, Bi, Ci 	: 	IN 	STD_LOGIC;  
		So, Co		: 	OUT	STD_LOGIC
	  );

END Adder_1bit;

ARCHITECTURE hierarchical_structure OF Adder_1bit IS
	
-- The elemental components to be used (in this example two times):

COMPONENT MUX_4 IS  
	PORT (
		Ch0, Ch1, Ch2, Ch3	: 	IN 	STD_LOGIC;  -- 1 bit per channel
		S					:	IN 	STD_LOGIC_VECTOR (1 downto 0);	
		E_L					: 	IN 	STD_LOGIC;
		Y					: 	OUT	STD_LOGIC
	  );
END COMPONENT;
	
	
-- Signals: the internal wires or cables
SIGNAL S :	STD_LOGIC_VECTOR(1 DOWNTO 0); 
SIGNAL K :	STD_LOGIC; 


BEGIN

-- Instantiation of the 2 multiplexers: 

	Chip1	: MUX_4
		PORT MAP (
-- from component name 	=> to signal or port name
				E_L		=> '0', -- Always enabled  
				Ch0		=> '0',
				Ch1		=> Ci,
				Ch2		=> Ci,
				Ch3		=> '1',  
				S		=> S,								
				Y		=> Co			
		);

	Chip2	: MUX_4
		PORT MAP (
-- from component name 	=> to signal or port name
				E_L		=> '0', -- Always enabled  
				Ch0		=> Ci,
				Ch1		=> K,
				Ch2		=> K,
				Ch3		=> Ci,  
				S		=> S,								
				Y		=> So			
		);
		 

		-- Other circuits and equations:
S(1) <= Ai; 
S(0) <= Bi; 
K <= not(Ci); 
			 		   	 		 		   	   
END hierarchical_structure;
