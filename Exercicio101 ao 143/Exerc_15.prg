Function Main()

    LOCAL aA := ARRAY(15)
    LOCAL aB := ARRAY(20)
    LOCAL aC := ARRAY(35)
    LOCAL nCont := 0


    for nCont := 1 to 15
        aA[nCont] := hb_randomint(1,15)
        aC[nCont] := aA[nCont] 
        qout( ALLTRIM(STR(aC[nCont])) + CHR(10)) 
    NEXT
    FOR nCont := 1 TO 20

        aB[nCont] := hb_randomint(1,20) 
        aC[nCont] := aB[nCont] 
     qout( ALLTRIM(STR(aC[nCont])) + CHR(10))         
    NEXT
RETURN NIL
