Function Main()

    Local nCont  := 0
    Local nValor := 0


    for nCont := 1 to 15

    nValor := 3 ^ nCont
    QOUT("3 ^ " + alltrim(str(nCont)) +" = " + alltrim(str(nValor)))
    NEXT

RETURN NIL
