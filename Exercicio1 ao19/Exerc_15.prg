FUNCTION Main()

    Local nVar_A :=0
    Local nVar_B :=0
    Local nVar_C :=0
    Local nConta

    ACCEPT "Digite o valor do primeiro número: " to nVar_A
    ACCEPT "Digite o valor do segundo número: " to nVar_B
    ACCEPT "Digite o valor do terceiro número: " to nVar_C

    nConta := (Val(nVar_A) + Val(nVar_B) + Val(nVar_C))^2
    QOUT("O quadrado da soma dos tres numeros e igual a: " + ALLTrim(STR(nConta)))

Return NIL
