----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.04.2024 18:40:52
-- Design Name: 
-- Module Name: Ripple_carry - Structural
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

entity Ripple_carry is
    Port ( ar : in STD_LOGIC_VECTOR (3 downto 0);
           br : in STD_LOGIC_VECTOR (3 downto 0);
           cr : in STD_LOGIC;
           sr : out STD_LOGIC_VECTOR (3 downto 0);
           coutr : out STD_LOGIC);
end Ripple_carry;

architecture Structural of Ripple_carry is
component FA is
    Port ( af : in STD_LOGIC;
           bf : in STD_LOGIC;
           cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;
signal sig: STD_LOGIC_VECTOR (2 downto 0);
begin

FA1: FA port map(ar(0),br(0),cr,sr(0),sig(0));
FA2: FA port map(ar(1),br(1),sig(0),sr(1),sig(1));
FA3: FA port map(ar(2),br(2),sig(1),sr(2),sig(2));
FA4: FA port map(ar(3),br(3),sig(2),sr(3),coutr);

end Structural;
