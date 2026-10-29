library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem3 is
    Port (
        sel : in  STD_LOGIC_VECTOR(2 downto 0);
        seg : out STD_LOGIC_VECTOR(6 downto 0)
    );
end problem3;

architecture Behavioral of problem3 is
begin
    process(sel)
    begin
        case sel is
            when "000" => seg <= "1110111"; -- a
            when "001" => seg <= "0011111"; -- b
            when "010" => seg <= "0001101"; -- c
            when "011" => seg <= "0111101"; -- d
            when "100" => seg <= "1000111"; -- f
            when "101" => seg <= "1111011"; -- g
            when others => seg <= "0000000";
        end case;
    end process;
end Behavioral;