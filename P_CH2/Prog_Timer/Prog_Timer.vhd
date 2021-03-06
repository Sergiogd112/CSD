LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Prog_Timer IS

    PORT (
        PC : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
        TRG:IN STD_LOGIC;
		  CLK, CD : IN STD_LOGIC;
        Timer_out, ETP : OUT STD_LOGIC

    );

END Prog_Timer;

ARCHITECTURE hierarchical_structure OF Prog_Timer IS

    COMPONENT Datapath IS

        PORT (
            PC : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
            CNT_E, RST, CLK, LD_PC, CD : IN STD_LOGIC;
            TOF : OUT STD_LOGIC

        );

    END COMPONENT;

    COMPONENT Control_unit IS
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
    SIGNAL TOFs, LD_PCs, RSTs, CNT_Es : STD_LOGIC;

BEGIN
    Control_unit_1 : Control_unit
    PORT MAP(
        CLK => CLK,
        CD => CD,
        TRG => TRG,
        TOF => TOFs,
        CNT_E => CNT_Es,
        CLR_C => RSTs,
        LD_R => LD_PCs,
        Timer_out=> Timer_out,
        ETP=> ETP
    );
    Datapath_1 : Datapath
    PORT MAP(
        CLK => CLK,
        CD => CD,
        CNT_E => CNT_Es,
        RST => RSTs,
        LD_PC => LD_PCs,
        PC => PC,
        TOF => TOFs
    );
END hierarchical_structure;