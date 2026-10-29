library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem2 is
    Port (
        a  : in  STD_LOGIC;
        b  : in  STD_LOGIC;
        c  : in  STD_LOGIC;
        d  : in  STD_LOGIC;
        e  : in  STD_LOGIC;
        f  : in  STD_LOGIC;
        g  : in  STD_LOGIC;
        h  : in  STD_LOGIC;
        ch : in  STD_LOGIC_VECTOR(2 downto 0);
        Data : out STD_LOGIC
    );
end problem2;

architecture Behavioral of problem2 is
begin
    process(a, b, c, d, e, f, g, h, ch)
    begin
        case ch is
            when "000" => Data <= a;
            when "001" => Data <= b;
            when "010" => Data <= c;
            when "011" => Data <= d;
            when "100" => Data <= e;
            when "101" => Data <= f;
            when "110" => Data <= g;
            when "111" => Data <= h;
            when others => Data <= '0';
        end case;
    end process;
end Behavioral;