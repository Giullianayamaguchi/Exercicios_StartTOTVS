FUNCTION Main()
    Local nVar_A :=0
    Local nVar_B :=0
    Local nVar_C :=0
    Local nConta

    ACCEPT "Digite o valor do primeiro n�mero: " to nVar_A
    ACCEPT "Digite o valor do segundo n�mero: " to nVar_B
    ACCEPT "Digite o valor do terceiro n�mero: " to nVar_C

    nConta := (Val(nVar_A)**2) + (Val(nVar_B)**2) + (Val(nVar_C)**2)
    QOUT("A soma dos quadrados dos tres numeros e igual a: " + ALLTrim(STR(nConta)))

Return NIL
