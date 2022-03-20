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
		A, B : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		Cin : IN STD_LOGIC;
		D : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		Cout : OUT STD_LOGIC
	);
END Circuit_SP1_1;

ARCHITECTURE general_eq OF Circuit_SP1_1 IS
BEGIN

	D(0) <= (A(0) AND NOT((B(0) OR Cin) AND (NOT(B(0)) OR NOT (Cin)))) OR (((NOT(A(0)) AND B(0)) OR (NOT(A(0)) AND Cin)) AND (NOT (B(0)) OR NOT (Cin)));
	C <= NOT((NOT(A(0)) AND NOT (B(0))) OR NOT ((NOT(A(0)) OR NOT (B(0))) AND Cin)) OR (A(0) AND B(0));
	D(1) <= (A(1) AND NOT((B(1) OR C) AND (NOT(B(1)) OR NOT (C)))) OR (((NOT(A(1)) AND B(1)) OR (NOT(A(1)) AND C)) AND (NOT (B(1)) OR NOT (C)));
	Cout <= NOT((NOT(A(1)) AND NOT (B(1))) OR NOT ((NOT(A(1)) OR NOT (B(1))) AND C)) OR (A(1) AND B(1));

END general_eq;