Function Main()

    Local aValor := ARRAY(30)
    Local nCont := 0

    For nCont :=1 to 30
         aValor[nCont] := nCont
      
    NEXT

    for nCont :=30 to 1 STEP -1
        qout(alltrim(str(aValor[nCont])))

    NEXT

RETURN NIL
