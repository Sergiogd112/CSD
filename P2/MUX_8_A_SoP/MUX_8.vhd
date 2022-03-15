--------------------------------------------------------------------------------
-- An example of a chip design: Multiplexer of 8 channels: MUX_8
-- (type 74LS151)
---------------------------------------------------
-- MUX_8 structural: using minimised equations SoP 
-- simplified from the truth table in Minilog 
-- This is the translation into VHDL of the schematic in:
-- http://digsys.upc.edu/csd/P02/img_planA.jpg

-- Exercises P2 - CSD 
-- http://digsys.upc.edu
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY MUX_8 IS

		PORT (	-- Data channels declared as individual wires
				-- Declaring them as a vector Ch(7..0) will change the symbol
			Ch7, Ch6, Ch5, Ch4	: 	IN 	STD_LOGIC;  -- 1 bit per channel
			Ch3, Ch2, Ch1, Ch0	: 	IN 	STD_LOGIC;  -- 1 bit per channel
						-- S(2..0) to select 8 channels declared as a vector
			S					:	IN 	STD_LOGIC_VECTOR (2 downto 0);	
			E_L					: 	IN 	STD_LOGIC;
			Y					: 	OUT	STD_LOGIC;
			Y_L					: 	OUT	STD_LOGIC
		  );

END MUX_8;

ARCHITECTURE logic_equation_SoP OF MUX_8 IS  

--the wire where to connect output buffer and inverter
SIGNAL Q : STD_LOGIC;

BEGIN
-- Equations using a sum of products (SoP)
-- The ones (products) in the truth table

	Q <=	(not(E_L) and not(S(2)) and not(S(1)) and not (S(0))and Ch0) 	or
			(not(E_L) and not(S(2)) and not(S(1)) and      S(0) and Ch1)	or
			(not(E_L) and not(S(2)) and S(1) 	  and not (S(0))and Ch2)	or
			(not(E_L) and not(S(2)) and S(1)      and      S(0) and Ch3)	or
			(not(E_L) and 	  S(2)  and not(S(1)) and not (S(0))and Ch4) 	or
			(not(E_L) and     S(2)  and not(S(1)) and      S(0) and Ch5)	or
			(not(E_L) and     S(2)  and S(1) 	  and not (S(0))and Ch6)	or
			(not(E_L) and     S(2)  and S(1)      and      S(0) and Ch7);
			
Y <= Q;  -- This is a buffer

Y_L <= not(Q); -- This is a inverter

			   	 		 		   	   
END logic_equation_SoP;
