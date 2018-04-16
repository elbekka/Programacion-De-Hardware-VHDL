library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4bits is
  port (
    num1,num2 : in std_logic_vector(3 downto 0);
    bitSel : in std_logic;
    resultado : out std_logic_vector(3 downto 0)
  ) ;
end mux4bits;

architecture estructural of mux4bits is

    
    component mux2bits
    port (
        bitA,bitB,bitSel : in std_logic;
        bitResult : out std_logic
      ) ;
    end component;

begin
    I0 : mux2bits port map (bitA => num1(0),bitB=>num2(0),
    bitSel=>bitSel,bitResult=>resultado(0));
    I1 : mux2bits port map (bitA => num1(1),bitB=>num2(1),
    bitSel=>bitSel,bitResult=>resultado(1));
    I2 : mux2bits port map (bitA => num1(2),bitB=>num2(2),
    bitSel=>bitSel,bitResult=>resultado(2));
    I3 : mux2bits port map (bitA => num1(3),bitB=>num2(3),
    bitSel=>bitSel,bitResult=>resultado(3));
end estructural ; -- estructural