--
-- VHDL Architecture ip_repo_lib.traffic_tester.rtl
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 17:04:56 16/11/2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity traffic_tester is
  port(
    a : in std_logic;
    en: in std_logic;
    leds: out std_logic_vector( 2 DOWNTO 0)

  );
end entity traffic_tester;

--
architecture rtl of traffic_tester is
  signal b: std_logic;
begin

  b <= a AND en;
  leds (0)<= b ;
  leds (1)<= b ;
  leds (2)<= b ;
  
end architecture rtl;

