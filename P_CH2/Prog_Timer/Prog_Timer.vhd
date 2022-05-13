LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Datapath IS

    PORT (
        PC : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
        CNT_E, RST, CLK, LD_PC, CD : IN STD_LOGIC;
        TOF : OUT STD_LOGIC

    );

END Datapath;

ARCHITECTURE hierarchical_structure OF Datapath IS

    COMPONENT Datapath IS

        PORT (
            PC : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
            CNT_E, RST, CLK, LD_PC, CD : IN STD_LOGIC;
            TOF : OUT STD_LOGIC

        );

    END COMPONENT;

    COMPONENT ontrol_unit IS
        PORT (
            TRG : IN STD_LOGIC;
            CD : IN STD_LOGIC;
            Clk : IN STD_LOGIC;
            TOF : IN STD_LOGIC;
            Timer_out : OUT STD_LOGIC;
            ETP : OUT STD_LOGIC;
            CNT_E : OUT STD_LOGIC;
            CLR_C : OUT STD_LOGIC;
            LD_R : OUT STD_LOGIC

        );
    END COMPONENT;

    SIGNAL CNT_Q, PC_R : STD_LOGIC_VECTOR(23 DOWNTO 0);

BEGIN
    Counter_16M_1 : Counter_16M
    PORT MAP(
        CLK => CLK,
        CD => CD,
        LD => RST,
        UD_L => '1',
        CE => CNT_E,
        Q => CNT_Q,
        Din => "000000000000000000000000"
    );
    Data_reg_24bit_1 : Data_reg_24bit
    PORT MAP(
        CLK => CLK,
        LD => LD_PC,
        Din => PC,
        CD => CD,
        Q => PC_R
    );
    Comp_24bit_1 : Comp_24bit
    PORT MAP(
        A => CNT_Q,
        B => PC_R,
        Gi => '0',
        Ei => '1',
        Li => '0',
        Eq => TOF
    );

END hierarchical_structure;