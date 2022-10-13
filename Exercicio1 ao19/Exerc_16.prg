FUNCTION Main()
    Local nVar_A :=0
    Local nVar_B :=0
     Local nConta

    ACCEPT "Digite o valor do primeiro número: " to nVar_A
    ACCEPT"Digite o valor do segundo número: " to nVar_B

    nConta := (Val(nVar_A) + Val(nVar_B)) * ((Val(nVar_A)**2) - (Val(nVar_B)**2))
    QOUT("O produto da soma pela diferenÃ§a do quadrado de dois valores são: " + ALLTrim(STR(nConta)))

RETURN NIL
