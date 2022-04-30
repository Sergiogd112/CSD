LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Sel_Add_Subt_9bit IS

    PORT (
        A, B : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
        OP : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
        OV, Z, Cout : OUT STD_LOGIC;
        R : OUT STD_LOGIC_VECTOR (8 DOWNTO 0)

    );

END Sel_Add_Subt_9bit;

ARCHITECTURE hierarchical_structure OF Sel_Add_Subt_9bit IS
    COMPONENT Adder_9bit IS
        PORT (
            A, B : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            Cin : IN STD_LOGIC;
            S : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
            Cout, Z : OUT STD_LOGIC
        );

    END COMPONENT;
    SIGNAL J, P, M, N, W, Y : STD_LOGIC;
    SIGNAL XORB, Q : STD_LOGIC_VECTOR (8 DOWNTO 0);

BEGIN

    XORB <= (B(0) XOR OP(0), B(1) XOR OP(0), B(2) XOR OP(0), B(3) XOR OP(0), B(4) XOR OP(0),
    B(5) XOR OP(0), B(6) XOR OP(0), B(7) XOR OP(0), B(8) XOR OP(0));

    Chip1 : Adder_9bit
    PORT MAP(
        A => A,
        B => XORB,
        Cin => OP(0),
        S => Q,
        Cout => P,
        Z => N
    );
    M <= P XOR N;
    J <= NOT(OP(1));
    W <= N AND J;
    Y <= Q(0) OR Q(1) OR Q(2) OR Q(3) OR Q(4) OR Q(5) OR Q(6) OR Q(7) OR Q(8);
    Z <= NOT(W OR Y);
    Cout <= N AND J;
    OV <= OP(1) AND M;
    R <= Q;
END hierarchical_structure;