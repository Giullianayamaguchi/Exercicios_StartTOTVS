FUNCTION Main()

    Local nNum :=0
    Local nCon

    ACCEPT "Digite um número: " to nNum

    nCon := Val(nNum)**2

    QOUT("O quadrado do número é: " + Alltrim(STR(nCon)))

RETURN NIL
