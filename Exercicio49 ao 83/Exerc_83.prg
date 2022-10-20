Function Main()

    Local aNum   := {}
    Local nValor := 0
    Local nCont  := 1
    Local cMsg   := ""
    Local nI     := 10000
    
    while nCont <= 10000

    ACCEPT "Digite um numero: " to nValor
    Aadd(aNum, nValor)
    nCont++

    ENDDO

    for nCont :=10000 to 1 STEP -1
        cMsg := cMsg + aNum[nI]

        nI--


    NEXT nCont
    QOUT(CHR(10) + "Ordem inversa " +CHR(10))
    QOUT(cMsg )
RETURN NIL
