Function Main()

    LOCAL aA := ARRAY(10)
    LOCAL aB := ARRAY(10)
    LOCAL aC := ARRAY(20)
    LOCAL nCont := 0
    LOCAL nCont2 := 1
    LOCAL nCont3 := 1


   FOR nCont := 1 TO 10 
        aA[nCont] := "A " + ALLTRIM(STR(nCont))
        aB[nCont] := "B " + ALLTRIM(STR(nCont))
    NEXT
    FOR nCont := 1 TO 20
        IF nCont % 2 == 0
            aC[nCont] := aA[nCont2]
            nCont2++
        ELSE
            aC[nCont] := aB[nCont3]
            nCont3++
        ENDIF
        
        qout(aC[nCont])
    NEXT
RETURN NIL

