 Function Main()
    
    Local nNum_1 :=0
    Local nNum_2 :=0
    Local nSoma :=0
    Local nDif :=0
    Local nProd :=0
    Local nQuoc :=0

    ACCEPT "Digite o primeiro n�mero: " TO nNum_1
    nNum_1 = Val(nNum_1)

    ACCEPT "Digite o primeiro n�mero: " TO nNum_2
    nNum_2 = Val(nNum_2)

    nSoma := nNum_1 + nNum_2
    nDif := nNum_1 - nNum_2
    nProd := nNum_1 * nNum_2
    nQuoc := nNum_1 / nNum_2

    qout("A soma �: " + ALLTRIM(STR(nSoma)))

    qout("A diferen�a �: " + ALLTRIM(STR(nDif)))

    qout("o produto �: " + AllTrim(STR(nProd)))
    
    qout("O quociente �: " + AllTrim(STR(nQuoc)))

Return NIL
