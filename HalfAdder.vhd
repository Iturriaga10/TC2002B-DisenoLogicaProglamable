library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity halfAdder is
  port (
    A  : in std_logic;
    B  : in std_logic;
    --
    SUM   : out std_logic;
    CARRY : out std_logic );
end halfAdder;
 
architecture halfAdderLogic of halfAdder is
begin
  SUM   <= A xor B;
  CARRY <= A and B;
end halfAdderLogic;