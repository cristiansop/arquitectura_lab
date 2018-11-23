library ieee;
use ieee.std_logic_1164.all;
entity flipflop is port (
	D,clk: in std_logic;
	Q: inout std_logic
);
end flipflop;
architecture flipflop_arch of flipflop is
begin
	process (clk) begin
		if rising_edge(clk) then  --multivibrador bi estable que sirve para almacenar, en este caso 1 bit
			Q<=D;		--este bit representa los estados entre los que se cambia
		end if;			--si hay una pendiente de subida, a la salida Q se le asigna entrada D
	end process;
end flipflop_arch;
	
