Function Main()
    Local nNum := 0

     ACCEPT "Digite um n�mero: " to nNum

    if(Val(nNum) % 2 ==0)
        QOUT("O n�mero digitado � par")
    else
        QOUT("o Numero digitado � impar")
    ENDIF

RETURN NIL
