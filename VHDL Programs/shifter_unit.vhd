-- Shifter Unit
library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.std_logic_unsigned.all;
    use IEEE.std_logic_arith.all;   
    
    entity shifter_unit is
        port(a: in std_logic_vector(3 downto 0);
             op: in std_logic;
             f: out std_logic_vector(3 downto 0));
        end shifter_unit;
        
    architecture bhv of shifter_unit is
        begin
            process(op,a)
                variable temp: std_logic_vector(3 downto 0);
                begin
                    case op is
                        when '0' =>
                            -- left shift
                            temp(3 downto 1):= a(2 downto 0);
                            temp(0):= '0';
                        when '1' =>
                            -- right shift
                            temp(2 downto 0):= a(3 downto 1);
                            temp(3):= '0';
                        when others =>
                            NULL;
                        end case;
                        f <= temp;
                    end process;
                end bhv;
