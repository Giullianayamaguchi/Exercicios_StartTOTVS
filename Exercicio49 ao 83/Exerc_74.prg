Function Main()

    Local nNum 
    Local nChute := 0
    Local nTent := 0

    nNum := Random()% 100 + 1
    while nChute != nNum
    QOUT(nNum)
        ACCEPT"Digite um numer (de 1 a 100): " to nChute
        nChute = val(nChute)
    
        if(nChute == nNum)
            QOUT("Parabens, voce acertou")
            QOUT("o total de erro foi de: " + alltrim(str(nTent)))
                if nTent < 5
                    QOUT("Voce eh muito bom acertou em " + alltrim(str(nTent)) + "tentativas.")
                
                elseif nTent >= 5 .and. nTent < 9
                    QOUT("Voce eh bom, acertou em " +  alltrim(str(nTent))  + " tentativas")

                elseif nTent >= 9 .and. nTent < 13
                    QOUT("Voce eh mediano, acertou em " +  alltrim(str(nTent)) + " tentativas")

                elseif nTent >= 13
                    QOUT("Voce eh muito fraco, acertou em "+  alltrim(str(nTent))  + "tentativas")
                ENDIF

        elseif (nChute > nNum)
            QOUT("o valor digitado eh maior, tente novamente")
            nTent +=1

        else
            QOUT("o valor digitado eh baixo, tente novamente")
            nTent +=1

        ENDIF


    ENDDO

RETURN NIL
