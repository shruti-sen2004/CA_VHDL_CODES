----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.04.2024 21:22:24
-- Design Name: 
-- Module Name: decrementor - Structural
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

entity DECREMENTOR is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           COUT : out STD_LOGIC);
end DECREMENTOR;

architecture Structural of DECREMENTOR is

component FA is
    Port ( AF : in STD_LOGIC;
           BF : in STD_LOGIC;
           CIN : in STD_LOGIC;
           SUM : out STD_LOGIC;
           COUT : out STD_LOGIC);
end component;

signal sig : STD_LOGIC_VECTOR (3 downto 0);
signal cp : STD_LOGIC_VECTOR (2 downto 0);

begin

sig <= "1111";
FA1 : FA port map(A(0), sig(0), C, S(0), cp(0));
FA2 : FA port map(A(1), sig(1), cp(0), S(1), cp(1));
FA3 : FA port map(A(2), sig(2), cp(1), S(2), cp(2));
FA4 : FA port map(A(3), sig(3), cp(2), S(3), COUT);

end Structural;
