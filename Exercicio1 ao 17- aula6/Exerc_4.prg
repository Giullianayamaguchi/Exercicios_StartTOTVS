Function Main()

    Local nA:= 0
    Local nB:= 0

    ACCEPT("Digite o valor da variavel A: ") to nA 
    ACCEPT("Digite o valor da variavel b: ") to nB

    Troca(nA, nB)
RETURN NIL


static Function Troca(nA, nB)

    Local nAux := 0

    nAux := nA
    nA := nB
    nB := nAux

    QOUT(nA)
    QOUT(nB)


RETURN ""
