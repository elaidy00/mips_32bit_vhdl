 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Shift2Left is
	port (
	S_IN  : in STD_LOGIC_VECTOR(31 downto 0);
	S_out : out STD_LOGIC_VECTOR(31 downto 0)
	);
end Shift2Left;

architecture Behavioral of Shift2Left is

begin

	process (S_IN)
	begin 
		s_out(31) <= s_in (31);
  		S_out(30 downto 2) <= S_in(28 downto 0);
  		S_out(1 downto 0) <= (others => '0');
	end process;  

end Behavioral;		



