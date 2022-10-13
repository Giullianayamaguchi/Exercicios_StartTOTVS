Function Main()

    Local cTeste :=""

    ACCEPT "Digite uma letra: " to cTeste
    cTeste = UPPER(cTeste)

    cTeste = ASC(cTeste)

   if(cTeste = 65).or.(cTeste = 96).or.(cTeste = 73).or.(cTeste = 79).or.(cTeste = 85)
        QOUT("foi digitado uma vogal ")
    
    ELSEIF(cTeste >= 48 .and. cTeste <= 57)
        QOUT("foi digitado um numero")

    elseif (cTeste >= 33 .and. cTeste<=47) .or.(cTeste >=58 .and. cTeste <=64) .or. (cTeste>= 91 .and. cTeste <= 96) .or. (cTeste >= 123 .and. cTeste <= 126)
        QOUT("foi digitado um simbolo")

    else
         QOUT("não foi digitado uma vogal, nem numero e nem simbolo")
    ENDIF
RETURN NIL
