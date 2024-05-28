----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2024 18:08:06
-- Design Name: 
-- Module Name: decoder - Behavioral
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

entity decoder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           en : in STD_LOGIC;
           z : out STD_LOGIC_VECTOR (3 downto 0));
end decoder;

architecture Behavioral of decoder is


begin
process(a,b,en)
variable abar, bbar: STD_LOGIC;
begin
abar := NOT a;
bbar := NOT b;
if en= '1' then
z(0) <= abar AND bbar;
z(1) <= abar AND b;
z(2) <= a AND bbar;
z(3) <= a AND b;
else 
z <= "UUUU";
end if;
end process;

end Behavioral;
