Function Main()

    LOCAL aA := ARRAY(20)
    LOCAL aB := ARRAY(20)
    LOCAL aC := ARRAY(20)
    LOCAL nCont := 0

    FOR nCont := 1 TO 20

        aA[nCont] := hb_randomint(1,20)
        aB[nCont] := hb_randomint(1,20) 
        aC[nCont] := aA[nCont] - aB[nCont]
        qout( ALLTRIM(STR(aA[nCont])) + " - " + ALLTRIM(STR(aB[nCont])) + " = " + ALLTRIM(STR(aC[nCont]) + CHR(10)) )
    NEXT

RETURN NIL
