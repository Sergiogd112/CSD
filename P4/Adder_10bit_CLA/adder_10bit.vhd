--------------------------------------------------------------------------------
-- An example of a 10-bit full adder (Adder_10bit) using a hierarchical structure
-- This VHDL file is a translation of the following schematic:
-- https://digsys.upc.edu/csd/P03/Plan_PE_Adder_8bit.jpg
---------------------------------------------------
-- Exercise P3 - CSD - Arithmetic circuits and hierarchical multiple-file design
-- http://digsys.upc.edu
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY Adder_10bit IS

	PORT (
		A,B		: IN 	STD_LOGIC_VECTOR(9 DOWNTO 0); 				
		Cin		: IN 	STD_LOGIC;    
		S		: OUT 	STD_LOGIC_VECTOR (9 DOWNTO 0); -- result
		Cout	: OUT  	STD_LOGIC;
		Cout9	: OUT  	STD_LOGIC;	
		Z		: OUT 	STD_LOGIC	-- Z = 1 when S(9..0) = 0 and  Cout = 0;
	  );

END Adder_10bit;


ARCHITECTURE hierarchical_structure OF Adder_10bit IS

-- The component to be used:
	COMPONENT Adder_4bit IS  
		PORT (
			A,B		: IN 	STD_LOGIC_VECTOR(3 DOWNTO 0); 				
			Cin		: IN 	STD_LOGIC;    
			S		: OUT 	STD_LOGIC_VECTOR (3 DOWNTO 0);
			Cout	: OUT  	STD_LOGIC;
			Z		: OUT 	STD_LOGIC	
		  );
	END COMPONENT;
	
	COMPONENT Adder_1bit IS  
		PORT (
			Ai,Bi, Ci	: IN STD_LOGIC;				
			So, Co		: OUT STD_LOGIC
		  );
	END COMPONENT;
	
-- Signals (wires and cables)
	SIGNAL	C4, C8, C9, C10	: STD_LOGIC;
	SIGNAL	Z1, Z2, Z3, Z4	: STD_LOGIC;
	SIGNAL	K1, K2			: STD_LOGIC;	
	--SIGNAL	Y	: STD_LOGIC_VECTOR(4 downto 0);

BEGIN
-- Instantiation of up to 5 components:
	Chip1	: Adder_4bit
		PORT MAP (
	-- from component name 	=> to signal or port name
					A		=> A(3 downto 0),
					B 		=> B(3 downto 0),
					Cin 	=> Cin,
					Cout	=> C4, 
		 			S	 	=> S(3 downto 0), 			
		  			Z	 	=> Z1							  					  
		);
		
	Chip2	: Adder_4bit
		PORT MAP (
	-- from component name 	=> to signal or port name
					A		=> A(7 downto 4),
					B 		=> B(7 downto 4),
					Cin 	=> C4,
					Cout	=> C8, 
		 			S	 	=> S(7 downto 4), 			
		  			Z	 	=> Z3							  					  
		);



	Chip3	: Adder_1bit
		PORT MAP (
	-- from component name 	=> to signal or port name
					Ai		=> A(8),
					Bi 		=> B(8),
					Ci 		=> C8,
					So	 	=> K1, 
					Co	 	=> C9 					  
		);
		
	Chip4	: Adder_1bit
		PORT MAP (
	-- from component name 	=> to signal or port name
					Ai		=> A(9),
					Bi 		=> B(9),
					Ci 		=> C9,
					So	 	=> K2, 
					Co	 	=> C10					  
		);


	

-- Other circuits and equations:
Z 		<= 	not ( Z2 or Z4 or K1 or K2 or C10 or C9); -- 5 input NOR
S(8) 	<=  K1;
S(9) 	<=  K2;
Cout 	<=  C10;
Cout9 	<=  C9;
Z2 <= not(Z1);
Z4 <= not(Z3);
	   	 		 		   	   
END hierarchical_structure;
