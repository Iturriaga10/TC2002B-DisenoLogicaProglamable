library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity fullAdder is
  port (
    A  : in std_logic;
    B  : in std_logic;
    INCARRY : in std_logic;
    --
    SUM   : out std_logic;
    OUTCARRY : out std_logic
    );
end fullAdder;
 
 
architecture rtl of fullAdder is
 
  signal WIRE1 : std_logic;
  signal WIRE2 : std_logic;
  signal WIRE3 : std_logic;
   
begin
 
  WIRE1 <= A xor B;
  WIRE2 <= WIRE1 and INCARRY;
  WIRE3 <= A and B;
 
  SUM   <= WIRE1 xor INCARRY;
  OUTCARRY <= WIRE2 or WIRE3;

  -- FYI: Code above using wires will produce the same results as:
  -- SUM   <= A xor B xor INCARRY;
  -- OUTCARRY <= (A xor B) and INCARRY) or (A and B);
 
  -- Wires are just used to be explicit. 
end rtl;