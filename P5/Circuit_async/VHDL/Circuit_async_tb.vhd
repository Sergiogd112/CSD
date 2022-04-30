--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:44:46 10/19/2018
-- Design Name:   
-- Module Name:   L:/CSD/1819Q1/P5/VHDL/Circuit_async_tb.vhd
-- Project Name:  Circuit_async
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Counter_4bit_async
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
 
ENTITY Circuit_async_tb IS
END Circuit_async_tb;
 
ARCHITECTURE behavior OF Circuit_async_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Circuit_async
    PORT(
         CLK : IN  std_logic;
         CD : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal CD : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 us; -- Meaning a F_CLK = 100 KHz
										-- Run simulation for 300 us
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Circuit_async PORT MAP (
          CLK => CLK,
          CD => CD,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period*3/4;
		CLK <= '1';
		wait for CLK_period/4; -- Duty cycle of 25%
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      wait for CLK_period*2.3;
	
		CD <= '0';
      wait for CLK_period*2.56;

      -- Clear direct 
		CD <= '1';
      wait for CLK_period*4.56;
		
		CD <= '0';
      wait for CLK_period*1.56;

		
      wait;
      
      -- end of user generated stimulus
  
   end process stim_proc;
	

END;
