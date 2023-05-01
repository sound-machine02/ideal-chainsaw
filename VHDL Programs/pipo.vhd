-- PIPO Shift register

library IEEE;
    use IEEE.std_logic_1164.all;
   entity pipo is
       port(clk: in std_logic;
           p_in: in std_logic_vector(3 downto 0);
           p_out: out std_logic_vector(3 downto 0));
   end pipo;
   
   architecture bhv of pipo is
       begin
           process(clk)
               begin
                   if(clk='1' and clk'EVENT) then
                       p_out <= p_in;
                   end if;
               end process;
           end bhv;
