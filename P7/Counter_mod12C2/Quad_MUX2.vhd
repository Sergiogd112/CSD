--------------------------------------------------------------------------------
-- An example of Quad_MUX2, quadruple multiplexer of 2 channels with enable
-- This component is like a building blobk for many other projects 
---------------------------------------------------
-- Project P2  - CSD 
-- http://digsys.upc.es
--------------------------------------------------------------------------------
library ieee;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity Quad_MUX2 is
PORT(
	CH0	:IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
	CH1	:IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
	E	:IN STD_LOGIC;
	Y	:OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S	:IN STD_LOGIC 
    );
end Quad_MUX2;

architecture truth_table of Quad_MUX2 is
begin

Y	<=	CH0  WHEN S ='0' AND E = '1' ELSE
		CH1  WHEN S ='1' AND E = '1' ELSE
		"0000"; -- disable
end truth_table;

