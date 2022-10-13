Function Main()

    Local nTemp := 0 
    Local nConv 

    ACCEPT "Digite a temperatua em Celsius: " to nTemp
    nConv = (9 * Val(nTemp) + 160) / 5

    QOUT("A temperatura em Fahrenheit é: " + AllTrim(STR(nConv)))

Return Nil
