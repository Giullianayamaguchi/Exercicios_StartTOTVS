Function Main()

    Local nNum :=0

    nNum := Valores()
    QOUT( nNum)


RETURN NIL


static Function Valores()

    Local nCont := 0
    Local nSoma := 0

    For nCont := 1 to 100
    nSoma += nCont
    NEXT

RETURN nSoma
