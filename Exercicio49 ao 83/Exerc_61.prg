Function Main()

    Local nNum   := 1
    Local nSoma  := 0
    Local nCont  := 0
    
    
    QOUT("--- Para ---")
    for nCont := 1 to 2
        ACCEPT "Digite um numero ou 0 para parar o programa: " to nNum
    
        if Val(nNum) <> 0
            nSoma += Val(nNum)
            QOUT(alltrim(str(nSoma)))
       
        else 
            QOUT("O VALOR FINAL É: " +alltrim(str(nSoma)))
            exit
        ENDIF
    nCont--
   // loop
    end

    nNum   := 1
    nSoma  := 0

    QOUT("--- Enquanto ---")
    while nNum != 0
           
        ACCEPT "Digite um numero ou 0 para parar o programa: " to nNum
        nNum := Val(nNum)
        nSoma += nNum
        QOUT(alltrim(str(nSoma)))
    ENDDO
    QOUT("O VALOR FINAL eh: " +alltrim(str(nSoma)))



RETURN NIL
