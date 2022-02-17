library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity mux4a1 is
  port (
    A  : in std_logic_vector(3 downto 0);
    SELECTOR  : in std_logic_vector(1 downto 0);
    --
    Y   : out std_logic);
end mux4a1;

architecture logicMux4a1 of mux4a1 is
    begin
        Y <= A(0) when (SELECTOR = "00") else 
             A(1) when (SELECTOR = "01") else
             A(2) when (SELECTOR = "10") else
             A(3);
        
    end logicMux4a1;
