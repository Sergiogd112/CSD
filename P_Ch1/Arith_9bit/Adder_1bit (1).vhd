LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;

ENTITY Adder_1bit IS
	PORT (
		Ai, Bi, Ci 	: 	IN 	STD_LOGIC;  
		So, Co		: 	OUT	STD_LOGIC
	  );

END Adder_1bit;

ARCHITECTURE hierarchical_structure OF Adder_1bit IS
	

COMPONENT MUX_4 IS  
	PORT (
		Ch0, Ch1, Ch2, Ch3	: 	IN 	STD_LOGIC;  
		S					:	IN 	STD_LOGIC_VECTOR (1 downto 0);	
		E_L					: 	IN 	STD_LOGIC;
		Y					: 	OUT	STD_LOGIC
	  );
END COMPONENT;
	
COMPONENT MUX_2 IS  
	PORT (
		Ch0, Ch1	: 	IN 	STD_LOGIC;  
		S			:	IN 	STD_LOGIC;	
		E_L			: 	IN 	STD_LOGIC;
		Y			: 	OUT	STD_LOGIC
	  );

END COMPONENT;
	
	

SIGNAL K, P :	STD_LOGIC; 


BEGIN



	Chip1	: MUX_2
		PORT MAP (

				E_L		=> '0', 
				Ch0		=> K,
				Ch1		=> P,
				S		=> Ai,								
				Y		=> So			
		);

	Chip2	: MUX_4
		PORT MAP (

				E_L		=> '0',  
				Ch0		=> '0',
				Ch1		=> Ci,
				Ch2		=> Ci,
				Ch3		=> '1',  
				S(1)	=> Ai,								
				S(0)	=> Bi,					
				Y		=> Co			
		);
		 


K <= Bi xor Ci; 
P <= not(Bi xor Ci); 
			 		   	 		 		   	   
END hierarchical_structure;
