FUNCTION Main()

    Local nVar_A := 0
    Local nVar_B := 0
    Local nAux

    ACCEPT "Digite da primeira vari�vel: " to nVar_A
    ACCEPT "Digite da segunda vari�vel: " to nVar_B

    nAux := Val(nVar_A)
    nVar_A := Val(nVar_B)
    nVar_B := nAux

    QOUT("O novo valor da vari�vel A �: " + ALLtrim(STR(nVar_A)))
    QOUT("O novo valor da vari�vel B �: " + ALLtrim(STR(nVar_B)))

RETURN NIL
