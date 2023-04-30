-- Small ALU

library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.std_logic_unsigned.all;
    use IEEE.std_logic_arith.all;   
    
    entity alu is
        port(a, b: in std_logic_vector(1 downto 0);
             sel: in std_logic_vector(1 downto 0);
             res: out std_logic_vector(1 downto 0));
        end alu;   
        
    architecture bhv of alu is
        begin
            process(sel,a,b)
                begin
                    case sel is
                        when "00" =>
                            res <= a + b;
                         when "01" =>
                            res <= a + (not b)+1;
                         when "10" =>
                            res<=a AND b;
                         when "11" =>
                            res<=a OR b;
                         when others =>
                            res <= "XX";
                        end case;
                    end process;
                end bhv;
