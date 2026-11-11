
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_Latch is
    Port (
        D  : in STD_LOGIC;
        en : in STD_LOGIC;
        Q  : out STD_LOGIC
    );
end D_Latch;

architecture Behavioral of D_Latch is
    signal q_internal : STD_LOGIC := '0';
begin

    process(D, en)
    begin
        if en = '1' then
            q_internal <= D;
        end if;
    end process;

    Q <= q_internal;

end Behavioral;
