Function Main()

    Local nNum_1 := 0
    Local nNum_2 := 0 
    Local nResul 

    ACCEPT "Digite o primeiro n�mero: " to nNum_1
    nNum_1 = Val(nNum_1)

    ACCEPT "Digite o segundo n�mero: " to nNum_2
    nNum_2 = Val(nNum_2)

    if(nNum_1 > nNum_2)
        nResul = nNum_1 - nNum_2
    ENDIF

    if (nNum_1 < nNum_2)
        nResul = nNum_2 - nNum_1
    
    ENDIF
    
    QOUT("A diferen�a eh: " + ALLtrim(STR(nResul)))

RETURN NIL
