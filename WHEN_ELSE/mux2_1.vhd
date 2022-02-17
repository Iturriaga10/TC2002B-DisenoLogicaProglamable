library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity mux2a1 is
  port (
    A  : in std_logic_vector(1 downto 0);
    SELECTOR  : in std_logic;
    --
    Y   : out std_logic);
end mux2a1;

architecture logicMux2a1 of mux2a1 is
    begin
        Y <= A(0) when (SELECTOR = '0') else A(1);
    end logicMux2a1;
