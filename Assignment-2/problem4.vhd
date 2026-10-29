library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem4 is
    Port (
        vt     : in  STD_LOGIC_VECTOR(24 downto 0);
        result : out STD_LOGIC
    );
end problem4;

architecture Behavioral of problem4 is
begin
    process(vt)
        variable count_ones : integer range 0 to 25;
    begin
        count_ones := 0;

        for i in 0 to 24 loop
            if vt(i) = '1' then
                count_ones := count_ones + 1;
            end if;
        end loop;

        if count_ones >= 13 then
            result <= '1';
        else
            result <= '0';
        end if;
    end process;
end Behavioral;