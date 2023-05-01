-- SISO Shift register

library IEEE;
    use IEEE.std_logic_1164.all;
   entity siso is
       port(clk, clear: in std_logic;
           serial_in: in std_logic;
           serial_out: out std_logic);
   end siso;
   
   architecture bhv of siso is
       signal reg: std_logic_vector(3 downto 0):=(others => '0');
       begin
           process(clk,clear) 
               begin
                   if (clear = '1') then
                       reg <= (others => '0');
                       serial_out <= reg(3);
                   elsif rising_edge(clk) then
                       reg <= serial_in & reg(3 downto 1);
                       serial_out <= reg(3);
                   end if;
               end process;
           end bhv;
