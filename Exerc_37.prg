Function Main()

    local aA := {1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10}
    local aB := {2 , 3 , 4 , 5, 4 , 5 , 4 , 5 , 6 , 7}
    Local nAux := 0
    Local aC := ARRAY(10)
    Local nCont := 0

    for nCont := 1 to 10 

    nAux := aA[nCont] + aB[nCont]
    aC[nCont] := nAux

    QOUT(aC[nCont])

    NEXT

RETURN NIL
