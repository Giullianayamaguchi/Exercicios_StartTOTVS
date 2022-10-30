Function Main()

    Local nCont := 0
    
    Local aA    := ARRAY(5)
    
    Local aB    := ARRAY(5)

    FOR nCont := 1 TO 5

      aA[nCont] := hb_randomint(-5,5)

      aB[nCont] :=  aA[nCont] * -1 
      
      qout(alltrim(str(aA[nCont])) +" = " + alltrim(str(aB[nCont])))

    NEXT

RETURN NIL


