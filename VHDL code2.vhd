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

entity DEMorgan is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z0 : out STD_LOGIC;
           Z1 : out STD_LOGIC;
           Z2 : out STD_LOGIC;
           Z3 : out STD_LOGIC);
end DEMorgan;

architecture Behavioral of DEMorgan is
begin

Z0 <= not(X and Y);

Z1 <= (not X) or (not Y);

Z2 <= not(X or Y);

Z3 <= (not X) and (not Y);

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

entity DEMorgan_TB is
--  Port ( );
end DEMorgan_TB;

architecture Behavioral of DEMorgan_TB is
component DEMorgan is 
Port (X : in STD_LOGIC;
      Y : in STD_LOGIC;
      Z0 : out STD_LOGIC;
      Z1 : out STD_LOGIC;
      Z2 : out STD_LOGIC; 
      Z3 : out STD_LOGIC);
end component; 

signal X,Y,Z0,Z1,Z2,Z3: std_logic;
begin

uut: DEMorgan port map (
    X=>X, Y=>Y, Z0=>Z0, Z1=>Z1, Z2=>Z2, Z3=>Z3
);

process
begin

X <= '0'; Y<= '0'; wait for 10ns;
X <= '0'; Y<= '1'; wait for 10ns;
X <= '1'; Y<= '0'; wait for 10ns;
X <= '1'; Y<= '1'; wait for 10ns;
end process;

end Behavioral;
