Function Main()
    Local nCont := 0
    Local cMedalha := ""

    While cMedalha <> "F"
        ACCEPT "Digite a medalha: (B = Bronze; P = Prata; O = Ouro; F = Fim): " to cMedalha 
        cMedalha := UPPER(cMedalha)
            if(cMedalha == "B" .or. cMedalha == "P" .or. cMedalha == "O")
                nCont++
            else 
                QOUT("Tipo de medalha incorreto")
            ENDIF
    ENDDO

    QOUT("a quantidade de metalhas foi: ", AllTrim((str(nCont))))
    
RETURN NIL
