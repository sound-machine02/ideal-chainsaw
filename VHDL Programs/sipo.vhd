-- SIPO Shift register

library IEEE;
    use IEEE.std_logic_1164.all;
   entity sipo is
       port(clk, clear: in std_logic;
           serial_in: in std_logic;
           q: out std_logic_vector(3 downto 0));
   end sipo;
   
   architecture arch of sipo is
       begin
           process(clk,clear)
               variable P: std_logic_vector(3 downto 0);
               begin
                   if (clear = '1') then
                       P:="0000";
                   elsif(clk='1' and clk'EVENT) then
                       P(3 downto 1):=P(2 downto 0);
                       P(0):=serial_in;
                   end if;
                   q <= P;
               end process;
           end arch;
