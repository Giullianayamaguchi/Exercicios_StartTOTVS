FUNCTION Main()
    Local nReal := 0
    Local nCota  :=0
    Local nConve 

    ACCEPT "Digite o valor em reais dispoível: " to nReal
    ACCEPT "Digite o valor de cotação do dolar: " to nCota

    nConve := Val(nReal) / Val(nCota)

    QOUT("o valor convertido para dolar e de: " + ALLTRIM(STR(nConve)))
    
RETURN NIL
