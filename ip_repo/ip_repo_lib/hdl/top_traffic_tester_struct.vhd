-- VHDL Entity ip_repo_lib.top_traffic_tester.symbol
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 01:13:34 23/11/2021
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity top_traffic_tester is
   port( 
      a    : in     std_logic;
      en   : in     std_logic;
      leds : out    std_logic_vector ( 2 downto 0)
   );

-- Declarations

end top_traffic_tester ;

--
-- VHDL Architecture ip_repo_lib.top_traffic_tester.struct
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 01:13:34 23/11/2021
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ip_repo_lib;

architecture struct of top_traffic_tester is

   -- Architecture declarations

   -- Internal signal declarations


   -- Component Declarations
   component traffic_tester
   port (
      a    : in     std_logic;
      en   : in     std_logic;
      leds : out    std_logic_vector ( 2 downto 0)
   );
   end component;

   -- Optional embedded configurations
   -- pragma synthesis_off
   for all : traffic_tester use entity ip_repo_lib.traffic_tester;
   -- pragma synthesis_on


begin

   -- Instance port mappings.
   U_0 : traffic_tester
      port map (
         a    => a,
         en   => en,
         leds => leds
      );

end struct;
