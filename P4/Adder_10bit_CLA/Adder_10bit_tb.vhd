--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:54:32 10/14/2019
-- Design Name:   
-- Module Name:   L:/CSD/1920Q1/P4/Adder_10bit/Adder_10bit_tb.vhd
-- Project Name:  Adder_10bit_prj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Adder_10bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Adder_10bit_tb IS
END Adder_10bit_tb;
 
ARCHITECTURE behavior OF Adder_10bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Adder_10bit
    PORT(
         A : IN  std_logic_vector(9 downto 0);
         B : IN  std_logic_vector(9 downto 0);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(9 downto 0);
         Cout : OUT  std_logic;
         Cout9 : OUT  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(9 downto 0) := (others => '0');
   signal B : std_logic_vector(9 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(9 downto 0);
   signal Cout : std_logic;
   signal Cout9 : std_logic;
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
	constant Min_Pulse : time := 25.5 us;
	
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Adder_10bit PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout,
          Cout9 => Cout9,
          Z => Z
        );


stim_proc: process
   begin		
     
      wait for 70 ns;	
		wait for Min_Pulse*3.2;
		
	-- Some input values:
		Cin <= '0';			--	 0
     	A <= "0000001010"; 	-- 10
		B <= "0000000110"; 	--  6
								------
								-- 16 ==> 0 00010000
		wait for Min_Pulse*5.2;
		
		Cin <= '1';			--  1
		A <= "0000011100"; 	-- 28
		B <= "0000001100"; 	-- 12
								------
								-- 41 ==> 0 00101000	
		wait for Min_Pulse*5.2;

		Cin <= '1';			--   1
		A <= "0001111010"; 	-- 122
		B <= "0011111111"; 	-- 255
								------
								-- 378 ==> 1 01111010	
		wait for Min_Pulse*4.8;

		-- Let's try the flag Z
		Cin <= '0';			-- 0
		A <= "0000000000"; 	-- 0
		B <= "0000000000"; 	-- 0
								------
								-- 0 ==> 0 00000000	
		wait for Min_Pulse*4.8;
				
				-- The value that can be added
		Cin <= '1';			--   1
		A <= "0011111111"; 	-- 255
		B <= "0011111111"; 	-- 255
								------
								-- 511 ==> ?1 11111111	
		wait for Min_Pulse*4.8;
		
		
				
				-- The maximun value that can be added
		Cin <= '1';			--   1
		A <= "1111111111"; 	-- 1023
		B <= "1111111111"; 	-- 1023
								------
								-- 2047 ==> ?   1 1111111111	
		wait for Min_Pulse*4.8;
				
		
      wait;
   end process;
	
	


END;
