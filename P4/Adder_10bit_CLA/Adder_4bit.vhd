--------------------------------------------------------------------------------
-- An example of a 4-bit full carry lookahead adder using a hierarchical 
-- structure of components: Adder_1bit, Carry_Generator 
-- Plan C2: this is the direct translation into VHDL of the following schematic -- available at: https://digsys.upc.edu/csd/P03/P3.html#Adder_4bit_lookahead
---------------------------------------------------
-- Exercise P3  - CSD 
-- http://digsys.upc.edu
--------------------------------------------------------------------------------
LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY Adder_4bit IS

	PORT (
		A,B	: IN 	STD_LOGIC_VECTOR(3 DOWNTO 0); 				
		Cin	: IN 	STD_LOGIC;    
		S	: OUT 	STD_LOGIC_VECTOR (3 DOWNTO 0);	
		Z	: OUT 	STD_LOGIC; -- Z = 0 when S(3..0) and  C4 = 0
		Cout	: OUT  	STD_LOGIC
	  );

END Adder_4bit;

ARCHITECTURE hierarchical_carry_lookahead OF Adder_4bit IS

	
-- The elemental component to be used:
 
	COMPONENT Adder_1bit IS  

		PORT (
			Ai,Bi, Ci	: IN STD_LOGIC;				
			So, Co		: OUT STD_LOGIC
		  );

	END COMPONENT;

	COMPONENT Carry_Generator IS
	
			PORT (
				A,B 				: IN STD_LOGIC_VECTOR(3 downto 0);
				Cin					: IN STD_LOGIC; 				
				C4, C3, C2, C1		: OUT STD_LOGIC
			  );
	
	END COMPONENT;

-- Signals

	SIGNAL	C1, C2, C3, C4 	: STD_LOGIC;	-- The wires to connect 1-bit modules together 
	SIGNAL	K1, K2, K3, K4 	: STD_LOGIC;	-- The wires to connect 1-bit modules together 

	SIGNAL	Y	 	: STD_LOGIC_VECTOR (3 DOWNTO 0);

BEGIN

-- Instantiation of up to 4 basic 1-bit adders:

	chip_1	: Adder_1bit
		PORT MAP (
				-- from component name 	=> to signal or port name
			Ai		=> A(0),
			Bi 		=> B(0),
			Ci 		=> Cin,
			So	 	=> Y(0), 
			Co	 	=> K1 					  
		);

	chip_2	: Adder_1bit
		PORT MAP (
				-- from component name 	=> to signal or port name
			Ai		=> A(1),
			Bi 		=> B(1),
			Ci 		=> C1,
			So	 	=> Y(1), 
			Co	 	=> K2 					  
		);

	chip_3	: Adder_1bit
		PORT MAP (
				-- from component name 	=> to signal or port name
			Ai		=> A(2),
			Bi 		=> B(2),
			Ci 		=> C2,
			So	 	=> Y(2), 
			Co	 	=> K3 					  
		);

	chip_4	: Adder_1bit
		PORT MAP (
				-- from component name 	=> to signal or port name
			Ai		=> A(3),
			Bi 		=> B(3),
			Ci 		=> C3,
			So	 	=> Y(3), 
			Co	 	=> K4 					  
		);        
		
	chip_5	: Carry_Generator
		PORT MAP (
				-- from component name 	=> to signal or port name
			A		=> A,
			B 		=> B,
			Cin 	=> Cin,
			C1	 	=> C1, 
			C2	 	=> C2, 
			C3	 	=> C3, 
			C4	 	=> C4 					  
		);  
				
-- Other circuits and equations:

S <= Y;
Cout <= C4;
Z <= NOT (Y(3) OR Y(2) OR Y(1) OR Y(0) OR C4 );
 		   	 		 		   	   
END hierarchical_carry_lookahead;
