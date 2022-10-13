FUNCTION Main()

    Local nFahre
    Local nConv

    ACCEPT "Digite o valor da temperatura em Fahrenheit: " TO nFahre
    nConv = (Val(nFahre) - 32) * (5 / 9)
    QOUT("A temperaturaem Fahrenheit é: " + AllTrim(STR(nConv)))
RETURN NIL
