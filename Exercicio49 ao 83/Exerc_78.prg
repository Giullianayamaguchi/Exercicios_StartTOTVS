Function Main()

    Local nCont  := 1
    Local nValor := 0
    Local nValid := 0
    Local nI     := 0

    ACCEPT "Digite um numero: " to nValor
    
    for nCont := 1 to Val(nValor)
    
    if((Val(nValor) % nCont) ==0 )

         nI++
    ENDIF
    NEXT
        if(nI <=2)
            qout("O numero eh primo")

    else
        qout("o Numero nao é primo")
    ENDIF



    
RETURN NIL
