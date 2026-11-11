
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RS_Latch is
    Port (
        S : in STD_LOGIC;
        R : in STD_LOGIC;
        Q : out STD_LOGIC;
        Qbar : out STD_LOGIC
    );
end RS_Latch;

architecture Behavioral of RS_Latch is
    signal q_internal : STD_LOGIC := '0';
begin

    process(S, R)
    begin
        if S = '1' and R = '0' then
            q_internal <= '1';
        elsif S = '0' and R = '1' then
            q_internal <= '0';
        elsif S = '0' and R = '0' then
            null;
        end if;
    end process;

    Q <= q_internal;
    Qbar <= not q_internal;

end Behavioral;
