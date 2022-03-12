--------------------------------------------------------------------------------
-- An example of a simple circuit for running a tutorial on VHDL and EDA tools
-- equations (structural)
---------------------------------------------------
-- Exercise P2  - CSD 
-- http://digsys.upc.edu
--------------------------------------------------------------------------------

LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Circuit_SP1_1 IS
	PORT (
		A, B, C : IN STD_LOGIC;
		D, E : OUT STD_LOGIC
	);
END Circuit_SP1_1;

ARCHITECTURE general_eq OF Circuit_SP1_1 IS
BEGIN

	D <= A AND NOT((B OR C) AND (NOT(B) OR NOT (C))) OR ((NOT(A) AND B) OR (NOT(A) AND C)) AND (NOT (B) OR NOT (C));
	E <= NOT((NOT(A) AND NOT (B)) OR NOT ((NOT(A) OR NOT (B)) AND C)) OR (A AND B);

END general_eq;