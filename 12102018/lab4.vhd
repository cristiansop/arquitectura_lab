library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lab4 is port(
	clk : in std_logic;
	rst : in std_logic;
	S : inout std_logic_vector (1 downto 0)
);
end lab4;

architecture lab4_arc of lab4 is 
begin
	process(s) begin	
		if rising_edge(clk) then	--cada vez que el clock presenta una pendiente de subida
			s <= s + 1;					--a la salida s se le aumenta en uno
			if (rst='1') then			--cuando el rst se activa la salida
				s<="00";					--la salida s se reinicia y se vuelven 0
			end if;
		end if;
	end process;
end lab4_arc;