-- VHDL Entity ip_repo_lib.top_shreg_4bit.symbol
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 02:29:28 11/12/2021
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity top_shreg_4bit is
   port( 
      clk : in     std_logic;
      d   : in     std_logic;
      en  : in     std_logic;
      rst : in     std_logic;
      q_s : out    std_logic
   );

-- Declarations

end top_shreg_4bit ;

--
-- VHDL Architecture ip_repo_lib.top_shreg_4bit.struct
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 02:29:28 11/12/2021
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

library ip_repo_lib;

architecture struct of top_shreg_4bit is

   -- Architecture declarations

   -- Internal signal declarations
   signal q0 : std_logic;
   signal q1 : std_logic;
   signal q2 : std_logic;
   signal q3 : std_logic;


   -- Component Declarations
   component flip_flop_d
   port (
      clk : in     std_logic;
      d   : in     std_logic;
      en  : in     std_logic;
      rst : in     std_logic;
      q   : out    std_logic
   );
   end component;
   component gate_and4in1out
   port (
      A : in     std_logic ;
      B : in     std_logic ;
      C : in     std_logic ;
      D : in     std_logic ;
      E : out    std_logic 
   );
   end component;

   -- Optional embedded configurations
   -- pragma synthesis_off
   for all : flip_flop_d use entity ip_repo_lib.flip_flop_d;
   for all : gate_and4in1out use entity ip_repo_lib.gate_and4in1out;
   -- pragma synthesis_on


begin

   -- Instance port mappings.
   U_1 : flip_flop_d
      port map (
         d   => d,
         en  => en,
         clk => clk,
         rst => rst,
         q   => q0
      );
   U_2 : flip_flop_d
      port map (
         d   => q0,
         en  => en,
         clk => clk,
         rst => rst,
         q   => q1
      );
   U_3 : flip_flop_d
      port map (
         d   => q1,
         en  => en,
         clk => clk,
         rst => rst,
         q   => q2
      );
   U_4 : flip_flop_d
      port map (
         d   => q2,
         en  => en,
         clk => clk,
         rst => rst,
         q   => q3
      );
   U_0 : gate_and4in1out
      port map (
         A => q0,
         B => q1,
         C => q2,
         D => q3,
         E => q_s
      );

end struct;
