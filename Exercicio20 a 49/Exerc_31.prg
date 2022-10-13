FUNCTION Main()

    Local cNome := ""
    Local cSexo :=""

    ACCEPT "Digite o seu nome: " to cNome
    ACCEPT "Digite o sexo('F para feminino, e M para masculino'): " to cSexo
    cSexo = SubStr(cSexo, 1, 1)
    cSexo = UPPER(cSexo)
    


    if(cSexo == "M")
        QOUT("ILmos. Sr. " + AllTrim(cNome))

    ELSEIF (cSexo == "F")
        QOUT("Ilma. Sra " + ALLtrim(cNome))

    else 
        QOUT("Sexo incorreto, Favor digite um Sexo válido")
    ENDIF

RETURN NIL
