
-------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/24/2026 01:31:09 PM 
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
-------------------------------------------------------------


library IEEE; use IEEE.STD_LOGIC_1164.ALL;
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




-------------------------------------------------------------
-- Company: 
-- Engineer:
-- 
-- Create Date: 09/24/2026 01:35:33 PM 
-- Design Name: 
-- Module Name: FullAdder_4Bits - Behavioral 
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
-------------------------------------------------------------

library IEEE; use IEEE.STD_LOGIC_1164.ALL;
-- Uncomment the following library declaration if using 
-- arithmetic functions with Signed or Unsigned values 
--use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating 
-- any Xilinx leaf cells in this code. 
--library UNISIM; 
--use UNISIM.VComponents.all;

entity FullAdder_4Bits is 
	Port ( A : in STD_LOGIC_VECTOR (3 downto 0); 
			B : in STD_LOGIC_VECTOR (3 downto 0); 
			Cin : in STD_LOGIC; 
			S : out STD_LOGIC_VECTOR (3 downto 0); 
			Cout : out STD_LOGIC); 
end FullAdder_4Bits;

architecture Behavioral of FullAdder_4Bits is
component FullAdder is
Port ( X: in STD_LOGIC; 
		Y: in STD_LOGIC; 
		Cin: in STD_LOGIC; 
		Sum: out STD_LOGIC; 
		Cout: out STD_LOGIC); 
end component; 
signal C : std_logic_vector (4 downto 0);

begin
C(0) <= Cin;

FullAdder_0: FullAdder port map (A(0), B(0), C(0), S(0), C(1)); 
FullAdder_1: FullAdder port map (A(1), B(1), C(1), S(1), C(2)); 
FullAdder_2: FullAdder port map (A(2), B(2), C(2), S(2), C(3)); 
FullAdder_4: FullAdder port map (A(3), B(3), C(3), S(3), C(4));

Cout <= C(4);

end Behavioral;





-------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/24/2026 01:44:30 PM 
-- Design Name: 
-- Module Name: FullAdder_4Bits_TB - Behavioral 
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
-------------------------------------------------------------

library IEEE; use IEEE.STD_LOGIC_1164.ALL;
-- Uncomment the following library declaration if using 
-- arithmetic functions with Signed or Unsigned values 
--use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating 
-- any Xilinx leaf cells in this code. 
--library UNISIM; 
--use UNISIM.VComponents.all;

entity FullAdder_4Bits_TB is 
-- Port ( ); 
end FullAdder_4Bits_TB;

architecture Behavioral of FullAdder_4Bits_TB is 
component FullAdder_4Bits is 
	Port ( A : in STD_LOGIC_VECTOR (3 downto 0); 
			B : in STD_LOGIC_VECTOR (3 downto 0); 
			Cin : in STD_LOGIC; S : out STD_LOGIC_VECTOR (3 downto 0); 
			Cout : out STD_LOGIC); 
end component;

signal A, B, S : std_logic_vector(3 downto 0); 
signal Cin, Cout: std_logic;

begin
uut: FullAdder_4Bits port map ( A => A, B => B, Cin => Cin, S => S, Cout => Cout);

process 
begin 
	Cin <='0'; A <= "0011"; B <= "0010"; wait for 10ns; 
	Cin <='1'; A <= "0000"; B <= "0000"; wait for 10ns; 
	Cin <='0'; A <= "0101"; B <= "0100"; wait for 10ns; 
	Cin <='1'; A <= "1000"; B <= "0001"; wait for 10ns; 
	Cin <='0'; A <= "1111"; B <= "1111"; wait for 10ns;
	Cin <='0'; A <= "0011"; B <= "1010"; wait for 10ns; 
	Cin <='0'; A <= "0111"; B <= "0101"; wait for 10ns; 
wait; 
end process; 
end Behavioral;

