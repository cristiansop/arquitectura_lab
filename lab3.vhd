library ieee;
use ieee.std_logic_1164.all;
entity lab3 is port (
	S : in std_logic_vector (3 downto 0); --Dos vectores de 4 bits cada uno SET y Q (salida)
	Q : out std_logic_vector (3 downto 0);
	Qneg : out std_logic_vector (3 downto 0);
	RS : in std_logic;--RESET como entrada en el latch
	TLS : in std_logic--Temperatura limite superior, un switch que se activa cuando se exceden los 5V
);
end lab3;
architecture lab3_arc of lab3 is
begin
	process (RS,TLS) begin
		--s(0)
		if (RS='1') then--CUANDO EL RESET ES 1 toda la salida se vuelve 0
			Q<="0000";
			Qneg<="1111";
		elsif(TLS = '1') then --cuando se activa el switch TLS no es necesario evaluar el reset, entonces se evealua solo el TLS
			Q<=S;			--el nuevo estado lo determina el vector SET
			Qneg<=not(S);--Qneg (Q barra) es lo contrario a Q que viene siendo la negacion de SET
		end if;
	end process;-- como los unicos casos que importan son RESET=1 y RESET=0 se realiza el elsif donde se realiza el proceso 
end lab3_arc;  --completo.
