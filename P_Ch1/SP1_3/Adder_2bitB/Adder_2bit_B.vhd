--------------------------------------------------------------------------------
-- An example of a simple circuit for running a tutorial on VHDL and EDA tools
-- equations (structural)
---------------------------------------------------
-- Exercise P2  - CSD 
-- http://digsys.upc.edu
--------------------------------------------------------------------------------

LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Adder_2bit_B IS
    PORT (
        A, B : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        Cin : IN STD_LOGIC;
        S : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        Cout : OUT STD_LOGIC
    );
END Adder_2bit_B;

ARCHITECTURE hierarchical_structure OF Adder_2bit_B IS


COMPONENT Adder1Bit IS
    PORT (
        A, B : IN STD_LOGIC;
        Cin : IN STD_LOGIC;
        S : OUT STD_LOGIC;
        Cout : OUT STD_LOGIC
    );
END COMPONENT;
    SIGNAL x,Y,Z,C : STD_LOGIC;
BEGIN

    Chip1 : Adder1Bit PORT MAP(
        A => A(0),
        B => B(0),
        Cin => Cin,
        S => X,
        Cout => C
    );
    Chip2 : Adder1Bit PORT MAP(
        A => A(1),
        B => B(1),
        Cin => C,
        S => Y,
        Cout => Z
    );
	 S(0)<=X;
	 S(1)<=Y;
	 Cout<=Z;
END hierarchical_structure;