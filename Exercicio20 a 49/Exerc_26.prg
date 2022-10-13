Function Main()
    Local a :=0
    Local b :=0
    Local x

    ACCEPT "Digite o valor de a: " to a
    ACCEPT "Digite o valor de b: " to b

    x = -Val(b) / Val(a)

    QOUT("o resultado da equação é de: " + ALLtrim(STR(x)))

RETURN NIL
