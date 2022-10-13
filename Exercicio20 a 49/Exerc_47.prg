Function Main()

    Local nNum 
    Local nChute := 0
    Local nTent := 0

    nNum = Random()% 100 + 1
    while nChute != nNum

        ACCEPT"Digite um numer (de 1 a 100): " to nChute
        nChute = val(nChute)
    
        if(nChute == nNum)
            QOUT("Parabens, voce acertou")
            QOUT("o total de erro foi de: " + alltrim(str(nTent)))

        elseif (nChute > nNum)
            QOUT("o valor digitado é maior, tente novamente")
            nTent +=1

        else
            QOUT("o valor digitado é baixo, tente novamente")
            nTent +=1

        ENDIF

    ENDDO

RETURN NIL
