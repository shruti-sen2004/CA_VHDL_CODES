----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.04.2024 19:40:53
-- Design Name: 
-- Module Name: ASC - sturctural
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

entity ASC is
    Port ( ac : in STD_LOGIC_VECTOR(3 downto 0);
           bc : in STD_LOGIC_VECTOR(3 downto 0);
           sw : in STD_LOGIC;
           sc : out STD_LOGIC_VECTOR(3 downto 0);
           cc : out STD_LOGIC);
end ASC;

architecture sturctural of ASC is
component FA is
    Port ( af : in STD_LOGIC;
           bf : in STD_LOGIC;
           cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;
signal cp: STD_LOGIC_VECTOR(2 downto 0);
signal sig: STD_LOGIC_VECTOR(3 downto 0);

begin

sig(0) <= sw XOR bc(0);
sig(1) <= sw XOR bc(1);
sig(2) <= sw XOR bc(2);
sig(3) <= sw XOR bc(3);

FA1: FA port map(ac(0), sig(0), sw, sc(0), cp(0));
FA2: FA port map(ac(1), sig(1), cp(0), sc(1), cp(1));
FA3: FA port map(ac(2), sig(2), cp(1), sc(2), cp(2));
FA4: FA port map(ac(3), sig(3),cp(2), sc(3), cc);


end sturctural;
