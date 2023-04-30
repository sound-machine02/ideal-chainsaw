-- Logical Unit
library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.std_logic_unsigned.all;
    use IEEE.std_logic_arith.all;   
    
    entity logical_unit is
        port(a, b: in std_logic_vector(3 downto 0);
             op: in std_logic_vector(2 downto 0);
             zero: out std_logic;
             f: out std_logic_vector(3 downto 0));
        end logical_unit;
        
    architecture bhv of logical_unit is
        begin
            process(op,a,b)
                variable temp: std_logic_vector(3 downto 0);
                begin
                    case op is
                         when "000" =>
                            temp:= a OR b;
                         when "001" =>
                            temp:= a AND b;
                         when "010" =>
                            temp:= NOT a;
                         when "011" =>
                            temp:= a NOR b;
                         when "100" =>
                            temp:= a NAND b;
                         when "101" =>
                            temp:= a XOR b;
                         when "110" =>
                            temp:= a XNOR b;
                         when "111" =>
                            if a < b then
                                temp:="1111";
                            else
                                temp:="0000";
                            end if;
                         when others =>
                             NULL;
                         end case;
                         if temp="0000" then
                             zero <= '1';
                         else
