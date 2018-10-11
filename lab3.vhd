library ieee;
use ieee.std_logic_1164.all;
entity lab3 is port (
	S : in std_logic_vector (3 downto 0);
	Q : out std_logic_vector (3 downto 0);
	RS : in std_logic;
	TLS : in std_logic
);
end lab3;
architecture lab3_arc of lab3 is

begin
	process (RS,TLS) begin
		--s(0)
		if (((S(0)='1') and (TLS='1')) and (RS='1')) then
			Q(0)<='0';			
		end if;
		if (not((S(0)='1') and (TLS='1')) and (RS='1')) then
			Q(0)<='0';			
		end if;
		if (((S(0)='1') and (TLS='1')) and (not(RS='1'))) then
			Q(0)<='1';			
		end if;
		--s(1)
		if (((S(1)='1') and (TLS='1')) and (RS='1')) then
			Q(1)<='0';			
		end if;
		if (not((S(1)='1') and (TLS='1')) and (RS='1')) then
			Q(1)<='0';			
		end if;
		if (((S(1)='1') and (TLS='1')) and (not(RS='1'))) then
			Q(1)<='1';			
		end if;
		--s(2)
		if (((S(2)='1') and (TLS='1')) and (RS='1')) then
			Q(2)<='0';			
		end if;
		if (not((S(2)='1') and (TLS='1')) and (RS='1')) then
			Q(2)<='0';			
		end if;
		if (((S(2)='1') and (TLS='1')) and (not(RS='1'))) then
			Q(2)<='1';			
		end if;
		--s(3)
		if (((S(3)='1') and (TLS='1')) and (RS='1')) then
			Q(3)<='0';			
		end if;
		if (not((S(3)='1') and (TLS='1')) and (RS='1')) then
			Q(3)<='0';			
		end if;
		if (((S(3)='1') and (TLS='1')) and (not(RS='1'))) then
			Q(3)<='1';			
		end if;
	end process;
end lab3_arc;
