--------------------------------------------------------------------------------
-- An example of a chip design: Multiplexer of 8 channels: MUX_8
-- (Type 74LS151)
---------------------------------------------------
-- MUX_8 structural: using components 
-- Exercise P3  - CSD 
-- http://digsys.upc.edu
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY MUX_8 IS
	PORT (
		Ch7, Ch6, Ch5, Ch4	: 	IN 	STD_LOGIC;  -- 1 bits per channel
		Ch3, Ch2, Ch1, Ch0	: 	IN 	STD_LOGIC;  -- 1 bits per channel
		S			:	IN 	STD_LOGIC_VECTOR (2 downto 0);-- to select 8
		E_L			: 	IN 	STD_LOGIC; -- enable active low
		Y, Y_L			: 	OUT	STD_LOGIC
	  );

END MUX_8;

ARCHITECTURE hierarchical_structure OF MUX_8 IS
	
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
	
	
-- Signals
SIGNAL K, P, Q 	:	STD_LOGIC; -- internal wires


BEGIN

-- Instantiation of up to 4 basic 1-bit adders:

	Chip1	: MUX_4
		PORT MAP (
-- from component name 	=> to signal or port name
				E_L		=> '0',
				Ch3		=> Ch7,
				Ch2		=> Ch6,
				Ch1		=> Ch5,
				Ch0		=> Ch4, 
				S		=> S(1 downto 0),
				Y		=> P			
		);

	Chip2	: MUX_4
		PORT MAP (
				-- from component name 	=> to signal or port name
				E_L		=> '0',
				Ch3		=> Ch3,
				Ch2		=> Ch2,
				Ch1		=> Ch1,
				Ch0		=> Ch0, 
				S		=> S(1 downto 0),
				Y		=> K					  
		);

	Chip3	: MUX_2
		PORT MAP (
-- from component name 	=> to signal or port name
				E_L		=> E_L,
				Ch1		=> P,
				Ch0		=> K, 
				S		=> S(2),
				Y		=> Q				  
		);

-- Other circuits and equations:
Y_L <= not(Q);
Y <= Q;
			 		   	 		 		   	   
END hierarchical_structure;
