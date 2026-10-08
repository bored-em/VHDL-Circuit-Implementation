------------------------------------------------
-- Company: 
-- Engineer: 
-- Create Date: 09/03/2026 02:11:40 PM
-- Design Name: 
-- Module Name: DEMorgan - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- Dependencies: 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SumOfProducts is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           F : out STD_LOGIC);
end SumOfProducts;

architecture Behavioral of SumOfProducts is
begin

F <= (A and (not C)) or (A and D) or ((not B) and D);

end Behavioral;





-------------------------------------------------------
-- Company: 
-- Engineer: 
-- Create Date: 09/03/2026 02:17:34 PM
-- Design Name: 
-- Module Name: DEMorgan_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- Dependencies: 
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

entity SumOfProducts_TB is
--  Port ( );
end SumOfProducts_TB;

architecture Behavioral of SumOfProducts_TB is
component SumOfProducts is 
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           F : out STD_LOGIC);
end component; 

signal A, B, C, D, F: std_logic;
begin

uut: SumOfProducts port map (
    A=>A, B=>B, C=>C, D=>D, F=>F
);

process
begin

A <= '0'; B <= '0'; C <= '0'; D <= '0'; wait for 10ns;
A <= '0'; B <= '0'; C <= '0'; D <= '1'; wait for 10ns;
A <= '0'; B <= '0'; C <= '1'; D <= '0'; wait for 10ns;
A <= '0'; B <= '0'; C <= '1'; D <= '1'; wait for 10ns;

A <= '0'; B <= '1'; C <= '0'; D <= '0'; wait for 10ns;
A <= '0'; B <= '1'; C <= '0'; D <= '1'; wait for 10ns;
A <= '0'; B <= '1'; C <= '1'; D <= '0'; wait for 10ns;
A <= '0'; B <= '1'; C <= '1'; D <= '1'; wait for 10ns;

A <= '1'; B <= '0'; C <= '0'; D <= '0'; wait for 10ns;
A <= '1'; B <= '0'; C <= '0'; D <= '1'; wait for 10ns;
A <= '1'; B <= '0'; C <= '1'; D <= '0'; wait for 10ns;
A <= '1'; B <= '0'; C <= '1'; D <= '1'; wait for 10ns;

A <= '1'; B <= '1'; C <= '0'; D <= '0'; wait for 10ns;
A <= '1'; B <= '1'; C <= '0'; D <= '1'; wait for 10ns;
A <= '1'; B <= '1'; C <= '1'; D <= '0'; wait for 10ns;
A <= '1'; B <= '1'; C <= '1'; D <= '1'; wait for 10ns;

wait;
end process;
end Behavioral;


