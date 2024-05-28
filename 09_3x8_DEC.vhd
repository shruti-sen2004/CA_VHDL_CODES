----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2024 18:40:39
-- Design Name: 
-- Module Name: DEC - Behavioral
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

entity DEC is
    Port ( ad : in STD_LOGIC;
           bd : in STD_LOGIC;
           en : in STD_LOGIC;
           d : out STD_LOGIC_VECTOR (7 downto 0));
end DEC;

architecture Behavioral of DEC is
component decoder is
    Port ( en : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           z : out STD_LOGIC_VECTOR (3 downto 0));
end component;
signal sig1: STD_LOGIC;
begin
sig1 <= NOT en;
decoder1 : decoder port map(sig1, ad,bd,d(3 downto 0));
decoder2 : decoder port map(en, ad,bd,d(7 downto 4));

end Behavioral;
