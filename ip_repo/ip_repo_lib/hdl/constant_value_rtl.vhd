--
-- VHDL Architecture ip_repo_lib.constant_value.rtl
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 00:52:38 13/12/2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity constant_value is
  generic (
    value  : integer := 34359;
    nBits  : integer := 32
   );
   port (
      output : out    std_logic_vector ( 31 downto 0)
   );
end constant_value;

--
architecture rtl of constant_value is
begin
  output <= conv_std_logic_vector( 34359, output'length);
end architecture rtl;

