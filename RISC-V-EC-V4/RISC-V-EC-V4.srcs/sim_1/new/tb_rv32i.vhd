----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.03.2025 15:10:12
-- Design Name: 
-- Module Name: tb_rv32i - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

entity tb_rv32i is
end tb_rv32i;

architecture sim of tb_rv32i is

  -- Señales para conectar al DUT
  signal clk_tb     : std_logic := '0';
  signal alua_tb    : std_logic_vector(31 downto 0);
  signal alub_tb    : std_logic_vector(31 downto 0);
  signal cont_p_tb  : std_logic_vector(12 downto 0);
  signal sal_alu_tb : std_logic_vector(31 downto 0);
  signal valor_tb   : std_logic_vector(12 downto 0);

begin

  -- Instancia del DUT
  DUT: entity work.rv32i
    port map (
      clk      => clk_tb,
      alua     => alua_tb,
      alub     => alub_tb,
      cont_p   => cont_p_tb,
      sal_alu  => sal_alu_tb,
      valor    => valor_tb
    );

  -- Proceso para generar el reloj
  clk_process : process
  begin
    while true loop
      clk_tb <= '0';
      wait for 10 ns;
      clk_tb <= '1';
      wait for 10 ns;
    end loop;
  end process;

  -- Proceso de simulación
  stim_proc : process
  begin
    wait for 1000 ns;
    wait;
  end process;

end sim;
