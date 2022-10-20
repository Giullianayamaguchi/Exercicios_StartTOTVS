Function Main()

    Local nNum := 0

    ACCEPT ("Digite um numero: ") to nNum
    nNum := Val(nNum)

    dobro(nNum)

RETURN NIL

Static Function Dobro(nNum)

    Local nResult

    nResult := nNum *2

    qout(alltrim(str(nResult)))
RETURN nResult
