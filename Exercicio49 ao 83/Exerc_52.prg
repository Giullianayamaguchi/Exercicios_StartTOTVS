Function Main()
    
    Local nI := 0
    Local nValor := 0
    QOUT("--- Para ---" + CHR(10))

    for nI := 1 to 50
        nValor := random()% 10 + 89
        QOUT("Numero: " + strZero(nValor,3))
    
    NEXT

    nI :=0

    QOUT("--- Enquanto ---")
    while (nI <=50)

    nValor := random()% 10 + 89
    QOUT("Numero: " + strZero(nValor,3))
    
    nI++
    end

     nI :=0

    QOUT("--- Repita ---")
    while (nI <=50)

    nValor := random()% 10 + 89
    QOUT("Numero: " + strZero(nValor,3))
    
    nI++
        Loop
    end


RETURN NIL
