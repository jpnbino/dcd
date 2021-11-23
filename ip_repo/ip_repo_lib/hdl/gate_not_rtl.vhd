--
-- VHDL Architecture ip_repo_lib.gate_not.rtl
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 01:23:07 23/11/2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity gate_not is
  port(
    a : in std_logic;
    b : out std_logic
  );
end entity gate_not;

--
architecture rtl of gate_not is
begin
  
  b <= not a;
end architecture rtl;

