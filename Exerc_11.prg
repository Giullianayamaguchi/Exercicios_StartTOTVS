Function Main()

    Local nCont := 0
    Local aA    := ARRAY(20)
    Local aB    := ARRAY(20)



    FOR nCont := 1 TO 20

      aA[nCont] := nCont

    NEXT

    for nCont := 20 to 1 step -1

    aB[nCont] := aA[nCont] 

    qout(alltrim(str(aB[nCont])))
    next
RETURN NIL



