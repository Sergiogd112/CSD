--------------------------------------------------------------------------------
-- Tutorial P5. Example of a T_FF 
-- Style FSM with state enumeration (only for FSM with a few number of states)
-- UPC - EETAC - CSD -- http://digsys.upc.edu
--------------------------------------------------------------------------------
LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY T_FF IS
	Port (	
     	CLK 	: IN	STD_LOGIC;
		CD 		: IN	STD_LOGIC;
		T		: IN	STD_LOGIC;
		Q 		: OUT	STD_LOGIC
	);

END T_FF;

			-- Internal desciption in FSM style

ARCHITECTURE FSM_like OF T_FF IS

	TYPE State_type IS (Reset_state, Set_state);  

-- Constants for special states 
CONSTANT Reset	: State_type := Reset_state;    

-- Internal wires 
	SIGNAL current_state, next_state	: State_type ; 

BEGIN
--------------------------------------------------------------------------------
------------------------------ the only clocked block : the state register
state_register: PROCESS (CD, CLK, next_state )
	BEGIN
						
	IF CD = '1' THEN 			-- reset counter
		current_state <= Reset; 
			-- Synchronous register (D-type flip-flop)
	ELSIF (CLK'EVENT and CLK = '1') THEN
		current_state <= next_state; 
	END IF;

END PROCESS state_register;

------------- CC_1: The next state logic (where to go after a CLK's rising edge)
CC_1: PROCESS (current_state, T)
	BEGIN

		CASE current_state is

			when Reset_state =>
				if T = '1' then 
					next_state <= Set_state;
				else
					next_state <= Reset_state ;
				end if;

			when Set_state =>
				if T = '1' then 
					next_state <= Reset_state;
				else
					next_state <= Set_state ;
				end if;
		end case;

END PROCESS CC_1;

------------- CC_2: combinational system for calculating outputs 
-- Very simple in this case, a buffer. 
CC_2: PROCESS (current_state)
	BEGIN
		CASE current_state is
			when Reset_state =>
				Q <= '0';
			when Set_state =>
				Q <= '1';
		end case;

END PROCESS CC_2;

END FSM_like;
