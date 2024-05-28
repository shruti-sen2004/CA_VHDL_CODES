----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.04.2024 18:43:59
-- Design Name: 
-- Module Name: binary_multiplier - multiplier
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

entity binary_multiplier is
    Port ( m : in STD_LOGIC_VECTOR (3 downto 0);
           q : in STD_LOGIC_VECTOR (3 downto 0);
           r : out STD_LOGIC_VECTOR (7 downto 0));
end binary_multiplier;

architecture multiplier of binary_multiplier is
begin
process(m,q)
variable acc: std_logic_vector(8 downto 0);
variable multiplicand: std_logic_vector(4 downto 0);
begin
acc(8 downto 4):="00000";
acc(3 downto 0):=q;
multiplicand := '0' & m;
for i in 1 to 4 loop
if acc(0)='1' then
acc(8 downto 4) := acc(8 downto 4) + multiplicand;
end if;
acc:='0' & acc(8 downto 1);
end loop;
r <= acc(7 downto 0);
end process;
end multiplier;
