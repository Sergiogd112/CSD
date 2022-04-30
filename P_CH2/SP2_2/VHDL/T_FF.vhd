--------------------------------------------------------------------------------
-- Tutorial P5-P6. Example of T_FF 
-- Style FSM with state enumeration (only for FSM with a few number of states)
-- UPC - EETAC - CSD -- http://digsys.upc.edu
--------------------------------------------------------------------------------
LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY T_FF IS
	PORT (
		CLK : IN STD_LOGIC;
		CD : IN STD_LOGIC;
		T : IN STD_LOGIC;
		Q_L, Q : OUT STD_LOGIC
	);

END T_FF;

-- Internal desciption in FSM style

ARCHITECTURE FSM_like OF T_FF IS

	TYPE State_type IS (Reset_state, Set_state);

	-- Constants for special states 
	CONSTANT Reset : State_type := Reset_state;

	-- Internal wires 
	SIGNAL current_state, next_state : State_type;
	SIGNAL W : STD_LOGIC;

BEGIN
	--------------------------------------------------------------------------------
	------------------------------ the only clocked block : the state register
	state_register : PROCESS (CD, CLK, next_state)
	BEGIN

		IF CD = '1' THEN -- reset counter
			current_state <= Reset;
			-- Synchronous register (D-type flip-flop)
		ELSIF (CLK'EVENT AND CLK = '1') THEN
			current_state <= next_state;
		END IF;

	END PROCESS state_register;

	------------- CC_1: The next state logic (where to go after a CLK's rising edge)
	CC_1 : PROCESS (current_state, T)
	BEGIN

		CASE current_state IS

			WHEN Reset_state =>
				IF T = '1' THEN
					next_state <= Set_state;
				ELSE
					next_state <= Reset_state;
				END IF;

			WHEN Set_state =>
				IF T = '1' THEN
					next_state <= Reset_state;
				ELSE
					next_state <= Set_state;
				END IF;
		END CASE;

	END PROCESS CC_1;

	------------- CC_2: combinational system for calculating outputs 
	-- Very simple in this case, a buffer. 
	CC_2 : PROCESS (current_state)
	BEGIN
		CASE current_state IS
			WHEN Reset_state =>
				W <= '0';
			WHEN Set_state =>
				W <= '1';
		END CASE;

	END PROCESS CC_2;

	-- Output buffers
	Q <= W;
	Q_L <= NOT (W);

END FSM_like;