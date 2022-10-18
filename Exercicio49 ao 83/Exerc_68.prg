Function Main()

    Local nNota  := 0
    Local nSoma  := 0
    Local nAluno := 0
    Local nMedia := 0

    While nAluno < 15

        ACCEPT"Digite a nota do aluno (de 1 a 10): " to nNota
        nNota := Val(nNota)
        if( nNota >= 1 .and. nNota <= 10  )
            nAluno++
            nSoma := nSoma + nNota
        else 
            Qout("Nota inválida, digite uma nota de 1 a 10 " )
        ENDIF
    ENDDO

    nMedia = (nSoma /15)
    Qout("\n A media da sala foi de: " + AllTrim(str(nMedia)))

Return NIL
