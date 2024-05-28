----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2024 18:21:53
-- Design Name: 
-- Module Name: FA_behave - Behavioral
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

entity FA_behave is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end FA_behave;

architecture Behavioral of FA_behave is

begin
process(a,b,cin)
variable sw: STD_LOGIC_VECTOR(2 downto 0);
begin
sw(0) := cin;
sw(1) := b;
sw(2) := a;
case sw is 
when "000" => s <= '0'; cout <= '0';
when "001" => s <= '1'; cout <= '0';
when "010" => s <= '1'; cout <= '0';
when "011" => s <= '0'; cout <= '1';
when "100" => s <= '1'; cout <= '0';
when "101" => s <= '0'; cout <= '1';
when "110" => s <= '0'; cout <= '1';
when "111" => s <= '1'; cout <= '1';
when others => s<= 'U'; cout <='U';
end case;
end process;

end Behavioral;
