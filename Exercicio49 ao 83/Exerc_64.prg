FUNCTION Main()

    Local cNome := ""
    Local cSexo :=""

    ACCEPT "Digite o seu nome: " to cNome
    ACCEPT "Digite o sexo('F para feminino, e M para masculino'): " to cSexo
    cSexo = SubStr(cSexo, 1, 1)
    cSexo = UPPER(cSexo)
    


    if(cSexo == "M") .and. !(cNome == "")
        QOUT("ILmos. Sr. " + AllTrim(cNome))

    ELSEIF (cSexo == "F") .and. !(cNome == "")
        QOUT("Ilma. Sra " + ALLtrim(cNome))

    else 
        QOUT("ERRO informarcoes incorretas, favores revisar e inserir novamente")
        
    ENDIF

RETURN NIL
