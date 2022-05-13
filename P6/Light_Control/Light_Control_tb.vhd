--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:42:10 10/29/2018
-- Design Name:   
-- Module Name:   L:/CSD/1819Q1/P6/Light_Control/Light_Control_tb.vhd
-- Project Name:  Light_Control_prj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Light_Control
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
 
ENTITY Light_Control_tb IS
END Light_Control_tb;
 
ARCHITECTURE behavior OF Light_Control_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Light_Control
    PORT(
         CLK : IN  std_logic;
         B : IN  std_logic;
         CD : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal B : std_logic := '0';
   signal CD : std_logic := '0';

 	--Outputs
   signal Z : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 1 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Light_Control PORT MAP (
          CLK => CLK,
          B => B,
          CD => CD,
          Z => Z
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

-- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*3.3;


		CD 	<= '0';
		B 	<= '0';
      wait for CLK_period*3.12;

		CD <= '1'; -- reset pulse 
      wait for CLK_period*2.33;

		CD <= '0';
      wait for CLK_period*4.33;
		
		-- first pulse 
		B 	<= '1'; -- let's click the button once  
      wait for CLK_period*2.12;
		
		B 	<= '0'; -- let's release the button
      wait for CLK_period*3.49;
		
		
		-- second pulse 
		B 	<= '1'; -- let's click the button once  
      wait for CLK_period*2.62;
		
		B 	<= '0'; -- let's release the button
      wait for CLK_period*5.12;
		
		-- third pulse
		B 	<= '1'; -- let's click the button once  
      wait for CLK_period*2.54;
		
		B 	<= '0'; -- let's release the button
      wait for CLK_period*5.12;
		

		
      -- insert stimulus here 

      wait;
   end process;

END;
