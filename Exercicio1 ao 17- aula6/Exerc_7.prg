Function Main()

    Local nNum := 0 
    Local nExp := 0

    ACCEPT ("Digite um Numero: ") to nNum
    nNum := Val(nNum)
    ACCEPT ("Digite o valor do expoente: ") to nExp
    nExp := Val(nExp)

    POT(nNum, nExp)
RETURN NIL


static Function POT(nNum, nExp)

    Local nResult := 0

    nResult := nNum ** nExp

    qout(alltrim(str(nResult)))

RETURN nResult
