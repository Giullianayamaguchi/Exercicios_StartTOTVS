Function Main()

    Local aNum   := ARRAY(10)
    Local nCont := 0

    For nCont :=1 to 10
        aNum[nCont] := nCont
        qout(alltrim(str(aNum[nCont])))

    NEXT
RETURN NIL
