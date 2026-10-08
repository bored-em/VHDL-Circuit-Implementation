
---------------------------------------------------------------
-- Company:
-- Engineer: 
-- 
-- Create Date: 09/17/2026 01:24:22 PM 
-- Design Name: 
-- Module Name: FullAdder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description:
-- 
-- Dependencies: 
-- 
-- Revision: 
-- Revision 0.01 - File Created 
-- Additional Comments: 
---------------------------------------------------------------

library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
-- Uncomment the following library declaration if using 
-- arithmetic functions with Signed or Unsigned values 
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating 
-- any Xilinx leaf cells in this code. 
--library UNISIM; 
--use UNISIM.VComponents.all;

entity FullAdder is
Port ( X : in STD_LOGIC; 
		Y : in STD_LOGIC; 
		Cin : in STD_LOGIC; 
		Sum : out STD_LOGIC; 
		Cout : out STD_LOGIC); 
end FullAdder;

architecture Behavioral of FullAdder is
begin

Sum <= X xor Y xor Cin; 
Cout <= (Y and Cin) or (X and Cin) or (X and Y); 

end Behavioral;



---------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/17/2026 01:25:42 PM
-- Design Name: 
-- Module Name: FullAdder_TB - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision: 
-- Revision 0.01 - File Created 
-- Additional Comments: 
--------------------------------------------------------

library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
-- Uncomment the following library declaration if using 
-- arithmetic functions with Signed or Unsigned values 
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating 
-- any Xilinx leaf cells in this code. 
--library UNISIM; 
--use UNISIM.VComponents.all;

entity FullAdder_TB is 
-- Port ( ); 
end FullAdder_TB;

architecture Behavioral of FullAdder_TB is 
component FullAdder is
Port (X : in STD_Logic; 
		Y : in STD_Logic; 
		Cin : in STD_Logic; 
		Sum : out STD_Logic; 
		Cout : out STD_Logic); 
end component; 

signal X, Y, Cin, Sum, Cout : std_logic; 
begin 
uut: FullAdder port map( 
	X => X, Y => Y, Cin => Cin, Sum => Sum, Cout => Cout 
); 

process 
begin 
X <= '0'; Y <= '0'; Cin <= '0'; wait for 10ns; 
X <= '0'; Y <= '0'; Cin <= '1'; wait for 10ns; 
X <= '0'; Y <= '1'; Cin <= '0'; wait for 10ns; 
X <= '0'; Y <= '1'; Cin <= '1'; wait for 10ns; 

X <= '1'; Y <= '0'; Cin <= '0'; wait for 10ns; 
X <= '1'; Y <= '0'; Cin <= '1'; wait for 10ns; 
X <= '1'; Y <= '1'; Cin <= '0'; wait for 10ns; 
X <= '1'; Y <= '1'; Cin <= '1'; wait for 10ns; 

wait; 
end process; 
end Behavioral;
