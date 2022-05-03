--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:44:46 10/19/2018
-- Design Name:   
-- Module Name:   L:/CSD/1819Q1/P5/VHDL/Circuit_SP2_2_tb.vhd
-- Project Name:  Circuit_SP2_2
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

ENTITY Circuit_SP2_2_tb IS
END Circuit_SP2_2_tb;

ARCHITECTURE behavior OF Circuit_SP2_2_tb IS

	-- Component Declaration for the Unit Under Test (UUT)

	COMPONENT Circuit_SP2_2
		PORT (
			CLK_L, CD_L : IN STD_LOGIC;
			Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
		);
	END COMPONENT;
	--Inputs
	SIGNAL CLK_L : STD_LOGIC := '1';
	SIGNAL CD_L : STD_LOGIC := '1';

	--Outputs
	SIGNAL Q : STD_LOGIC_VECTOR(2 DOWNTO 0);

	-- Clock period definitions
	CONSTANT CLK_period : TIME := 10 us; -- Meaning a F_CLK_L = 100 KHz
	-- Run simulation for 300 us
BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut : Circuit_SP2_2 PORT MAP(
		CLK_L => CLK_l,
		CD_L => CD_L,
		Q => Q
	);

	-- Clock process definitions
	CLK_process : PROCESS
	BEGIN
		CLK_L <= '0';
		WAIT FOR CLK_period * 3/4;
		CLK_L <= '1';
		WAIT FOR CLK_period/4; -- Duty cycle of 25%
	END PROCESS;

	-- Stimulus process
	stim_proc : PROCESS
	BEGIN
		-- hold reset state for 100 ns.
		WAIT FOR 100 ns;
		WAIT FOR CLK_period * 2.3;

		CD_L <= '1';
		WAIT FOR CLK_period * 2.56;

		-- Clear direct 
		CD_L <= '0';
		WAIT FOR CLK_period * 4.56;

		CD_L <= '1';
		WAIT FOR CLK_period * 1.56;
		WAIT;

		-- end of user generated stimulus

	END PROCESS stim_proc;
END;