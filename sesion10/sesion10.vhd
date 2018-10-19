library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity sesion10 is port(
	clk : in std_logic;
	carro : in std_logic;
	final : in std_logic;
	inicio: out std_logic;
	mar : out std_logic; --major road traffic light
	mir : out std_logic
);
end sesion10;

architecture sesion10_arc of sesion10 is 
	type estados is (rojo,verde);
	signal estadoactual,estadosiguiente: estados;
begin
status:process (clk) begin
		if rising_edge(clk) then
			estadoactual<= estadosiguiente;
		end if;
	end process status;	
update:process (carro,final) begin
			inicio <= '0';
			case estadoactual is 
				when rojo =>
								if (final='1') then
									estadosiguiente<= verde;
								else 
									estadosiguiente<= rojo;
								end if;
								mar <= '0';
								mir <= '1';
				when verde =>
								if (carro = '1') then 
									estadosiguiente<= rojo;
									inicio <= '1';
								else 
									estadosiguiente <= verde;
								end if;
								mar <= '1';
								mir <= '0';
			end case;
	end process update;
end sesion10_arc;