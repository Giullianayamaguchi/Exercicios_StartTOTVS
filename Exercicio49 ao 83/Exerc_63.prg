Function Main()

    Local nNotas  := 0
    Local nCont   := 0
    Local nMedia  := 0
    Local nTotal  := 0

    while nCont < 4

        ACCEPT "Digite uma nota (entre 0 e 10): " to nNotas

        if(Val(nNotas) >=0 .and. Val(nNotas) <=10)
            nMedia += Val(nNotas)   
            nTotal := nMedia / 4   
         
        else
            QOUT("Nota invalida, digite novamente entre 0 e 10")
            nCont--
            loop
        ENDIF
    nCont++

    END

        if (nTotal >= 7)
            QOUT("O aluno foi aprovado na primeira chamada, com a media de: " + AllTrim(str(nTotal)))
        else
           
            while Val(nNotas) <> 0
            ACCEPT "Digite a nota do exame: " to nNotas
                if (Val(nNotas) >=0 .and. Val(nNotas) <=10)
                nMedia += Val(nNotas)
                nTotal := nMedia / 5
                    if (nTotal >= 5)
                        QOUT("O Aluno foi aprovado na segunda chamada, com a media de: " + AllTrim(str(nTotal)))
                    else
                        QOUT("O aluno foi rejeitado na primeira e segunda chamada, com a media de: " + AllTrim(str(nTotal)))
                        BREAK
                    ENDIF
                ENDIF
            ENDDO
        ENDIF
       
RETURN NIL
