Function Main()

    Local nI := 0
    Local nValor :=0

    QOUT("--- Para ---")
    for nI := 0 to 50 
        nValor := random()% 10+89
        
        QOUT("Numero: " + strZero(nValor,3))

    NEXT

    QOUT("--- enquanto ---")

    nI := 0
    while nI <= 49
        nValor := random()% 10+89

        QOUT("Numero" + strzero(nValor,3))
    
        nI++
    ENDDO

RETURN NIL
