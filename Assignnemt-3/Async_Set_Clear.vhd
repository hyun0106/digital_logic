
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Async_Set_Clear is
    Port (
        D   : in STD_LOGIC;
        clk : in STD_LOGIC;
        set : in STD_LOGIC;
        clr : in STD_LOGIC;
        Q   : out STD_LOGIC
    );
end Async_Set_Clear;

architecture Behavioral of Async_Set_Clear is
    signal q_internal : STD_LOGIC := '0';
begin

    process(clk, set, clr)
    begin
        if clr = '1' then
            q_internal <= '0';
        elsif set = '1' then
            q_internal <= '1';
        elsif rising_edge(clk) then
            q_internal <= D;
        end if;
    end process;

    Q <= q_internal;

end Behavioral;
