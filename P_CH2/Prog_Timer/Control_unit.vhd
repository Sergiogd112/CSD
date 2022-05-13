-------------------------------------------------------------------------------- 
-- UPC - EETAC - EEL - CSD - DIGSYS       
--------------------------------------------------------------------------------
-- P6. Example tutorial. Classroom lightning system 
-- Plan: Synchronous FSM 
-- This file is the translation of the ideas exposed in the planning section of 
-- https://digsys.upc.edu/csd/P06/P6_T/Light/Light.html 
-- 
-- Reference from which to copy & adapt:
--- http://digsys.upc.edu/csd/P06/P6_T/Lamp/Lamp.html
--------------------------------------------------------------------------------

LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Control_unit IS
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
END Control_unit;

ARCHITECTURE FSM_like OF Control_unit IS

	TYPE State_type IS (Idle, Load_Register, Timing, End_Pulse, Trigger_Check);

	SIGNAL current_state, next_state : State_type;
	------------------------------------------------------------------------------
	-- Xilinx (click the ISE tap: "Design goals & strategies", file:default.xds)  
	-- The legal values for this are "one_hot", "sequential", "johnson", 
	-- "gray", and "auto".
	--	ATTRIBUTE fsm_encoding : STRING;
	--	ATTRIBUTE fsm_encoding of State_type : TYPE IS "johnson";
	--
	-- FSM encoding for Lattice 
	-- ATTRIBUTE syn_encoding : STRING;
	-- ATTRIBUTE syn_encoding OF State_type : TYPE IS "one-hot";
BEGIN

	-------- The state register that contains the memory cells
	state_register : PROCESS (CD, CLK, next_state)
	BEGIN

		IF CD = '1' THEN
			current_state <= Idle; -- reset state where to go if a CD signal is asserted 
		ELSIF (CLK'EVENT AND CLK = '1') THEN -- Synchronous D-type flip-flops
			current_state <= next_state;
		END IF;

	END PROCESS state_register;

	-------- CC1: Combinational system for calculating next state
	-------- The truth table that contains all the state transitions (arrows)

	CC_1 : PROCESS (current_state, TRG, TOF)
	BEGIN

		CASE current_state IS

			WHEN Idle =>
				IF (TRG = '0') THEN
					next_state <= Idle;
				ELSE
					next_state <= Load_Register;
				END IF;

			WHEN Load_Register =>
				next_state <= Timing;

			WHEN Timing =>
				IF (TOF = '0') THEN
					next_state <= Timing;
				ELSE
					next_state <= End_Pulse;
				END IF;

			WHEN End_Pulse =>
				next_state <= Trigger_Check;

			WHEN Trigger_Check =>
				IF (TRG = '0') THEN
					next_state <= Idle;
				ELSE
					next_state <= Trigger_Check;
				END IF;

		END CASE;

	END PROCESS CC_1;

	-------- CS_2: combinational system for calculating the outputs 
	CC_2 : PROCESS (current_state)
	BEGIN
		CASE current_state IS
			WHEN Idle =>
				Timer_out <= '0';
				ETP <= '0';
				CNT_E <= '0';
				CLR_C <= '0';
				LD_R <= '0';

			WHEN Load_Register =>
				Timer_out <= '1';
				ETP <= '0';
				CNT_E <= '0';
				CLR_C <= '1';
				LD_R <= '1';

			WHEN Timing =>
				Timer_out <= '1';
				ETP <= '0';
				CNT_E <= '1';
				CLR_C <= '0';
				LD_R <= '0';

			WHEN End_Pulse =>
				Timer_out <= '0';
				ETP <= '0';
				CNT_E <= '1';
				CLR_C <= '0';
				LD_R <= '0';
			WHEN Trigger_Check =>
				Timer_out <= '0';
				ETP <= '0';
				CNT_E <= '0';
				CLR_C <= '0';
				LD_R <= '0';
		END CASE;

	END PROCESS CC_2;

	-- Place here other logic if necessary
END FSM_like;