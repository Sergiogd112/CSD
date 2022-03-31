LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;


ENTITY Comp_1bit IS

		PORT (
			A, B, Gi, Ei, Li	: 	IN STD_LOGIC;
			Gt, Eq, Lt			:	OUT STD_LOGIC
		
		);

END Comp_1bit;

ARCHITECTURE algorithm OF Comp_1bit IS  


BEGIN

PROCESS (A, B, Gi, Ei, Li)
	BEGIN
		IF A > B THEN 
			Gt <= '1';
			Eq <= '0';
			Lt <= '0';
		ELSE 
			IF A < B THEN
				Gt <= '0';
				Eq <= '0';
				Lt <= '1';
			ELSE 
				IF A = B THEN
				
					Gt <= Gi;
					Eq <= Ei;
					Lt <= Li;
					
				
				END IF;
			END IF;
		END IF;
	END PROCESS;
   	 		 		   	   
END algorithm;