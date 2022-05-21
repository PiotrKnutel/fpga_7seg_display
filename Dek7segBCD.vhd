library IEEE;
use IEEE.std_logic_1164.all;

entity Dek7segBCD is
port (
	--Input ports
	WE_dek: in std_logic_vector (3 downto 0);
	--Output ports
	Wy_dek: out std_logic_vector (7 downto 0);
	--Wybór aktywnych cyfr na wyślwietlaczu 4 x 7seg.
	Wybor: out std_logic_vector (3 downto 0)
);

end entity Dek7segBCD;

architecture beh of Dek7segBCD is
begin	
	with WE_dek select
	--Kolejność segmentów DP G F E D C B A
	Wy_dek <= "11000000" when "0000",
				 "11111001" when "0001",
				 "10100100" when "0010",
				 "10110000" when "0011",
				 "10011001" when "0100",
				 "10010010" when "0101",
				 "10000010" when "0110",
				 "11111000" when "0111",
				 "10000000" when "1000",
				 "10010000" when "1001",
	--wygaszanie dla innych stanów
				 "11111111" when "1010" to "1111";
	--wybór pozycji
	Wybor <= "0001";
end architecture beh;