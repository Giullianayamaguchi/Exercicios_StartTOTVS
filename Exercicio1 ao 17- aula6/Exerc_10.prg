Function Main()

    Local nCont  := 0
    Local nValor := 0
    Local nNum   := 0

    for nCont := 1 to 3
        ACCEPT "Digite um numero: " to nNum
        nNum := Val(nNum)
        nValor += nNum
    NEXT
    Media(nValor)

RETURN NIL

Static Function Media(nValor)

    Local nMedia := 0

    nMedia := nValor /3

    qout("a media das tres nota eh de: " + alltrim(str(nMedia)))
    
RETURN nMedia
