FUNCTION Main()

    Local nDolar := 0
    Local nCota  :=0
    Local nConve 

    ACCEPT "Digite o valor em dolares dispoível: " to nDolar
    ACCEPT "Digite o valor de cotação do dolar: " to nCota

    nConve := Val(nDolar) * Val(nCota)

    QOUT("o valor convertido para reais e de: " + ALLTRIM(STR(nConve)))

RETURN NIL
