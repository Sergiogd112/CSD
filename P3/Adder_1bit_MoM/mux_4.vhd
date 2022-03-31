--------------------------------------------------------------------------------
-- An example of a chip design: Multiplexer of 4 channels: MUX_4
-- (One section of the type 74LS153)
---------------------------------------------------
-- MUX_4 structural: using minimised equations SoP 
-- simplified from the truth table in Minilog 
-- Exercises P2 - P3  - CSD 
-- http://digsys.upc.edu
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY MUX_4 IS

		PORT (
			Ch0, Ch1, Ch2, Ch3	: 	IN 	STD_LOGIC;  -- 1 bits per channel
			S					:	IN 	STD_LOGIC_VECTOR (1 downto 0);	
			E_L					: 	IN 	STD_LOGIC;
			Y					: 	OUT	STD_LOGIC
		  );

END MUX_4;

ARCHITECTURE logic_equations OF MUX_4 IS  

BEGIN
-- Equations using a sum of products (SoP)
-- The ones in the truth table

	Y <=	(not(E_L) and not(S(1)) and not (S(0))and Ch0)	or
			(not(E_L) and not(S(1)) and S(0) and Ch1)		or
			(not(E_L) and S(1) and not(S(0)) and Ch2)		or
			(not(E_L) and S(1) and S(0) and Ch3); 
			   	 		 		   	   
END logic_equations;
