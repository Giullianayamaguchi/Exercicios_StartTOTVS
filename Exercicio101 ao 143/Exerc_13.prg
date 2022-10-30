Function Main()

    Local nCont := 0
    
    Local aA    := ARRAY(20)
    
    Local aB    := ARRAY(20)

    FOR nCont := 1 TO 20

      aA[nCont] := nCont

      aB[nCont] :=  aA[nCont]  * 3
      
      qout( alltrim(str(aA[nCont])) + " * 3  = " + alltrim(str(aB[nCont])))

    NEXT

RETURN NIL


