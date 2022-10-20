Function Main()

    Local nTam   := 0
    Local nCont  := 0
    Local nTotal := 0
    Local nCapac := 1536

    for nCont := 1 to 2

    ACCEPT "Digite o tamanho do arquivo (em MegaBytes): " to nTam
    nTotal += Val(nTam)

    nCont--

    if (Val(nTam) + nTotal) < nCapac
        nTotal += Val(nTam)
        qout("Arquivo adicionado ")
    else
        qout("o arquivo estourou o limite ")
        exit
    ENDIF
    NEXT


RETURN NIL
