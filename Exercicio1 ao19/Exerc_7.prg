FUNCTION Main()

    Local nValor := 0
    Local nTaxa  := 0
    Local ntempo := 0 
    Local nPrest := 0

    ACCEPT "Digite o valor original da presta��o: " to nValor
    ACCEPT "Digite o valor da taxa di�ria: " to nTaxa
    ACCEPT "Digite quantos dias est� em atraso: " to nTempo

    nPrest := Val(nValor) + (Val(nValor) * (Val(nTaxa)/100)* Val(nTempo))
    QOUT("O valor da pesta��o atualizado � de: " + AllTrim(STR(nPrest)))

RETURN NIL
