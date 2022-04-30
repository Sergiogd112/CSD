-------------------------------------------------------------------------------- 
-- UPC - EETAC - CSD - digsys.upc.edu     
--------------------------------------------------------------------------------
-- Basic combinational circuit. Binary decoder 4 to 16 (DEC4:16)
-- P2 on logic combinational circuits
-- Plan B: Behavioural approach where the truth table is written in VHDL using a 
-- PROCESS statement
-- This is the translation of the following flow chart:
-- 
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY Dec_4_16 IS
		PORT (
			D	: IN 	STD_LOGIC_VECTOR(3 DOWNTO 0);
			E	: IN  	STD_LOGIC;
			Y	: OUT  	STD_LOGIC_VECTOR(15 DOWNTO 0)    
			);
END Dec_4_16;

ARCHITECTURE truth_table OF Dec_4_16 IS

-- This signal is for grouping al the inputs into a single
-- vector wire:
signal X_in: STD_LOGIC_VECTOR (4 downto 0);

BEGIN
	PROCESS (X_in)  
		BEGIN
			CASE X_in IS
	       	   -- E D3 D2 D1 D0     	Y(15..0)        
          	   -- -------------   -----------------------    
				WHEN "10000" =>       		-- m0
								Y <= "0000000000000001";
				WHEN "10001" =>       		-- m1
								Y <= "0000000000000010";
				WHEN "10010" =>       		-- m2
								Y <= "0000000000000100";						
				WHEN "10011" =>       		-- m3
								Y <= "0000000000001000";
				WHEN "10100" =>       		-- m4
								Y <= "0000000000010000";
				WHEN "10101" =>       		-- m5
								Y <= "0000000000100000";
				WHEN "10110" =>       		-- m6
								Y <= "0000000001000000";
				WHEN "10111" =>       		-- m7
								Y <= "0000000010000000";
				WHEN "11000" =>       		-- m8
								Y <= "0000000100000000";
				WHEN "11001" =>       		-- m9
								Y <= "0000001000000000";
				WHEN "11010" =>       		-- m10
								Y <= "0000010000000000";
				WHEN "11011" =>       		-- m11
								Y <= "0000100000000000";
				WHEN "11100" =>       		-- m12
								Y <= "0001000000000000";
				WHEN "11101" =>       		-- m13
								Y <= "0010000000000000";
				WHEN "11110" =>       		-- m14
								Y <= "0100000000000000";
				WHEN "11111" =>       		-- m15
								Y <= "1000000000000000";
				WHEN Others =>       		-- disable 
								Y <= "0000000000000000"; 
			END CASE;
			
	END PROCESS;
		
-- Extra logic is required to fix the input buffers 
-- that adapt the inputs to the trtuh table artefact

X_in(4) <= E;    

X_in(3 downto 0) <= D;

 	 		 		   	   
END truth_table;
