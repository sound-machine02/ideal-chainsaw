-- D Flip-flop

library IEEE;
use IEEE.std_logic_1164.all;

entity dff is
    port(d, clk, reset : in std_logic;
        q : out std_logic);
    end dff;
    
architecture Behavioral of dff is
    begin
        process(clk)
            begin
                if(clk'EVENT and clk='1') then
                    if(reset='1') then
                        q<='0';
                    else
                        q<=d;
                    end if;
                end if;
            end process;
        end Behavioral;      
