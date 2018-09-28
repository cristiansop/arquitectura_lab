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
		if rising_edge(clk) then
			Q<=D;
		end if;
	end process;
end flipflop_arch;
	