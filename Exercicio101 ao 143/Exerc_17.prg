Function Main()

    Local aVetorA := ARRAY(10)
    Local aVetorB := ARRAY(10)
    Local nCont   := 0
    Local nCont2  := 2

    for nCont := 1 to 10
        aVetorA[nCont] := nCont

    NEXT

    for nCont := 1 to 10

    if nCont2 != 11
        aVetorB[nCont] := aVetorA[nCont] + aVetorA[nCont2]
        nCont2++
        qout("a posicao: " + alltrim(str(nCont)) + " Resultado = " + alltrim(str(aVetorB[nCont])))
    else
        nCont2--
        aVetorB[nCont] := aVetorA[nCont] + aVetorA[nCont2]
        qout("a posicao: " + alltrim(str(nCont)) + " Resultado = " + alltrim(str(aVetorB[nCont])))

    ENDIF
    
    NEXT

RETURN NIL
