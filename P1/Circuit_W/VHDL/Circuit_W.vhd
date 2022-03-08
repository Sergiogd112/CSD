--------------------------------------------------------------------------------
-- An example of a simple circuit for running a tutorial on VHDL and EDA tools
-- equations (structural)
---------------------------------------------------
-- Exercise P2  - CSD 
-- http://digsys.upc.edu
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY Circuit_W IS
	PORT (
		D		: IN STD_LOGIC_VECTOR(1 DOWNTO 0); 
		A,B		: IN STD_LOGIC;      
		W		: OUT STD_LOGIC
	);
END Circuit_W;            
 
ARCHITECTURE general_eq OF Circuit_W IS
BEGIN

	W <=	not(not(D(1)) and A and B)  and
			not(not (not(A) or B) and not(D(0)));
						 		   	 		 		   	   
END general_eq;