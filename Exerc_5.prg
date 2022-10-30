Function Main()

    Local aNum   := array(30)
    Local nCont := 0

    For nCont :=1 to 30
     aNum[nCont] := nCont
        qout(alltrim(str(aNum[nCont])))

    NEXT
RETURN NIL
