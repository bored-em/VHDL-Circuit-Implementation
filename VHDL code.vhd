--PART 1 OF CODE
 ---------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 08/27/2026 02:20:12 PM
-- Design Name:
-- Module Name: Inverter - Behavioral
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
--
---------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Inverter is
	Port ( X1 : in STD_LOGIC;
		Y1 : out STD_LOGIC;
		Y2 : out STD_LOGIC);
end Inverter;

architecture Behavioral of Inverter is

begin
	Y1 <= not(not X1);
	Y2 <= not(not(not X1));
	
end Behavioral;


--PART 2 OF CODE
----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 08/27/2026 02:30:54 PM
-- Design Name:
-- Module Name: Inverter_TB - Behavioral
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
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity Inverter_TB is
-- Port ( );
end Inverter_TB;

architecture Behavioral of Inverter_TB is
component Inverter is
Port ( X1 : in STD_LOGIC;
	Y1: out STD_LOGIC;
	Y2: out STD_LOGIC);
end component;

signal X1,Y1,Y2: STD_LOGIC;

begin
uut: Inverter port map (
	X1=>X1, Y1=>Y1, Y2=>Y2
);

process
begin

X1 <= '0'; wait for 10ns;
X1 <= '1'; wait for 10ns;

end process;

end Behavioral;
