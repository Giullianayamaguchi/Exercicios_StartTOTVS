FUNCTION Main()

    Local nNum :=0
    Local nCon

    ACCEPT "Digite um n�mero: " to nNum

    nCon := Val(nNum)**2

    QOUT("O quadrado do n�mero �: " + Alltrim(STR(nCon)))

RETURN NIL
