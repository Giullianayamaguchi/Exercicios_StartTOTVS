Function Main()
    Local nNum_1 := 0 
    Local nNum_2 := 0
    Local nNum_3 := 0
    Local nNum_4 := 0

    ACCEPT "Digite um n�mero: " to nNum_1
    ACCEPT "Digite um n�mero: " to nNum_2
    ACCEPT "Digite um n�mero: " to nNum_3
    ACCEPT "Digite um n�mero: " to nNum_4

    if(Val(nNum_1) % 2 ==0 ).and. (Val(nNum_1) % 3 ==0)
        QOUT("o valor digitado" +nNum_1 + " � divis�vel por 2 e 3")
    else
        QOUT("o valor digitado" + nNum_1 + " � n�o divis�vel por 2 e 3")
    ENDIF

    if(Val(nNum_2) % 2 ==0 ).and. (Val(nNum_2) % 3 ==0)
        QOUT("o valor digitado" + nNum_2 + " � divis�vel por 2 e 3")
    else
        QOUT("o valor digitado" + nNum_2 + " � n�o divis�vel por 2 e 3")
    ENDIF

    if(Val(nNum_3) % 2 ==0 ).and. (Val(nNum_3) % 3 ==0)
        QOUT("o valor digitado: "+ nNum_3 + " � divis�vel por 2 e 3")
    else
        QOUT("o valor digitado" + nNum_3 + " � n�o divis�vel por 2 e 3")
    ENDIF

    if(Val(nNum_4) % 2 ==0 ).and. (Val(nNum_4) % 3 ==0)
        QOUT("o valor digitado" + nNum_4 + " � divis�vel por 2 e 3")
    else
        QOUT("o valor digitado" + nNum_4 +  " � n�o divis�vel por 2 e 3")
    ENDIF

RETURN NIL
