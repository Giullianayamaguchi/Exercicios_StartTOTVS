function Main()

    Local nA := 0
    Local nB := 0
    Local nC := 0

    ACCEPT "Digite o valor da varivavel A: " to nA
    ACCEPT "Digite o valor da varivavel B: " to nB
    ACCEPT "Digite o valor da varivavel C: " to nC

    nA := Val(nA)
    nB := Val(nB)
    nC := Val(nC)

    if((nA > nB) .and. (nA > nC) .and. (nB > nC))
        QOUT("A sequencia eh: " + AllTrim(STR(nA)) + " , " + AllTrim(STR(nB)) + " , " + AllTrim(STR(nC)))
    
    elseif ((nA > nB) .and. (nA > nC) .and. (nB < nC))
        QOUT("A sequencia eh: " + AllTrim(STR(nA)) + " , " + AllTrim(STR(nC)) + " , " + AllTrim(STR(nB)))

    elseif ((nB > nA) .and. (nA > nC) .and. (nB > nC))
        QOUT("A sequencia eh: " + AllTrim(STR(nB)) + " , " + AllTrim(STR(nA)) + " , " + AllTrim(STR(nC)))

    elseif ((nB > nA) .and. (nA < nC) .and. (nB > nC))
        QOUT("A sequencia eh: " + AllTrim(STR(nB)) + " , " + AllTrim(STR(nC)) + " , " + AllTrim(STR(nA)))

    elseif  ((nC > nA) .and. (nA > nB) .and. (nC > nB))
        QOUT("A sequencia eh: " + AllTrim(STR(nC)) + " , " + AllTrim(STR(nA)) + " , " + AllTrim(STR(nB)))

    elseif ((nC > nA) .and. (nA < nB) .and. (nC > nB))
        QOUT("A sequencia eh: " + AllTrim(STR(nC)) + " , " + AllTrim(STR(nB)) + " , " + AllTrim(STR(nA)))

        
        
    ENDIF

RETURN NIL
