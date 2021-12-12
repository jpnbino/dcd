-- VHDL Entity ip_repo_lib.tb_top_nco.symbol
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 22:30:20 10/12/2021
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity tb_top_nco is
   port( 
      rect : out    std_logic;
      stb  : out    std_logic
   );

-- Declarations

end tb_top_nco ;

--
-- VHDL Architecture ip_repo_lib.tb_top_nco.struct
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 01:28:12 11/12/2021
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

library ip_repo_lib;

architecture struct of tb_top_nco is

   -- Architecture declarations

   -- Internal signal declarations
   signal clk   : std_logic;
   signal fcw   : std_logic_vector(31 downto 0);
   signal reset : std_logic;


   -- Component Declarations
   component top_nco
   port (
      clk   : in     std_logic ;
      fcw   : in     std_logic_vector (31 downto 0);
      reset : in     std_logic ;
      rect  : out    std_logic ;
      stb   : out    std_logic 
   );
   end component;

   -- Optional embedded configurations
   -- pragma synthesis_off
   for all : top_nco use entity ip_repo_lib.top_nco;
   -- pragma synthesis_on


begin
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   -- eb1 1 
   process
   begin  
   fcw <= conv_std_logic_vector(536870912,fcw'length); 
   reset <= '0';
   wait for 10ns;
   reset <= '1';
   wait for 10ns;
   reset <= '0';
   wait;
   end process;
   
   --generate clock
   process
   begin
      clk <='0';
      wait for 4ns;
      clk <='1';
      wait for 4ns;
   end process;
                                  


   -- Instance port mappings.
   U_0 : top_nco
      port map (
         clk   => clk,
         fcw   => fcw,
         reset => reset,
         rect  => rect,
         stb   => stb
      );

end struct;
