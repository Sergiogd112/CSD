LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Comp_4bit IS

	PORT (
		A, B : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		Gi, Ei, Li : IN STD_LOGIC;
		Gt, Eq, Lt : OUT STD_LOGIC

	);

END Comp_4bit;

ARCHITECTURE hierarchical_structure OF Comp_4bit IS

	COMPONENT Comp_1bit IS
		PORT (
			A, B, Gi, Ei, Li : IN STD_LOGIC;
			Gt, Eq, Lt : OUT STD_LOGIC
		);
	END COMPONENT;
	SIGNAL C, D, E, F, G, H, I, J : STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN

	Chip1 : Comp_1bit
	PORT MAP(

		A => A(0),
		B => B(0),
		Gi => Gi,
		Ei => Ei,
		Li => Li,
		Gt => C(0),
		Eq => C(1),
		Lt => C(2)
	);

	Chip2 : Comp_1bit
	PORT MAP(

		A => A(1),
		B => B(1),
		Gi => C(0),
		Ei => C(1),
		Li => C(2),
		Gt => D(0),
		Eq => D(1),
		Lt => D(2)
	);

	Chip3 : Comp_1bit
	PORT MAP(

		A => A(2),
		B => B(2),
		Gi => D(0),
		Ei => D(1),
		Li => D(2),
		Gt => E(0),
		Eq => E(1),
		Lt => E(2)
	);

	Chip4 : Comp_1bit
	PORT MAP(

		A => A(3),
		B => B(3),
		Gi => E(0),
		Ei => E(1),
		Li => E(2),
		Gt => F(0),
		Eq => F(1),
		Lt => F(2)
	);

	Gt <= F(0);
	Eq <= F(1);
	Lt <= F(2);

END hierarchical_structure;