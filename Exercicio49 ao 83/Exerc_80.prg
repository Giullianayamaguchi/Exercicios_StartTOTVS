Function Main()

    Local nCont  := 0
    Local nValor := 0
    Local cSexo  := ""
    Local aAltu  := {-9999999, 999999999}
    Local nMasc  := 0
    Local nFem   := 0 
    Local nMediaF:= 0
    Local nMedia := 0

    for nCont := 1 to 5
        ACCEPT "Digite o sexo da pessoa (F - Feminino ou M - Masculino): " to cSexo
        cSexo := Upper(SubStr(cSexo,1,1))

        ACCEPT "Digite a altura: " to nValor
        nValor :=Val(nValor)
        if(nValor <=0)
            qout("Digite uma altura positiva")
            nCont--
            loop
        else
            if(cSexo =="F")
                nFem++
                nMediaF += nValor

            ELSEIF (cSexo == "M")
                
                nMasc++
            else
                qout("o sexo informado está incorreto")
                nCont--
                loop
            ENDIF   
        ENDIF
        if(nValor > aAltu[1])
            aAltu[1] := nValor 
        else 
            if(nValor < aAltu[2])
            aAltu[2] := nValor

            ENDIF
        ENDIF
    NEXT

    nMedia := nMediaf / nFem

    qout("a media da altura das mulheres eh de: " + AllTrim((str(nMedia))))
    qout("a quantidade de homens eh de: " + AllTrim(str(nMasc)))
    qout("A menor altura: " + alltrim(str(aAltu[2])))
    qout("a maior altura: " + alltrim(str(aAltu[1])))
RETURN NIL
