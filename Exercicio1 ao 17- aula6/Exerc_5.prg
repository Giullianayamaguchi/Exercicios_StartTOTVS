Function Main()

    Local nDiv   := 0
    Local nQuo   := 0


    ACCEPT("Digite o valor do divisor: ") to nDiv 
    nDiv := Val(nDiv)
    ACCEPT("Digite o valor da variavel b: ") to nQuo
    nQuo := Val(nQuo)

    Divisao(nQuo, nDiv)

RETURN NIL


static Function Divisao(nQuo, nDiv)

    local nResul := 0

    nResul := nDiv / nQuo 
    QOUT(alltrim(str(nResul)))


RETURN nResul
