LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Datapath IS

    PORT (
        PC: IN STD_LOGIC_VECTOR(23 DOWNTO 0);
        CNT_E, RST, CLK, LD_PC, CD : IN STD_LOGIC;
        TOF : OUT STD_LOGIC

    );

END Datapath;

ARCHITECTURE hierarchical_structure OF Datapath IS

    COMPONENT Comp_24bit IS
        PORT (
            A, B : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
            Gi, Ei, Li : IN STD_LOGIC;
            Gt, Eq, Lt : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT Counter_16M IS
        PORT (
            CLK : IN STD_LOGIC;
            CD : IN STD_LOGIC;
            LD, CE, UD_L : IN STD_LOGIC;
            Din : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
            Q : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
            TC16 : OUT STD_LOGIC
        );
    END COMPONENT;
    COMPONENT Data_reg_24bit IS
        PORT (
            CLK : IN STD_LOGIC;
            CD : IN STD_LOGIC;
            LD : IN STD_LOGIC;
            Q : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
            Din : IN STD_LOGIC_VECTOR(23 DOWNTO 0)
        );

    END COMPONENT;
    SIGNAL CNT_Q,PC_R : STD_LOGIC_VECTOR(23 DOWNTO 0);

BEGIN
    Counter_16M_1 : Counter_16M
    PORT MAP(
        CLK=>CLK,
        CD=>CD,
        LD=>RST,
        UD_L=>'1',
        CE=>CNT_E,
        Q=>CNT_Q,
        Din=>"000000000000000000000000"
    );
    Data_reg_24bit_1 : Data_reg_24bit
    PORT MAP(
        CLK=>CLK,
        LD=>LD_PC,
        Din=>PC,
        CD=>CD,
        Q=>PC_R
    );
    Comp_24bit_1 : Comp_24bit
    PORT MAP(
        A=>CNT_Q,
        B=>PC_R,
        Gi=>'0',
        Ei=>'1',
        Li=>'0',
        Eq=>TOF
    );

END hierarchical_structure;