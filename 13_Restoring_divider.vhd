----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.04.2024 17:50:57
-- Design Name: 
-- Module Name: divider - Behavioral
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divider is
Port ( d : in STD_LOGIC_VECTOR (3 downto 0);
 m : in STD_LOGIC_VECTOR (3 downto 0);
 q : out STD_LOGIC_VECTOR (3 downto 0);
 r : out STD_LOGIC_VECTOR (3 downto 0));

end divider;

architecture Behavioral of divider is
begin
process(d,m)
variable ac:std_logic_vector(7 downto 0);
variable Mbar:std_logic_vector(3 downto 0);
begin
Mbar:=not m;
ac:="0000" & d;
for i in 1 to 4 loop
ac(7 downto 0):=ac(6 downto 0) & 'U';
ac(7 downto 4):=ac(7 downto 4)+Mbar+"0001";
if ac(7)='1' then
ac(0):='0';
ac(7 downto 4):=ac(7 downto 4)+m;
else
ac(0):='1';
end if;
end loop;
q<=ac(3 downto 0);
r<=ac(7 downto 4);
end process;
end Behavioral;
