-- VHDL Entity ip_repo_lib.top_nco.symbol
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 22:53:36 10/12/2021
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity top_nco is
   port( 
      clk   : in     std_logic;
      fcw   : in     std_logic_vector (31 downto 0);
      reset : in     std_logic;
      rect  : out    std_logic;
      stb   : out    std_logic
   );

-- Declarations

end top_nco ;

--
-- VHDL Architecture ip_repo_lib.top_nco.struct
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 22:53:36 10/12/2021
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ip_repo_lib;

architecture struct of top_nco is

   -- Architecture declarations

   -- Internal signal declarations


   -- Component Declarations
   component nco
   port (
      clk   : in     std_logic;
      fcw   : in     std_logic_vector (31 downto 0);
      reset : in     std_logic;
      rect  : out    std_logic;
      stb   : out    std_logic
   );
   end component;

   -- Optional embedded configurations
   -- pragma synthesis_off
   for all : nco use entity ip_repo_lib.nco;
   -- pragma synthesis_on


begin

   -- Instance port mappings.
   U_0 : nco
      port map (
         clk   => clk,
         fcw   => fcw,
         reset => reset,
         rect  => rect,
         stb   => stb
      );

end struct;
