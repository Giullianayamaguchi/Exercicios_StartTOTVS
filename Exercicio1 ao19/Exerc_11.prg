FUNCTION Main()

    Local nVar_A :=0
    Local nVar_B :=0
    Local nQua 

    ACCEPT "Digite o valor da Variavel A: " to nVar_A
    ACCEPT "Digite o valor da Variavel B: " to nVar_B

    nQua := (Val(nVar_A) - Val(nVar_B)) **2

    QOUT("O quadrado da diferença da variavel A e variavel B e: " + Alltrim(STR(nQua)))

RETURN NIL
