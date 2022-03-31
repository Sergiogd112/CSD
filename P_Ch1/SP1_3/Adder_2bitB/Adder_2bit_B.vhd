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

ARCHITECTURE truth_table OF Adder_2bit_B IS

    -- The schematic has an internal vector signal: 
    SIGNAL Y_OUT : STD_LOGIC_VECTOR (2 DOWNTO 0);

BEGIN
    PROCESS (Cin, A, B)
    BEGIN
        IF Cin = '1' THEN
            CASE (A & B) IS
                    -- 	Active-high outputs table 
                    -- Xin(3,2,1,0)   abcdefg        
                    -- ----        	  -------    
                WHEN "0000" => -- 0
                    Y_OUT <= "001";
                WHEN "0001" => -- 1
                    Y_OUT <= "010";
                WHEN "0010" => -- 2
                    Y_OUT <= "011";
                WHEN "0011" => -- 3
                    Y_OUT <= "100";
                WHEN "0100" => -- 4
                    Y_OUT <= "010";
                WHEN "0101" => -- 5
                    Y_OUT <= "011";
                WHEN "0110" => -- 6
                    Y_OUT <= "100";
                WHEN "0111" => -- 7
                    Y_OUT <= "101";
                WHEN "1000" => -- 8
                    Y_OUT <= "011";-- All LED ON
                WHEN "1001" => -- 9
                    Y_OUT <= "100";
                WHEN "1010" => -- A
                    Y_OUT <= "101";
                WHEN "1011" => -- b
                    Y_OUT <= "101";
                WHEN "1100" => -- C
                    Y_OUT <= "100";
                WHEN "1101" => -- d
                    Y_OUT <= "101";
                WHEN "1110" => -- E
                    Y_OUT <= "110";
                WHEN OTHERS => -- F
                    Y_OUT <= "111";
            END CASE;

        ELSE
            CASE (A & B) IS
                    -- 	Active-high outputs table 
                    -- Xin(3,2,1,0)   abcdefg        
                    -- ----        	  -------    
                    WHEN "0000" => -- 0
                    Y_OUT <= "000";
                WHEN "0001" => -- 1
                    Y_OUT <= "001";
                WHEN "0010" => -- 2
                    Y_OUT <= "010";
                WHEN "0011" => -- 3
                    Y_OUT <= "011";
                WHEN "0100" => -- 4
                    Y_OUT <= "001";
                WHEN "0101" => -- 5
                    Y_OUT <= "010";
                WHEN "0110" => -- 6
                    Y_OUT <= "011";
                WHEN "0111" => -- 7
                    Y_OUT <= "100";
                WHEN "1000" => -- 8
                    Y_OUT <= "010";-- All LED ON
                WHEN "1001" => -- 9
                    Y_OUT <= "011";
                WHEN "1010" => -- A
                    Y_OUT <= "100";
                WHEN "1011" => -- b
                    Y_OUT <= "100";
                WHEN "1100" => -- C
                    Y_OUT <= "011";
                WHEN "1101" => -- d
                    Y_OUT <= "100";
                WHEN "1110" => -- E
                    Y_OUT <= "101";
                WHEN OTHERS => -- F
                    Y_OUT <= "110";
            END CASE;
        END IF;

    END PROCESS;

    -- Extra logic (simple NOT buffers in this case to make 
    -- active-low outputs )
    -- 
    S(0) <= Y_OUT(1);
    S(1) <= Y_OUT(2);
    Cout <= Y_OUT(0);
END truth_table;
