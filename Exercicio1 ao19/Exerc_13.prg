FUNCTION Main()
    Local nReal := 0
    Local nCota  :=0
    Local nConve 

    ACCEPT "Digite o valor em reais dispo�vel: " to nReal
    ACCEPT "Digite o valor de cota��o do dolar: " to nCota

    nConve := Val(nReal) / Val(nCota)

    QOUT("o valor convertido para dolar e de: " + ALLTRIM(STR(nConve)))
    
RETURN NIL
