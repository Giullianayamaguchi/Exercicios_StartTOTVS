FUNCTION Main()
    Local nVar_A :=0
    Local nVar_B :=0
     Local nConta

    ACCEPT "Digite o valor do primeiro n�mero: " to nVar_A
    ACCEPT"Digite o valor do segundo n�mero: " to nVar_B

    nConta := (Val(nVar_A) + Val(nVar_B)) * ((Val(nVar_A)**2) - (Val(nVar_B)**2))
    QOUT("O produto da soma pela diferença do quadrado de dois valores s�o: " + ALLTrim(STR(nConta)))

RETURN NIL
