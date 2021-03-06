LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Comp_24bit IS

	PORT (
		A, B : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
		Gi, Ei, Li : IN STD_LOGIC;
		Gt, Eq, Lt : OUT STD_LOGIC

	);

END Comp_24bit;

ARCHITECTURE hierarchical_structure OF Comp_24bit IS

	COMPONENT Comp_4bit IS
		PORT (
			A, B : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			Gi,Ei,Li : IN STD_LOGIC;
			Gt, Eq, Lt : OUT STD_LOGIC
		);
	END COMPONENT;
	SIGNAL C, D, E, F, G, H, I, J : STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN

	Chip1 : Comp_4bit
	PORT MAP(

		A => A(3 DOWNTO 0),
		B => B(3 DOWNTO 0),
		Gi => Gi,
		Ei => Ei,
		Li => Li,
		Gt => C(0),
		Eq => C(1),
		Lt => C(2)
	);

	Chip2 : Comp_4bit
	PORT MAP(

		A => A(7 DOWNTO 4),
		B => B(7 DOWNTO 4),
		Gi => C(0),
		Ei => C(1),
		Li => C(2),
		Gt => D(0),
		Eq => D(1),
		Lt => D(2)
	);

	Chip3 : Comp_4bit
	PORT MAP(

		A => A(11 DOWNTO 8),
		B => B(11 DOWNTO 8),
		Gi => D(0),
		Ei => D(1),
		Li => D(2),
		Gt => E(0),
		Eq => E(1),
		Lt => E(2)
	);

	Chip4 : Comp_4bit
	PORT MAP(

		A => A(15 DOWNTO 12),
		B => B(15 DOWNTO 12),
		Gi => E(0),
		Ei => E(1),
		Li => E(2),
		Gt => F(0),
		Eq => F(1),
		Lt => F(2)
	);

	Chip5 : Comp_4bit
	PORT MAP(

		A => A(19 DOWNTO 16),
		B => B(19 DOWNTO 16),
		Gi => F(0),
		Ei => F(1),
		Li => F(2),
		Gt => G(0),
		Eq => G(1),
		Lt => G(2)
	);

	Chip6 : Comp_4bit
	PORT MAP(

		A => A(23 DOWNTO 20),
		B => B(23 DOWNTO 20),
		Gi => G(0),
		Ei => G(1),
		Li => G(2),
		Gt => H(0),
		Eq => H(1),
		Lt => H(2)
	);

	Gt <= H(0);
	Eq <= H(1);
	Lt <= H(2);

END hierarchical_structure;