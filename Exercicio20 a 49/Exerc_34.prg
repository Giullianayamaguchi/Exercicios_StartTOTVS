Function Main()

    Local nNum := 0 

    ACCEPT "Digite um n�mero: " to nNum

    if (Val(nNum) > 0)
        QOUT(" o n�mero digitado � positivo ")
    
    elseif (Val(nNum) < 0)
        QOUT(" o n�mero digitado � negativo ")
    
    else 
        QOUT(" o n�mero digitado � igual a zero ")
        
    endif

RETURN NIL
