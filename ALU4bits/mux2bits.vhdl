library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2bits is
  port (
    bitA,bitB,bitSel : in std_logic;
    bitResult : out std_logic
  ) ;
end mux2bits;

architecture estrctural of mux2bits is
    component and2
    port(
        bitA : in std_logic;
        bitB : in std_logic;
        bitResult : out std_logic
    );
    end component;
    component or2
    port(
        bitA : in std_logic;
        bitB : in std_logic;
        bitResult : out std_logic
    );
    end component;
    component notBit
    port(
        bitA : in std_logic;
        bitResult : out std_logic
    );
    end component;
    signal notS,P2,P1,P1xorP2 : std_logic;
begin
    U0 : notBit port map (bitA=>bitSel,bitResult=>notS);
    U1 : and2 port map (bitA=>bitA,bitB=>notS,bitResult=>P1);
    U2 : and2 port map (bitA=>bitSel,bitB=>bitB,bitResult=>P2);
    U3 : or2 port map (bitA=>P1,bitB=>P2,bitResult=>bitResult);

end estrctural ; -- estrctural