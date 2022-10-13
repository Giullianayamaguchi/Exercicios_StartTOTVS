FUNCTION Main()
    LOCAL nCont := 0
    LOCAL aArray := ARRAY(4)

    FOR nCont := 1 TO 4
        ACCEPT "DIGITE O " + ALLTRIM(STR(nCont)) + "º VALOR: " to aArray[nCont]
        aArray[nCont] = Val(aArray[nCont])
    NEXT     
 
    qout("Resposta: ")
    FOR nCont := 1 TO 4

        IF aArray[nCont] % 3 == 0 .and. aArray[nCont] % 2 == 0
            qout("O valor " + ALLTRIM(STR(aArray[nCont])) + " eh divisivel por 2 e 3")

        ELSEIF aArray[nCont] % 3 == 0
            qout( "O valor " + ALLTRIM(STR(aArray[nCont])) + " eh divisivel por 3")
            
        ELSEIF aArray[nCont] % 2 == 0
            qout("O valor " + ALLTRIM(STR(aArray[nCont])) + " eh divisivel por 2") 

        ENDIF
    NEXT

RETURN NIL
