---- GRAY SIMULATION -------------

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:20:39 03/14/2018 
-- Design Name: 
-- Module Name:    lab - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;




---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab is

port (
 signal rst_i : in std_logic;
 signal clk_i : in std_logic;
 led_o : out std_logic_vector(2 downto 0) 
);

end lab;
	
architecture Behavioral of lab is

	signal counter : std_logic_vector(2 downto 0) := "000";
	signal counter2 : std_logic_vector(2 downto 0) := "000";
	signal even : std_logic := '0';	
	

begin

	
pushed: process (clk_i, counter, counter2, even, rst_i) is
begin
	if counter2 = "100" then
			counter2 <= "000";
			counter <= "000";
			even <= '0';
	if rst_i = '1' then
		counter <= "000";
		counter2 <= "000";
		even <= '0';
	elsif rising_edge(clk_i) then
		if even = '1' then
			counter2 <= counter2 + 1;
		end if;
		counter <= counter + 1;
		even <= even xor '1';
	end if;
	led_o <= counter2 xor counter;
end process pushed;
			


	
	
	
	

end Behavioral;
