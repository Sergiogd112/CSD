LIBRARY ieee;
USE  IEEE.STD_LOGIC_1164.all;


ENTITY Comp_9bit IS

		PORT (
			A, B					:	IN STD_LOGIC_VECTOR (8 downto 0);
			Gi, Ei, Li			: 	IN STD_LOGIC;
			Gt, Eq, Lt			:	OUT STD_LOGIC
		
		);

END Comp_9bit;

ARCHITECTURE hierarchical_structure OF Comp_9bit IS  


	
COMPONENT Comp_1bit IS
	PORT (
		A, B, Gi, Ei, Li : IN STD_LOGIC;
		Gt, Eq, Lt		  : OUT STD_LOGIC
	);
END COMPONENT;


SIGNAL C, D, E, F, G, H, I, J : STD_LOGIC_VECTOR(2 downto 0);

BEGIN

		Chip1 : Comp_1bit 
			PORT MAP (
			
				A => A(0),
				B => B(0),
				Gi => Gi,
				Ei => Ei,
				Li => Li,
				Gt => C(0),
				Eq => C(1),
				Lt => C(2)
			);

		Chip2 : Comp_1bit 
			PORT MAP (
			
				A => A(1),
				B => B(1),
				Gi => C(0),
				Ei => C(1),
				Li => C(2),
				Gt => D(0),
				Eq => D(1),
				Lt => D(2)
			);

		Chip3 : Comp_1bit
		PORT MAP (
			
				A => A(2),
				B => B(2),
				Gi => D(0),
				Ei => D(1),
				Li => D(2),
				Gt => E(0),
				Eq => E(1),
				Lt => E(2)
			);

		Chip4 : Comp_1bit
		PORT MAP (
			
				A => A(3),
				B => B(3),
				Gi => E(0),
				Ei => E(1),
				Li => E(2),
				Gt => F(0),
				Eq => F(1),
				Lt => F(2)
			);

		Chip5 : Comp_1bit
		PORT MAP (
			
				A => A(4),
				B => B(4),
				Gi => F(0),
				Ei => F(1),
				Li => F(2),
				Gt => G(0),
				Eq => G(1),
				Lt => G(2)
			);

		Chip6 : Comp_1bit
		PORT MAP (
			
				A => A(5),
				B => B(5),
				Gi => G(0),
				Ei => G(1),
				Li => G(2),
				Gt => H(0),
				Eq => H(1),
				Lt => H(2)
			);

		Chip7 : Comp_1bit
		PORT MAP (
			
				A => A(6),
				B => B(6),
				Gi => H(0),
				Ei => H(1),
				Li => H(2),
				Gt => I(0),
				Eq => I(1),
				Lt => I(2)
			);

		Chip8 : Comp_1bit
		PORT MAP (
			
				A => A(7),
				B => B(7),
				Gi => I(0),
				Ei => I(1),
				Li => I(2),
				Gt => J(0),
				Eq => J(1),
				Lt => J(2)
			);

		Chip9 : Comp_1bit
		PORT MAP (
			
				A => A(8),
				B => B(8),
				Gi => J(0),
				Ei => J(1),
				Li => J(2),
				Gt => Gt,
				Eq => Eq,
				Lt => Lt
			);


			   	 		 		   	   
END hierarchical_structure;