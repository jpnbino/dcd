--
-- VHDL Architecture ip_repo_lib.gate_and.rtl
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 14:36:00 16/11/2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity gate_and is
  port(
    A : in std_logic;
    B : in std_logic;
    C : out std_logic    
  );
end entity gate_and;

--
architecture rtl of gate_and is

begin
  C<= A AND B;

end architecture rtl;

