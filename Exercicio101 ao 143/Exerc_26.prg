Function Main()

    Local cPalavra := ""
    Local cLetra   := ""
    
    ACCEPT "Digite uma palavra: " to cPalavra

    cLetra := SubStr(cPalavra, 1, 1)

    qout("a primeira letra eh: " + alltrim(cLetra))

RETURN NIL
