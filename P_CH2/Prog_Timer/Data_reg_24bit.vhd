--------------------------------------------------------------------------------
-- Tutorial P7. Example of a 4-bit data register (4-bit word memory cell)
-- It is esasily expandable to n-bit

-- Plan:  FSM with plan Y: state signals are STD_LOGIC_VECTOR
-- Reference and schematics:
-- https://digsys.upc.edu/csd/P07/P7_T/Data_register/Data_reg_24bit.html
-- UPC - EETAC - CSD -- http://digsys.upc.edu
--------------------------------------------------------------------------------
LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;


ENTITY Data_reg_24bit IS
      Port (	
		CLK	: IN	STD_LOGIC;
		CD	: IN	STD_LOGIC;
	    LD	: IN	STD_LOGIC;
		Q	: OUT	STD_LOGIC_VECTOR(23 DOWNTO 0);
		Din	: IN STD_LOGIC_VECTOR(23 DOWNTO 0)
	);

END Data_reg_24bit;

ARCHITECTURE FSM_like OF Data_reg_24bit IS
-- Internal desciption in FSM style: Three blocks --> State register, CC1 and CC2

CONSTANT Reset	: STD_LOGIC_VECTOR(23 DOWNTO 0) := "000000000000000000000000"; 

-- Internal signals --> Plan Y:  
SIGNAL present_state,future_state: STD_LOGIC_VECTOR(23 DOWNTO 0);

BEGIN
--------------------------------------------------------------------------------
------- State register 
-- A set of D-type flip-flops in parellel
-- The asynchronous reset has precedence over the CLK's rising edge detection

State_Register: PROCESS (CD, CLK)
	BEGIN
						
	IF CD = '1' THEN -- An asynchronous reset called "Clear Direct"
		present_state <= Reset; 
	ELSIF (CLK'EVENT and CLK = '1') THEN -- Synchronous register (D_FF)
		present_state <= future_state; 
	END IF;

END PROCESS State_Register;

--------------------------------------------------------------------------------
-- CC1 ----- Combinational circuit for calculating next state to go
-- Even for simple FSM, this combinational circuit is better described always in -- the same way as a behavioural interpretation of the truth from its flow chart 
CC1: PROCESS (present_state, Din, LD)
	BEGIN
		IF LD = '1' THEN
			future_state <= Din;	
		ELSE 	
			future_state <= present_state; -- keep the same state
		END IF;
END PROCESS CC1;

--------------------------------------------------------------------------------
-- CC2 ----- Combinational circuit for calculating the outputs
-- In this case,  we are simply interested in making available to an output 
-- the internal present_state

Q <= present_state; 

END FSM_like;


