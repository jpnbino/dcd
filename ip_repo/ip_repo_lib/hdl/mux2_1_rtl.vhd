--
-- VHDL Architecture ip_repo_lib.mux2_1.rtl
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 02:01:33 23/11/2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity mux2_1 is
  port(
    s0   : in std_logic;
    in1  : in std_logic_vector( 2 DOWNTO 0);
    in2  : in std_logic_vector( 2 DOWNTO 0);
    out1 : out std_logic_vector( 2 DOWNTO 0)
  );
end entity mux2_1;

--
architecture rtl of mux2_1 is
begin
 
    out1 <= (in1 and s0) OR (in2 and not s0 ) ;
end architecture rtl;

