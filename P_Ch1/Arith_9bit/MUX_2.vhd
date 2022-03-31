--------------------------------------------------------------------------------
-- An example of a chip design: Multiplexer of 2 channels: MUX_2
-- (One section of the Quad_MUX_2 type 74LS158)
---------------------------------------------------
-- Plan: Behavioural algorithm.
-- Exercises P2 - P3  - CSD 
-- http://digsys.upc.edu
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY MUX_2 IS

		PORT (
			Ch0, Ch1	: 	IN 	STD_LOGIC;  -- 1 bits per channel
			S			:	IN 	STD_LOGIC;	-- to select 2 channels
			E_L			: 	IN 	STD_LOGIC;
			Y			: 	OUT	STD_LOGIC
		  );

END MUX_2;

ARCHITECTURE algorithm OF MUX_2 IS  

BEGIN
-- Algorithm: 
	PROCESS ( E_L, S, Ch1,Ch0)
		BEGIN
			IF E_L = '1' THEN
				Y <= '0';	-- disable
			ELSE
				IF S = '0' THEN y <= Ch0;
					ELSE Y <= Ch1;
				END IF ;			
			END IF ;
	END PROCESS;
			   	 		 		   	   
END algorithm;
