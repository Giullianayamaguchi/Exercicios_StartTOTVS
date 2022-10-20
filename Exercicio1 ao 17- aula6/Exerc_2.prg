Function Main()

    Local nPrest :=0

    nPrest := Prestacao()





RETURN NIL



static Function Prestacao()

    Local nValor := 0
    Local nTaxa  :=0
    Local nAtual

    accept"Digite o valor da prestacao: " to nValor
    nValor := Val(nValor)
    Accept "Digite o valor da taxa " to nTaxa
    nTaxa := val(nTaxa)

    
    nAtual = nValor +(nTaxa * (nTaxa/100))
    Qout("O valor atualizado da prestacao he de: " + alltrim(str(nAtual)))

RETURN nAtual
