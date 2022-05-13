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
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
			
ENTITY Light_Control IS
      Port (	CLK 	: IN	STD_LOGIC;
				B		: IN	STD_LOGIC;
				CD   	: IN 	STD_LOGIC;
				Z 		: OUT	STD_LOGIC
	);
END Light_Control;

ARCHITECTURE FSM_like OF Light_Control IS

	TYPE State_type IS (Idle, Click_1_detected, Button_released_1,
					Click_2_detected, Button_released_2, Click_3_detected);  

	SIGNAL current_state, next_state	: State_type ; 	
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
state_register: PROCESS (CD, CLK, next_state)
	BEGIN
						
	IF CD = '1' THEN 						
		current_state <= Idle; -- reset state where to go if a CD signal is asserted 
	ELSIF (CLK'EVENT and CLK = '1') THEN	-- Synchronous D-type flip-flops
		current_state <= next_state; 
	END IF;

END PROCESS state_register;

	-------- CC1: Combinational system for calculating next state
	-------- The truth table that contains all the state transitions (arrows)

CC_1: PROCESS (current_state, B)
	BEGIN
	   
		CASE current_state IS
				
			WHEN Idle =>
			   IF (B = '0') THEN
					next_state <= Idle;	
				ELSE    
					next_state <= Click_1_detected; 
				END IF;
				
			WHEN Click_1_detected =>  
				IF (B = '1') THEN
					next_state <= Click_1_detected; 
				ELSE    
					next_state <= Button_released_1 ;
				END IF;
				
			WHEN Button_released_1 => 
				IF (B = '0') THEN
					next_state <= Button_released_1; 
				ELSE    
					next_state <= Click_2_detected ;
				END IF;
				
			WHEN Click_2_detected => 
				IF (B = '1') THEN
					next_state <= Click_2_detected; 
				ELSE    
					next_state <= Button_released_2 ;
				END IF;
				
			WHEN Button_released_2 => 
			   IF (B = '0') THEN
			      next_state <= Button_released_2; 
				ELSE    
					next_state <= Click_3_detected ;
				END IF;

			WHEN Click_3_detected => 
			   IF (B = '1') THEN
			      next_state <= Click_3_detected; 
				ELSE    
					next_state <= Idle ; -- Go bakc to the initial state
				END IF;
						
		END CASE ;		

END PROCESS CC_1;

	-------- CS_2: combinational system for calculating the outputs 
CC_2: PROCESS (current_state)
	BEGIN
		CASE current_state IS
			WHEN Idle => 
				Z <= '0';

			WHEN Click_1_detected => 
				Z <= '0'; 	

			WHEN Button_released_1 => 
				Z <= '0'; 	

			WHEN Click_2_detected => 
				Z <= '1'; -- Now the light has to be turned ON	

			WHEN Button_released_2 => 
				Z <= '1'; -- keep the light ON 

			WHEN Click_3_detected => 
				Z <= '0'; 	-- Switch OFF the light 
		END CASE ;		

END PROCESS CC_2;

-- Place here other logic if necessary


END FSM_like;