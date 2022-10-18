Function Main()

    Local nNum  := 0
    Local nFato := 1
    Local nCont := 1

    ACCEPT "Digite um numero: " to nNum

    while nCont < Val(nNum) 
        for nCont := 1 to Val(nNum) 
            nfato *= nCont
        NEXT
    ENDDO

    QOUT(nFato)
    

RETURN NIL
