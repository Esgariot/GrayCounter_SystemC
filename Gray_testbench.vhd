------ GRAY TESTBENCH -------


--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:50:01 03/14/2018
-- Design Name:   
-- Module Name:   /home/lab209/gray_160209/lab_t.vhd
-- Project Name:  gray_160209
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
 
ENTITY lab_t IS
END lab_t;
 
ARCHITECTURE behavior OF lab_t IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab
    PORT(
         rst_i : IN  std_logic;
         clk_i : IN  std_logic;
         led_o : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst_i : std_logic := '0';
   signal clk_i : std_logic := '0';

 	--Outputs
   signal led_o : std_logic_vector(2 downto 0);


 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab PORT MAP (
          rst_i => rst_i,
          clk_i => clk_i,
          led_o => led_o
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	
		clk_i <= '0';
		wait for 10ns;	
		clk_i <= '1';
		wait for 10ns;	


      -- insert stimulus here 

      wait;
   end process;

END;