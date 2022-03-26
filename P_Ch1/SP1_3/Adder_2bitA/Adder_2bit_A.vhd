--------------------------------------------------------------------------------
-- An example of a simple circuit for running a tutorial on VHDL and EDA tools
-- equations (structural)
---------------------------------------------------
-- Exercise P2  - CSD 
-- http://digsys.upc.edu
--------------------------------------------------------------------------------

LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Adder_2bit_A IS
	PORT (
		A, B : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		Cin : IN STD_LOGIC;
		S : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		Cout : OUT STD_LOGIC
	);
END Adder_2bit_A;
-- D(0)<=(not(A(0)) AND not(B(0)) AND Cin) or (not(A(0)) AND B(0) AND not(Cin)) or (A(0) AND NOT(B(0)) AND NOT(Cin)) OR (A(0) AND B(0) AND Cin); 
ARCHITECTURE general_eq OF Adder_2bit_A IS
	signal C:STD_LOGIC;

BEGIN


	S(0)<=(NOT(A(0)) AND NOT(B(0)) AND Cin) or (NOT(A(0)) AND B(0) AND NOT(Cin)) or (A(0) AND NOT(B(0)) AND NOT(Cin)) OR (A(0) AND B(0) AND Cin);
	C <= NOT((NOT(A(0)) AND NOT (B(0))) OR NOT ((NOT(A(0)) OR NOT (B(0))) AND Cin)) OR (A(0) AND B(0));


	S(1) <= (NOT(A(1)) AND NOT(B(1)) AND C) or (NOT(A(1)) AND B(1) AND NOT(C)) or (A(1) AND NOT(B(1)) AND NOT(C)) OR (A(1) AND B(1) AND C);

	Cout <= NOT((NOT(A(1)) AND NOT (B(1))) OR NOT ((NOT(A(1)) OR NOT (B(1))) AND C)) OR (A(1) AND B(1));

END general_eq;