LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Arith_9bit IS

    PORT (
        A, B : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
        OP : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
        OV, Z, Cout : OUT STD_LOGIC;
        R : OUT STD_LOGIC_VECTOR (8 DOWNTO 0)

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
    COMPONENT Sel_Add_Subt_9bit IS

        PORT (
            A, B : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
            OP : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
            OV, Z, Cout : OUT STD_LOGIC;
            R : OUT STD_LOGIC_VECTOR (8 DOWNTO 0)

        );

    END COMPONENT;
    COMPONENT Triple_MUX_2 IS

        PORT (
            Ch0, Ch1 : IN STD_LOGIC_VECTOR (2 DOWNTO 0); -- 1 bits per channel
            S : IN STD_LOGIC; -- to select 2 channels
            E : IN STD_LOGIC;
            Y : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
        );

    END COMPONENT;
    SIGNAL Q, K, N, S, P : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL L, M, O, W : STD_LOGIC;

BEGIN
    Chip1 : Sel_Add_Subt_9bit
    PORT MAP(

        A => A,
        B => B,
        OP => OP,
        OV => O,
        Z => L,
        Cout => M,
        R(8) => Q(2),
        R(7 DOWNTO 5) => S,
        R(4) => Q(1),
        R(3 DOWNTO 1) => P,
        R(0) => Q(0)

    );
    Chip2 : Comp_9bit
    PORT MAP(

        A => A,
        B => B,
        Gi => '0',
        Ei => '1',
        Li => '0',
        Gt => K(2),
        Eq => K(1),
        Lt => K(0)
    );
    W <= NOT(OP(0)) OR OP(1);
    Chip3 : Triple_MUX_2
    PORT MAP(

        Ch0 => K,
        Ch1 => Q,
        S => W,
        E => '1',
        Y => N
    );
    R(8) <= N(0);
    R(7 DOWNTO 5) <= (S(0) AND W, S(1) AND W, S(2) AND W);
    R(4) <= N(1);
    R(3 DOWNTO 1) <= (P(0) AND W, P(1) AND W, P(2) AND W);
    R(0) <= N(0);
    OV <= O;
    Z <= L;
    Cout <= M;

END hierarchical_structure;