library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM is
    Port ( CLK : in STD_LOGIC;
           CS : in STD_LOGIC;
           R : in STD_LOGIC;
           W : in STD_LOGIC;
           CLR : in STD_LOGIC;
           ADDR : in STD_LOGIC_VECTOR (6 downto 0);
           DBUS : inout STD_LOGIC_VECTOR (7 downto 0));
end RAM;

architecture Behavioral of RAM is
type RAM_ARR is array (0 to 127) of STD_LOGIC_VECTOR (7 downto 0);
signal RAM_DATA : RAM_ARR;
begin

process(CLK)
begin

if (rising_edge(CLK) and CS = '1') then
    if W = '1' then
    RAM_DATA(to_integer(unsigned(ADDR))) <= DBUS;
    end if;
    
    if R = '1' then
    DBUS <= RAM_DATA(to_integer(unsigned(ADDR)));
    end if;
    
    if CLR = '1' then
        for i in 0 to 127 loop
        RAM_DATA(i) <= "UUUUUUUU";
        end loop;
    end if;
end if;

end process;
end Behavioral;