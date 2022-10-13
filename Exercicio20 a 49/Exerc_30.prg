Function Main()

    Local nNum := 0 
    
    ACCEPT "Digite um numero: " to nNum

    if (Val(nNum) >=1) .and. (Val(nNum) <=9)
        QOUT("o numero digitado esta na faixa permitida")
    else 
        QOUT("O numero digitado esta fora da faixa permitida")

    ENDIF

RETURN NIL
