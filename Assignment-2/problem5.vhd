library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem5 is
    Port (
        vt  : in  STD_LOGIC_VECTOR(12 downto 0);
        en  : in  STD_LOGIC;
        seg : out STD_LOGIC_VECTOR(7 downto 0)
    );
end problem5;

architecture Behavioral of problem5 is
begin
    process(vt, en)
        variable count_ones : integer range 0 to 13;
    begin
        count_ones := 0;

        for i in 0 to 12 loop
            if vt(i) = '1' then
                count_ones := count_ones + 1;
            end if;
        end loop;

        if en = '0' then
            seg <= "00000000";
        else
            case count_ones is
                when 0  => seg <= "11111100";
                when 1  => seg <= "01100000";
                when 2  => seg <= "11011010";
                when 3  => seg <= "11110010";
                when 4  => seg <= "01100110";
                when 5  => seg <= "10110110";
                when 6  => seg <= "10111110";
                when 7  => seg <= "11100000";
                when 8  => seg <= "11111110";
                when 9  => seg <= "11110110";
                when 10 => seg <= "11101110"; -- A
                when 11 => seg <= "00111110"; -- b
                when 12 => seg <= "10011100"; -- C
                when 13 => seg <= "01111010"; -- d
                when others => seg <= "00000000";
            end case;
        end if;
    end process;
end Behavioral;