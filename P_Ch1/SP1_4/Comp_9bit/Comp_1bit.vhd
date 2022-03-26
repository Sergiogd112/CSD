--------------------------------------------------------------------------------
-- Exercise P3: Arithmetic circuits - CSD 
-- An example of a chip design: Plan C2 applying the method of multiplexers. 
-- http://digsys.upc.edu

---------------------------------------------------
-- Comp_1bit structural and hiearachical using components and signals
-- This file is the translation of the schematic in the corresponding tutorial:
-- https://digsys.upc.edu/csd/P03/Comp_1bit_C2_MoM/P3_Comp_1bit_C2.html
-- A single section of the 74LS85
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY Comp_1bit IS
		PORT (
			A,B, Gi, Ei, Li	: IN STD_LOGIC;				
			GT, EQ, LT		: OUT STD_LOGIC
		  );
END Comp_1bit;


ARCHITECTURE hierarchical_structure_PlanC2 OF Comp_1bit IS
	
-- The elemental components to be used:
	COMPONENT MUX_4 IS  
		PORT (
			Ch0, Ch1, Ch2, Ch3	: 	IN 	STD_LOGIC;  -- 1 bits per channel
			S					:	IN 	STD_LOGIC_VECTOR (1 downto 0);	
			E_L					: 	IN 	STD_LOGIC;
			Y					: 	OUT	STD_LOGIC
		  );
	END COMPONENT;

	COMPONENT MUX_2 IS  
		PORT (
			Ch0, Ch1	: 	IN 	STD_LOGIC;  -- 1 bits per channel
			S			:	IN 	STD_LOGIC;	-- to select 2 channels
			E_L			: 	IN 	STD_LOGIC;
			Y			: 	OUT	STD_LOGIC
		  );
	END COMPONENT;

	COMPONENT MUX_8 IS  	
		PORT (
			Ch7, Ch6, Ch5, Ch4	: 	IN 	STD_LOGIC;  -- 1 bits per channel
			Ch3, Ch2, Ch1, Ch0	: 	IN 	STD_LOGIC;  -- 1 bits per channel
			S			:	IN 	STD_LOGIC_VECTOR (2 downto 0);-- to select 8
			E_L			: 	IN 	STD_LOGIC; -- enable active low
			Y, Y_L			: 	OUT	STD_LOGIC
		  );
	END COMPONENT;
	
-- Signals
SIGNAL J, K, L, T 	:	STD_LOGIC; -- internal wires


BEGIN

-- Instantiation of the three multiplexers

	Chip1	: MUX_2
		PORT MAP (
-- from component name 	=> to signal or port name
				E_L		=> '0', -- Always actve
				Ch1		=> K,
				Ch0		=> J, 
				S		=> A,
				Y		=> GT			  
		);


	Chip2	: MUX_4
		PORT MAP (
-- from component name 	=> to signal or port name
				E_L		=> '0',
				Ch3		=> L,
				Ch2		=> '0',
				Ch1		=> '0',
				Ch0		=> L, 
				S(1)	=> A,
				S(0)	=> B,
				Y		=> EQ			
		);

	Chip3	: MUX_8
		PORT MAP (
-- from component name 	=> to signal or port name
				E_L		=> '0',
				Ch7		=> '0',
				Ch6		=> Li,
				Ch5		=> '0',
				Ch4		=> '0', 
				Ch3		=> '1',
				Ch2		=> '1',
				Ch1		=> '0',
				Ch0		=> Li, 
				S(2)	=> A,
				S(1)	=> B,
				S(0)	=> Gi,				
				Y_L		=> T, -- Not used
				Y		=> LT	-- The output 		
		);

--------------------------------------------------------------------------------
-- Other circuits and equations:

J <= not(B) and Gi and not(Ei) and not(Li); -- Using the ones in the table
-- Now, using the two zeros, assuming the don't case to be '1'
K <= (not(B) or Gi or Ei or not(Li) ) and (not(B) or Gi or not(Ei) or Li) ;

L <= not(Gi) and Ei and not(Li); -- Using the ones in the table		 	
				
END hierarchical_structure_PlanC2;
