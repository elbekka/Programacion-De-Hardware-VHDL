library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdder4bits is
    port(
        numA,numB : in std_logic_vector(3 downto 0);
        cin : in std_logic;
        suma : out std_logic_vector(3 downto 0);
        cout : out std_logic
    );
end fullAdder4bits;

architecture estructural of fulladder4bits is
    component fullAdder2
    port(
        num1,num2,cin : in std_logic;
        suma,cout : out std_logic
    );
end component;
    signal acc0,acc1,acc2 : std_logic;
    begin
        U0 : fullAdder2 port map(num1=>numA(0),num2=>numB(0),cin=>cin,suma=>suma(0),cout=>acc0);
        U1 : fullAdder2 port map(num1=>numA(1),num2=>numB(1),cin=>acc0,suma=>suma(1),cout=>acc1);
        U2 : fullAdder2 port map(num1=>numA(2),num2=>numB(2),cin=>acc1,suma=>suma(2),cout=>acc2);
        U3 : fullAdder2 port map(num1=>numA(3),num2=>numB(3),cin=>acc2,suma=>suma(3),cout=>cout);
end estructural;