-- VHDL Entity ip_repo_lib.tb_top_power_on_reset.symbol
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 01:14:06 10/12/2021
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity tb_top_power_on_reset is
   port( 
      reset_s : out    std_logic
   );

-- Declarations

end tb_top_power_on_reset ;

--
-- VHDL Architecture ip_repo_lib.tb_top_power_on_reset.struct
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 01:14:06 10/12/2021
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

library ip_repo_lib;

architecture struct of tb_top_power_on_reset is

   -- Architecture declarations

   -- Internal signal declarations
   signal clk     : std_logic;
   signal reset_a : std_logic;


   -- Component Declarations
   component top_power_on_reset
   port (
      clk     : in     std_logic ;
      reset_a : in     std_logic ;
      reset_s : out    std_logic 
   );
   end component;

   -- Optional embedded configurations
   -- pragma synthesis_off
   for all : top_power_on_reset use entity ip_repo_lib.top_power_on_reset;
   -- pragma synthesis_on


begin
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   -- eb1 1 
   process is
   begin
   clk <= '0';
   wait for 4 ns;
   clk <= '1';
   wait for 4 ns;
   end process; 
            
   process is
   begin
   reset_a <='0';
   wait for 10ns;
   reset_a <='1';
   wait for 10ns;
   reset_a <='0';
   wait for 50ns;
   reset_a <='1';
   wait;
   end process; 
                                                           


   -- Instance port mappings.
   U_0 : top_power_on_reset
      port map (
         clk     => clk,
         reset_a => reset_a,
         reset_s => reset_s
      );

end struct;