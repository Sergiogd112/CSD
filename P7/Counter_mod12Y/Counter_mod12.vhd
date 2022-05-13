--------------------------------------------------------------------------------
-- An example of synchronous binary counter modulo 12
-- LAB7 tutorial https://digsys.upc.edu/csd/plan/lab7/lab7.html
-- 
-- Plan Y. Single VHDL file finite state machine 
---------------------------------------------------
-- Project P7  - CSD 
-- https://digsys.upc.edu
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY Counter_mod12 IS
	PORT (
		UD_L, CE, CD, CLK		: IN	STD_LOGIC;
		Q						: OUT	STD_LOGIC_VECTOR (3 DOWNTO 0);
		TC12					: OUT	STD_LOGIC
	 );
END Counter_mod12;

			-- Internal description in FSM style

ARCHITECTURE FSM_like OF Counter_mod12 IS

CONSTANT Max_Count	: STD_LOGIC_VECTOR(3 DOWNTO 0):= "1011"; 
CONSTANT Reset		: STD_LOGIC_VECTOR(3 DOWNTO 0):= "0000"; 

-- Internal wires --> in this case just the present and future state signals

SIGNAL present_state,future_state: STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
--------------------------------------------------------------------------------
-- State register 
-- The only clocked block, which is a set of D-type flip-flops in parallel
-- The asynchronous reset has precedence over the CLK
State_Register: PROCESS (CD, CLK, future_state)
	BEGIN
						
	IF CD = '1' THEN 	
		-- reset counter ( an asynchronous reset which we call "Clear Direct"
		present_state <= Reset; 
	ELSIF (CLK'EVENT and CLK = '1') THEN	
		-- Synchronous register (D-type flip-flop)
		present_state <= future_state; 
	END IF;

END PROCESS State_Register;

--------------------------------------------------------------------------------
-- CC1 Combinational circuit for calculating next state
--     Behavioural description of the truth table. 
CC1: PROCESS (present_state, CE, UD_L)
	BEGIN
		IF CE = '0' THEN
			future_state <= present_state; -- Do nothing -- Inhibit the counter

		ELSIF UD_L = '1' THEN
			IF(present_state < Max_Count) THEN
				future_state <= present_state + 1 ; -- Up counter
			ELSE
				future_state <= Reset;
			END IF;	

		ELSE 	
			IF(present_state > Reset ) THEN
				future_state <= present_state - 1 ;  -- Down counter
			ELSE
				future_state <= Max_Count;
			END IF;							
	END IF;

END PROCESS CC1;

--------------------------------------------------------------------------------
-- CC2: Combinational system for calculating extra outputs 
-- and outputting the present state (the actual count)

--code outputs 
Q <= present_state; 

--terminal count
TC12 <= '1' WHEN CE = '1' and ((present_state = Max_count AND UD_L = '1') OR 
                               (present_state = Reset AND UD_L = '0')) ELSE '0';  

END FSM_like;
