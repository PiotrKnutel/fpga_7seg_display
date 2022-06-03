library IEEE;
use IEEE.std_logic_1164.all;

entity znak_d is
port (
	Wy_dek: out std_logic_vector (7 downto 0)
);

end entity znak_d;

architecture beh of znak_d is
begin	
	--Kolejność segmentów DP G F E D C B A
	Wy_dek <= "10000011";
end architecture beh;