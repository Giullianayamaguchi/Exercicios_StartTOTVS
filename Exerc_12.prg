Function Main()

    Local nCont := 0
    
    Local aA    := ARRAY(20)
    
    Local aB    := ARRAY(20)

    FOR nCont := 1 TO 20

      aA[nCont] := nCont

      aB[nCont] := 21 - aA[nCont] 
      
      qout(alltrim(str(aB[nCont])))

    NEXT

RETURN NIL


