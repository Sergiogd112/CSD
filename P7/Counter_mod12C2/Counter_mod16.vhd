--------------------------------------------------------------------------------
-- Synchronous universal 4-bit binary counter  
-- FSM style, plan Y: STD_LOGIC_VECTOR signals and IEEE.STD_LOGIC_ARITH library
-- This component may be used as a building block for more complex circuits
---------------------------------------------------
-- Project P7  - CSD 
-- This code is a translation of the planning ideas and flow charts at: 
-- https://digsys.upc.edu/csd/P07/P7_T/Counter_mod16/Counter_mod16.html
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY Counter_mod16 IS
      Port (	CLK 	  		: IN	STD_LOGIC;
				CD 	  			: IN	STD_LOGIC;
				LD, CE, UD_L	: IN	STD_LOGIC;			
				Din  			: IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
				Q	  			: OUT	STD_LOGIC_VECTOR(3 DOWNTO 0);
				TC16  			: OUT	STD_LOGIC
          	);       
		          	
END Counter_mod16;

			-- Internal desciption in FSM style

ARCHITECTURE FSM_like OF Counter_mod16 IS

CONSTANT Max_Count	: STD_LOGIC_VECTOR(3 DOWNTO 0):= "1111"; 
CONSTANT Reset		: STD_LOGIC_VECTOR(3 DOWNTO 0):= "0000"; 

-- Internal wires --> in this case just the present and future state signals

SIGNAL present_state,next_state: STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
--------------------------------------------------------------------------------
-- State register 
-- The only clocked block, which is a set of D-type flip-flops in parellel
-- The asynchronous reset has precedence over the CLK
State_Register: PROCESS (CD, CLK, next_state)
	BEGIN
						
	IF CD = '1' THEN 	
		-- reset counter (the asynchronous reset which we call "Clear Direct"
		present_state <= Reset; 
	ELSIF (CLK'EVENT and CLK = '1') THEN	
		-- Synchronous register (D-type flip-flop)
		present_state <= next_state; 
	END IF;

END PROCESS State_Register;

--------------------------------------------------------------------------------
-- CC1 Combinational circuit for calculating next state
--     Behavioural description of the truth table by means of a flow chart
CC1: PROCESS (present_state, LD, CE, UD_L, Din)
	BEGIN
	IF LD = '1' THEN 
		next_state <= Din; -- Load the parallel data (data register)

		ELSIF CE = '0' THEN
			next_state <= present_state; -- Do nothing -- Inhibit the counter

			ELSIF UD_L = '1' THEN
				IF(present_state < Max_Count ) THEN
					next_state <= present_state + 1 ; -- Up counter
				ELSE
					next_state <= Reset;
				END IF;	

			ELSE 	
				IF(present_state > Reset ) THEN
					next_state <= present_state - 1 ;  -- Down counter
				ELSE
					next_state <= Max_Count;
				END IF;	
						
	END IF;

END PROCESS CC1;
--------------------------------------------------------------------------------
-- CC_2: Combinational circuit for calculating the outputs

--Terminal count is a function with only 2 minterns:
TC16 <= '1' WHEN CE = '1' and ((present_state = Max_count AND UD_L = '1') OR 
                               (present_state = Reset AND UD_L = '0')) ELSE '0';  

-- Data outputs are simply a buffer copy of the internal state: 
Q <= present_state; 

END FSM_like;





