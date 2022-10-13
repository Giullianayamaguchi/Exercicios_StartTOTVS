Function Exer08_5()
    Local a := 0 
    Local b := 0 
    Local c := 0 
    Local delta 
    Local x1
    Local x2

    ACCEPT "Digite o valor de a: " to a
    ACCEPT "Digite o valor de b: " to b
    ACCEPT "Digite o valor de c: " to c

    delta = (Val(b) ** 2) - 4 * Val(a)  * Val(c) 
    if (delta <0)
        QOUT("não possúi raizes reais")

    else
        if (delta == 0)
            x1 = -Val(b) /(2 * Val(a))
                QOUT("resultado: delta: " + ALLtrim(STR(delta)) + "n': " + ALLtrim(STR(x1)))

        else
            x1 = (-Val(b) - sqrt(delta))/(2 * Val(a))
            x2 = (-Val(b) + sqrt(delta))/(2 * Val(a))
            QOUT("Resultado: delta" + ALLtrim(STR(delta)) + " n': "+ ALLtrim(STR(x1)) + " n'': " + ALLtrim(STR(x2)))
            
        endif
    endif

Return NIL
