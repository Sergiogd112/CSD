--------------------------------------------------------------------------------
-- An example of a simple circuit for running a tutorial on VHDL and EDA tools
-- equations (structural)
---------------------------------------------------
-- Exercise P2  - CSD 
-- http://digsys.upc.edu
--------------------------------------------------------------------------------

LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Adder1Bit IS
    PORT (
        A, B : IN STD_LOGIC;
        Cin : IN STD_LOGIC;
        S : OUT STD_LOGIC;
        Cout : OUT STD_LOGIC
    );
END Adder1Bit;

ARCHITECTURE hierarchical_structure OF Adder1Bit IS
    COMPONENT MUX_8 IS

        PORT (-- Data channels declared as individual wires
            -- Declaring them as a vector Ch(7..0) will change the symbol
            Ch7, Ch6, Ch5, Ch4 : IN STD_LOGIC; -- 1 bit per channel
            Ch3, Ch2, Ch1, Ch0 : IN STD_LOGIC; -- 1 bit per channel
            -- S(2..0) to select 8 channels declared as a vector
            S : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
            E_L : IN STD_LOGIC;
            Y : OUT STD_LOGIC;
            Y_L : OUT STD_LOGIC
        );

    END COMPONENT;

    SIGNAL X, Y : STD_LOGIC;

BEGIN
    Chip1 : MUX_8 PORT MAP(
        Ch0 => '0',
        Ch1 => '1',
        Ch2 => '1',
        Ch3 => '0',
        Ch4 => '1',
        Ch5 => '0',
        Ch6 => '0',
        Ch7 => '1',
        S(2) => A,
        S(1) => B,
        S(0) => Cin,
        E_L => '0',
        Y => X
    );
    Chip2 : MUX_8 PORT MAP(
        Ch0 => '0',
        Ch1 => '0',
        Ch2 => '0',
        Ch3 => '1',
        Ch4 => '0',
        Ch5 => '1',
        Ch6 => '1',
        Ch7 => '1',
        S(2) => A,
        S(1) => B,
        S(0) => Cin,
        E_L => '0',
        Y => Y
    );
    S <= X;
    Cout <= Y;
END hierarchical_structure;