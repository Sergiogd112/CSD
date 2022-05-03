LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Circuit_SP2_2 IS
    PORT (
        CLK_L, CD_L : IN STD_LOGIC;
        Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    );

END Circuit_SP2_2;

ARCHITECTURE hierarchical_structure OF Circuit_SP2_2 IS
    COMPONENT T_FF IS
        PORT (
        PORT (
            CLK : IN STD_LOGIC;
            CD : IN STD_LOGIC;
            T : IN STD_LOGIC;
            Q_L, Q : OUT STD_LOGIC
        );
    END COMPONENT;
    SIGNAL Q0, Q0_L, Q1, Q1_L, Q2, Q2_L, CD, CLK : STD_LOGIC;
BEGIN
    CD <= NOT(CD_L);
    CLK <= NOT(CLK_L);
    Chip1 : T_FF
    PORT MAP(
        CLK => CLK,
        CD => CD,
        T => '1',
        Q_L => Q0_L,
        Q => Q0
    );

    Chip2 : T_FF
    PORT MAP(
        CLK => Q0_l,
        CD => CD,
        T => '1',
        Q_L => Q1_L,
        Q => Q1
    );

    Chip3 : T_FF
    PORT MAP(
        CLK => Q1_L,
        CD => CD,
        T => '1',
        Q_L => Q2_L,
        Q => Q2
    );
    Q <= (Q0, Q1, Q2);
END hierarchical_structure;