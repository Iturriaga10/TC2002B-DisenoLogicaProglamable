library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity display is
  port (
    entrada: IN  STD_LOGIC_VECTOR(5 downto 0);
    --
    salida : OUT STD_LOGIC_VECTOR(7 downto 0));
end display;

architecture logicDisplay of display is
    begin
        visualizador: process (entrada) begin
            case entrada is
                when "000000" =>  salida <= x"C0"; -- 0
                when "000001" =>  salida <= x"F9"; -- 1
                when "000010" =>  salida <= x"A4"; -- 2
                when "000011" =>  salida <= x"B0"; -- 3
                when "000100" =>  salida <= x"99"; -- 4
                when "000101" =>  salida <= x"92"; -- 5
                when "000110" =>  salida <= x"82"; -- 6
                when "000111" =>  salida <= x"F8"; -- 7
                when "001000" =>  salida <= x"80"; -- 8
                when "001001" =>  salida <= x"98"; -- 9
                when "001010" =>  salida <= x"88"; -- A
                when "001011" =>  salida <= x"83"; -- B
                when "001100" =>  salida <= x"C6"; -- C
                when "001101" =>  salida <= x"A1"; -- D
                when "001110" =>  salida <= x"86"; -- E
                when "001111" =>  salida <= x"8E"; -- F
                when "010000" =>  salida <= x"90"; -- G
                when "010001" =>  salida <= x"89"; -- H
                when "010010" =>  salida <= x"E6"; -- I
                when "010011" =>  salida <= x"E1"; -- J
                when "010100" =>  salida <= x"85"; -- K
                when "010101" =>  salida <= x"C7"; -- L
                when "010110" =>  salida <= x"C8"; -- M
                when "010111" =>  salida <= x"AB"; -- N
                when "011000" =>  salida <= x"C0"; -- O
                when "011001" =>  salida <= x"8C"; -- P
                when "011010" =>  salida <= x"98"; -- Q
                when "011011" =>  salida <= x"AF"; -- R
                when "011100" =>  salida <= x"92"; -- S
                when "011101" =>  salida <= x"87"; -- T
                when "011110" =>  salida <= x"E3"; -- U
                when "011111" =>  salida <= x"C1"; -- V
                when "100000" =>  salida <= x"E2"; -- W
                when "100001" =>  salida <= x"8F"; -- X
                when "100010" =>  salida <= x"91"; -- Y
                when "100011" =>  salida <= x"B6"; -- Z
                when "100100" =>  salida <= x"BF"; -- -
                when "100101" =>  salida <= x"F7"; -- _
                when "100110" =>  salida <= x"7F"; -- .
                when others   =>  salida <= x"FF"; -- Nada
            end case;
        end process;
    end logicDisplay;


    -- # Entrada de datos. ###################
    -- NET  "entrada<5>"  LOC = "F3";
    -- NET  "entrada<4>"  LOC = "G3";
    -- NET  "entrada<3>"  LOC = "B4";
    -- NET  "entrada<2>"  LOC = "K3";
    -- NET  "entrada<1>"  LOC = "L3";
    -- NET  "entrada<0>"  LOC = "P11";
    -- # Segmentos del visualizador. #########
    -- NET  "salida<7>"   LOC = "N13"; # dp
    -- NET  "salida<6>"   LOC = "M12"; # g
    -- NET  "salida<5>"   LOC = "L13"; # f
    -- NET  "salida<4>"   LOC = "P12"; # e
    -- NET  "salida<3>"   LOC = "N11"; # d
    -- NET  "salida<2>"   LOC = "N14"; # c
    -- NET  "salida<1>"   LOC = "H12"; # b
    -- NET  "salida<0>"   LOC = "L14"; # a