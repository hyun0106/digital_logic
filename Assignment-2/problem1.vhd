library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem1 is
    Port (
        a    : in  STD_LOGIC;
        b    : in  STD_LOGIC;
        c    : in  STD_LOGIC;
        d    : in  STD_LOGIC;
        out1 : out STD_LOGIC;
        out2 : out STD_LOGIC
    );
end problem1;

architecture Behavioral of problem1 is
begin
    out1 <= a and b and c and d;
    out2 <= a or b or c or d;
end Behavioral;