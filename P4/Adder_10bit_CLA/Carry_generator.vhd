--------------------------------------------------------------------------------
-- An example of a 4-bit Carry Generator described using logic 
-- equations (structural). 
-- To be used as a component for developing the 4-bit carry lookahead adder
---------------------------------------------------
-- Exercise P3  - CSD 
-- http://digsys.upc.es
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY Carry_Generator IS
		PORT (
			A,B 				: IN STD_LOGIC_VECTOR(3 downto 0);
			Cin					: IN STD_LOGIC; 				
			C4, C3, C2, C1		: OUT STD_LOGIC
		  );
END Carry_Generator;

ARCHITECTURE logic_equation OF Carry_Generator IS

-- Signals: The generators and propagators, The internal carries 
	SIGNAL	P3, G3, P2, G2, P1, G1, P0, G0	: STD_LOGIC;	

BEGIN   
P0 <= A(0) xor B(0);
P1 <= A(1) xor B(1);
P2 <= A(2) xor B(2);
P3 <= A(3) xor B(3);

G0 <= A(0) and B(0);
G1 <= A(1) and B(1);
G2 <= A(2) and B(2);
G3 <= A(3) and B(3);

C1 <= G0 or (P0 and Cin);

C2 <= G1 or (P1 and G0) or (P1 and P0 and Cin);
C3 <= G2 or (P2 and G1) or (P2 and P1 and G0) or (P2 and P1 and P0 and Cin) ;
C4 <= G3 or (P3 and G2) or (P3 and P2 and G1) or (P3 and P2 and P1 and G0) or 
			(P3 and P2 and P1 and P0 and Cin) ;
			 		   	 		 		   	   
END logic_equation;
