-- SR Flip-flop

library IEEE;
use IEEE.std_logic_1164.all;

entity srff is
    port(s, r, clk, rst : in std_logic;
        q : out std_logic);
    end srff;
    
architecture Behavioral of srff is
    begin
        process(clk,rst)
            variable P: std_logic;
            begin
                if(rst='1') then
                    P:='0';
                elsif(clk='1' and clk'EVENT) then
                    if(s='0' and r='0') then
                        P:=P;
                    elsif(s='0' and r='1') then
                        P:='0';
                    elsif(s='1' and r='0') then
                        P:='1';
                    elsif(s='1' and r='1') then 
                        P:='Z';
                    end if;
                end if;
                q<=P;
            end process;
        end Behavioral;           
