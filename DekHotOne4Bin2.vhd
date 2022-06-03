library IEEE;
use IEEE.std_logic_1164.all;

-- dekoder kodu binarnego (2 bitowego) na kod 1 z 4 ("hot one")
entity DekHotOne4Bin2 is
port (
	WE_dek: in std_logic_vector (1 downto 0);
	Wy_dek: out std_logic_vector (3 downto 0)
);

end entity DekHotOne4Bin2;

architecture beh of DekHotOne4Bin2 is
begin	
	with WE_dek select
	Wy_dek <= "0001" when "00",
				 "0010" when "01",
				 "0100" when "10",
				 "1000" when "11";
end architecture beh;