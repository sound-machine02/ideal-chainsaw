-- JK Flip-flop

library IEEE;
use IEEE.std_logic_1164.all;

entity jkff is
    port(j, k, clk, rst : in std_logic;
        q : out std_logic);
    end jkff;
    
architecture Behavioral of jkff is
    begin
        process(clk,rst)
            variable P: std_logic;
            begin
                if(rst='1') then
                    P:='0';
                elsif(clk='1' and clk'EVENT) then
                    if(j='0' and k='0') then
                        P:=P;
                    elsif(j='0' and k='1') then
                        P:='0';
                    elsif(j='1' and k='0') then
                        P:='1';
                    elsif(j='1' and k='1') then 
                        P:=not P;
                    end if;
                end if;
                q<=P;
            end process;
        end Behavioral;
