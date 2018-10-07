use ieee;
use ieee.std_logic_1164.all;
entity lab3 is port (
	S, R, Q : in std_logic
);
end lab3;
architecture lab3_arc of lab3 is
	signal notQ : std_logic;
	signal QQ : std_logic;
	begin	
		Q <= R or notQ;
		notQ <= S or Q;
end lab3_arc;
