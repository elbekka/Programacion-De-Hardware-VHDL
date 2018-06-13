library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_4bits2sel is
  port (
    num1,num2 : in std_logic_vector(3 downto 0);
    cin : in std_logic;
    sel : in std_logic_vector(1 downto 0);
    resultado : out std_logic_vector(3 downto 0);
    cout : out std_logic
  ) ;
end ALU_4bits2sel;

architecture estructural of ALU_4bits2sel is

    signal resultadoSuma,resultadoNotA,resultadoOr,resultadoAnd : std_logic_vector(3 downto 0);
    component not4bit
        port (
            num : in std_logic_vector(3 downto 0);
            resultado : out std_logic_vector(3 downto 0)
        ) ;
    end component;
    component or4bits
        port(
            num1,num2 : in std_logic_vector(3 downto 0);
            resultado : out std_logic_vector(3 downto 0)
        );
    end component;
    component fullAdder4bits
        port(
            numA,numB : in std_logic_vector(3 downto 0);
            cin : in std_logic;
            suma : out std_logic_vector(3 downto 0);
            cout : out std_logic
        );
    end component;
    component and4bits
        port(
            num1,num2 : in std_logic_vector(3 downto 0);
            resultado : out std_logic_vector(3 downto 0)
        );
    end component ;
    component mux4bits2sel
    port (
        num0,num1,num2,num3 : in std_logic_vector(3 downto 0);
        sel : in std_logic_vector(1 downto 0);
        resultado : out std_logic_vector(3 downto 0)
      ) ;
    end component;
begin
    I0 : or4bits port map (num1,num2,resultadoOR);
    I1 : not4bit port map (num1,resultadoNotA);
    I2 : fullAdder4bits port map (num1,num2,cin,resultadoSuma,cout);
    I3 : and4bits port map (num1,num2,resultadoAnd);
    I4 : mux4bits2sel port map(resultadoOr,resultadoNotA,resultadoSuma,resultadoAnd,sel,resultado);
end estructural ; -- estructural