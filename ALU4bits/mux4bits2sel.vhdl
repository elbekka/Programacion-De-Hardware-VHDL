library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4bits2sel is
  port (
    num0,num1,num2,num3 : in std_logic_vector(3 downto 0);
    sel : in std_logic_vector(1 downto 0);
    resultado : out std_logic_vector(3 downto 0)
  ) ;
end mux4bits2sel;

architecture estructural of mux4bits2sel is

    signal resultado0,resultado1 :  std_logic_vector(3 downto 0);
    component mux4bits
    port (
        num1,num2 : in std_logic_vector(3 downto 0);
        bitSel : in std_logic;
        resultado : out std_logic_vector(3 downto 0)
      ) ;
    end component;
begin
    I0 : mux4bits port map(num1=>num0,num2=>num1,bitSel=>sel(0),resultado=>resultado0);
    I1 : mux4bits port map(num1=>num2,num2=>num3,bitSel=>sel(0),resultado=>resultado1);
    I2 : mux4bits port map(num1=>resultado0,num2=>resultado1,bitSel=>sel(1),resultado=>resultado);

end estructural ; -- estructural