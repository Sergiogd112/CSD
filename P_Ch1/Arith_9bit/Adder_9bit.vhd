LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Adder_9bit IS
	PORT (
		A, B : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		Cin : IN STD_LOGIC;
		S : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
		Cout,Z : OUT STD_LOGIC
	);

END Adder_9bit;

ARCHITECTURE hierarchical_structure OF Adder_9bit IS
	COMPONENT Adder_1bit IS
		PORT (
			Ai, Bi, Ci : IN STD_LOGIC;
			So, Co : OUT STD_LOGIC
		);
	END COMPONENT;
	SIGNAL C1, C2, C3, C4, C5, C6, C7, C8, C9 : STD_LOGIC;
	SIGNAL Y : STD_LOGIC_VECTOR(8 DOWNTO 0);
BEGIN

	Chip1 : Adder_1bit
	PORT MAP(
		Ai => A(0),
		Bi => B(0),
		Ci => Cin,
		So => Y(0),
		Co => C1
	);

	Chip2 : Adder_1bit
	PORT MAP(
		Ai => A(1),
		Bi => B(1),
		Ci => C1,
		So => Y(1),
		Co => C2
	);

	Chip3 : Adder_1bit
	PORT MAP(
		Ai => A(2),
		Bi => B(2),
		Ci => C2,
		So => Y(2),
		Co => C3
	);

	Chip4 : Adder_1bit
	PORT MAP(
		Ai => A(3),
		Bi => B(3),
		Ci => C3,
		So => Y(3),
		Co => C4
	);

	Chip5 : Adder_1bit
	PORT MAP(
		Ai => A(4),
		Bi => B(4),
		Ci => C4,
		So => Y(4),
		Co => C5
	);

	Chip6 : Adder_1bit
	PORT MAP(
		Ai => A(5),
		Bi => B(5),
		Ci => C5,
		So => Y(5),
		Co => C6
	);

	Chip7 : Adder_1bit
	PORT MAP(
		Ai => A(6),
		Bi => B(6),
		Ci => C6,
		So => Y(6),
		Co => C7
	);

	Chip8 : Adder_1bit
	PORT MAP(
		Ai => A(7),
		Bi => B(7),
		Ci => C7,
		So => Y(7),
		Co => C8
	);

	Chip9 : Adder_1bit
	PORT MAP(
		Ai => A(8),
		Bi => B(8),
		Ci => C8,
		So => Y(8),
		Co => C9
	);

	Cout <= C9;
	S <= Y;
	Z<=NOT(Y(0) OR Y(1) OR Y(2) OR Y(3) OR Y(4) OR Y(5) OR Y(6) OR Y(7) OR Y(8));
END hierarchical_structure;