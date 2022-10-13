Function Main()
    Local nNum_1 := 0 
    Local nNum_2 := 0
    Local nNum_3 := 0
    Local nNum_4 := 0

    ACCEPT "Digite um número: " to nNum_1
    ACCEPT "Digite um número: " to nNum_2
    ACCEPT "Digite um número: " to nNum_3
    ACCEPT "Digite um número: " to nNum_4

    if(Val(nNum_1) % 2 ==0 ).and. (Val(nNum_1) % 3 ==0)
        QOUT("o valor digitado" +nNum_1 + " é divisível por 2 e 3")
    else
        QOUT("o valor digitado" + nNum_1 + " é não divisível por 2 e 3")
    ENDIF

    if(Val(nNum_2) % 2 ==0 ).and. (Val(nNum_2) % 3 ==0)
        QOUT("o valor digitado" + nNum_2 + " é divisível por 2 e 3")
    else
        QOUT("o valor digitado" + nNum_2 + " é não divisível por 2 e 3")
    ENDIF

    if(Val(nNum_3) % 2 ==0 ).and. (Val(nNum_3) % 3 ==0)
        QOUT("o valor digitado: "+ nNum_3 + " é divisível por 2 e 3")
    else
        QOUT("o valor digitado" + nNum_3 + " é não divisível por 2 e 3")
    ENDIF

    if(Val(nNum_4) % 2 ==0 ).and. (Val(nNum_4) % 3 ==0)
        QOUT("o valor digitado" + nNum_4 + " é divisível por 2 e 3")
    else
        QOUT("o valor digitado" + nNum_4 +  " é não divisível por 2 e 3")
    ENDIF

RETURN NIL
