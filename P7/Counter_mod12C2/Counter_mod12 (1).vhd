--------------------------------------------------------------------------------
-- Project P7  - CSD 
-- http://digsys.upc.edu
---------------------------------------------------
-- An example of a synchronous binary counter Modulo 12 
-- Problem P.2.3.7. Plan A. Hiearchical design using components.  
-- This is the VHDL translation of the schematic at:
-- https://digsys.upc.edu/csd/P07/P7_T/Counter_mod12_plan_X_Y_Z/P77_Z.jpg
--------------------------------------------------------------------------------

LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY Counter_mod12 IS

	PORT (
		UD_L, CE, CD, CLK	: IN	STD_LOGIC;
		Q						: OUT	STD_LOGIC_VECTOR (3 DOWNTO 0);
		TC12					: OUT	STD_LOGIC
	 );
END Counter_mod12;

ARCHITECTURE hierarchical_structure OF Counter_mod12 IS
	
-- The elemental components to be used:
 
	COMPONENT Counter_mod16 IS  
      Port (	
			CLK				: IN	STD_LOGIC;
			CD					: IN	STD_LOGIC;
			LD, CE, UD_L	: IN	STD_LOGIC;			
			Din				: IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
			Q					: OUT	STD_LOGIC_VECTOR(3 DOWNTO 0);
			TC16				: OUT	STD_LOGIC
		);      
	END COMPONENT;

	COMPONENT Quad_MUX2 IS  
		PORT(
			CH0	:IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
			CH1	:IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
			E	:IN STD_LOGIC;
			Y	:OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			S	:IN STD_LOGIC 
		);
	END COMPONENT;
	
-- Now the signals (wires and cables) to biuld the schemantic 

	SIGNAL	D0, D11, LD, S	: STD_LOGIC;
	SIGNAL	Din, K			: STD_LOGIC_VECTOR (3 downto 0);

BEGIN

-- Instantiation of up to 4 basic 1-bit adders:

	Chip1	: Counter_mod16
		PORT MAP (
	-- from component name 	=> to signal or port name		
			CLK		=>	CLK,
			CD			=>	CD,				
			LD			=>	LD,
			CE			=>	CE,
			UD_L		=>	UD_L,
			Din		=>	Din,
			Q			=>	K,
			TC16		=>	D0
		);

	Chip2	: Quad_MUX2
		PORT MAP (
	-- from component name 	=> to signal or port name		
			E			=>	'1',
			Ch0		=>	"1011", -- The number to truncate when counting down
			Ch1		=>	"0000", -- The number to truncate when counting up
			S			=>	S,
			Y			=>	Din
		);

-- Equations and logic gates:
		D11 	<= UD_L and CE and K(3) and not(K(2)) and K(1) and K(0);
		LD 	<= D11 or D0;
		TC12 	<= LD;
		S 		<= D11;
		Q		<= K;
 		   	 		 		   	   
END hierarchical_structure;
