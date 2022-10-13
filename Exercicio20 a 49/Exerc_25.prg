Function Main()
    Local nNum := 0

     ACCEPT "Digite um número: " to nNum

    if(Val(nNum) % 2 ==0)
        QOUT("O número digitado é par")
    else
        QOUT("o Numero digitado é impar")
    ENDIF

RETURN NIL
