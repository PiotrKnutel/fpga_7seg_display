library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MOD_10 is
port(
	CLK: in std_logic;
	RST: in std_logic;
	DIRT: in std_logic; 
	FULL, EMPT: out std_logic;
	Q: inout std_logic_vector(3 downto 0)
	);
	end MOD_10;

architecture beh of MOD_10 is
signal count: unsigned(3 downto 0);
signal f_full, f_empt: std_logic;

begin
process (CLK, RST) is
	begin
	if (RST='0') then count <= x"0"; 
	else
		if (falling_edge(CLK)) then
			if (DIRT='1') then 
				if (count /= x"9") then
					count <= count + x"1";
					f_full <= '1';
				else
					count <= x"0";
					f_full <= '0';
				end if;
			else
				if (count /= x"0") then 
					count <= count - x"1";
					f_empt <= '1';
				else 
					count <= x"9";
					f_empt <= '0';
				end if;
			end if;
		end if;
	end if;
end process;
Q <= std_logic_vector(count);
FULL <= f_full; --when CLK='0' else '1';
EMPT <= f_empt; --when CLK='0' else '1';
end architecture beh;
