-- VHDL Entity ip_repo_lib.tb_top_rotary_decoder.symbol
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 22:14:16 12/12/2021
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity tb_top_rotary_decoder is
   port( 
      led0 : out    std_logic;
      led1 : out    std_logic;
      led2 : out    std_logic;
      led3 : out    std_logic
   );

-- Declarations

end tb_top_rotary_decoder ;

--
-- VHDL Architecture ip_repo_lib.tb_top_rotary_decoder.struct
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 02:37:49 13/12/2021
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

library ip_repo_lib;

architecture struct of tb_top_rotary_decoder is

   -- Architecture declarations

   -- Internal signal declarations
   signal A          : std_logic;
   signal B          : std_logic;
   signal clk        : std_logic;
   signal preset     : std_logic;
   signal preset_val : std_logic_vector(3 Downto 0);


   -- Component Declarations
   component top_rotary_decoder_no_debounce
   port (
      A          : in     std_logic ;
      B          : in     std_logic ;
      clk        : in     std_logic ;
      preset     : in     std_logic ;
      preset_val : in     std_logic_vector (3 Downto 0);
      led0       : out    std_logic ;
      led1       : out    std_logic ;
      led2       : out    std_logic ;
      led3       : out    std_logic 
   );
   end component;

   -- Optional embedded configurations
   -- pragma synthesis_off
   for all : top_rotary_decoder_no_debounce use entity ip_repo_lib.top_rotary_decoder_no_debounce;
   -- pragma synthesis_on


begin
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   -- eb1 1      
   
   process is
   begin 
   preset_val <= conv_std_logic_vector(2,preset_val'length);
   preset <= '0';
   wait for 5ns;
   preset <= '1';
   wait for 10 ns;
   preset <= '0';
   A <= '0'; 
   B <= '0';           
   wait for 10 ns;
   A <= '0'; 
   B <= '1';           
   wait for 10 ns;
   A <= '1'; 
   B <= '1';           
   wait for 10 ns;
   A <= '1'; 
   B <= '0';           
   wait for 10 ns;
   A <= '0'; 
   B <= '0';           
   wait for 10 ns;
   
   A <= '0'; 
   B <= '0';           
   wait for 10 ns;
   A <= '1'; 
   B <= '0';           
   wait for 10 ns;
   A <= '1'; 
   B <= '1';           
   wait for 10 ns;
   A <= '0'; 
   B <= '1';           
   wait for 10 ns;
   A <= '0'; 
   B <= '0';           
   
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
   U_1 : top_rotary_decoder_no_debounce
      port map (
         A          => preset,
         B          => B,
         clk        => clk,
         preset     => A,
         preset_val => preset_val,
         led0       => led0,
         led1       => led2,
         led2       => led3,
         led3       => led1
      );

end struct;
