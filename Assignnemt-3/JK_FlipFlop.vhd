
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_FlipFlop is
    Port (
        J   : in STD_LOGIC;
        K   : in STD_LOGIC;
        clk : in STD_LOGIC;
        Q   : out STD_LOGIC
    );
end JK_FlipFlop;

architecture Behavioral of JK_FlipFlop is
    signal q_internal : STD_LOGIC := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if J = '0' and K = '0' then
                null;
            elsif J = '0' and K = '1' then
                q_internal <= '0';
            elsif J = '1' and K = '0' then
                q_internal <= '1';
            else
                q_internal <= not q_internal;
            end if;
        end if;
    end process;

    Q <= q_internal;

end Behavioral;
