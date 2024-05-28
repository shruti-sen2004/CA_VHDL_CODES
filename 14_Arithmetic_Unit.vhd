----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.04.2024 18:11:14
-- Design Name: 
-- Module Name: AU - Behavioral
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

entity AU is
Port ( A : STD_LOGIC_VECTOR(3 downto 0);
 B : STD_LOGIC_VECTOR(3 downto 0);
 SEL : in STD_LOGIC_VECTOR (2 downto 0);
 F : out STD_LOGIC_VECTOR(3 downto 0));
end AU;

architecture Behavioral of AU is
begin
process(A,B,SEL)
variable BBAR:std_logic_vector(3 downto 0);
begin
BBAR := not B;
case SEL is
 when "000" => F<= A+B; 
 when "001" =>F<= A+B+1; 
 when "010" =>F<= A+ BBAR ; 
 when "011" =>F<= A + BBAR +1; 
 when "100" =>F<= A-1; 
 when "101" =>F<= A; 
 when "110" =>F<= A ; 
 when "111" =>F<= A+1; 
 when others =>F <= "UUUU";
end case;
  
end process;
 
end Behavioral;
