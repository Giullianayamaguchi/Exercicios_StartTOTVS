Function Main()

    Local aValor := array(10)
    Local nCont := 0
    Local nNum := 0

    For nCont :=1 to 10
        
        aValor[nCont] := nCont
    NEXT

    for nCont :=10 to 1 STEP -1
    qout(alltrim(str(aValor[nCont])))


    NEXT



RETURN NIL
