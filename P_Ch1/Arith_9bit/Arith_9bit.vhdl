LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Arith_9bit IS

    PORT (
        A, B : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
        OP : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
        OV, Z, Cout : OUT STD_LOGIC;
        R : OUT STD_LOGIC_VECTOR (8 DOWNTO 0);

    );

END Arith_9bit;

ARCHITECTURE hierarchical_structure OF Arith_9bit IS

    COMPONENT Comp_9bit IS

        PORT (
            A, B : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
            Gi, Ei, Li : IN STD_LOGIC;
            Gt, Eq, Lt : OUT STD_LOGIC

        );

    END COMPONENT;
    COMPONENT Adder_9bit IS
        PORT (
            A, B : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            Cin : IN STD_LOGIC;
            S : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
            Cout, Z : OUT STD_LOGIC
        );

    END COMPONENT;
    SIGNAL Q,K : STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN
END hierarchical_structure;