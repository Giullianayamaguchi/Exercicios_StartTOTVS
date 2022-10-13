Function Main()

    Local nNum := 0 

    ACCEPT "Digite um número: " to nNum

    if (Val(nNum) > 0)
        QOUT(" o número digitado é positivo ")
    
    elseif (Val(nNum) < 0)
        QOUT(" o número digitado é negativo ")
    
    else 
        QOUT(" o número digitado é igual a zero ")
        
    endif

RETURN NIL
