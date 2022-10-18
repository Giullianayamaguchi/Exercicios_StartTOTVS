Function Main()
    
    Local nI := 0
    Local nValor := 0
    QOUT("--- Para ---" + CHR(10))

    for nI := -2 to -1 STEP -1
        nValor := random()% 10 + 89

        if nValor != 80
            QOUT("Numero: " + strZero(nValor,3))

        else 
            exit
        ENDIF
    NEXT

    nI :=0
    nValor := 0

    QOUT("--- Enquanto ---")
    while (nValor != 80)
        nValor := random()% 10 + 89

        if nValor != 80
            QOUT("Numero: " + strZero(nValor,3))

        ENDIF
    nI++
    end

     nI :=0
     nValor := 0

    QOUT("--- Repita ---")
    while (nValor != 80)
        nValor := random()% 10 + 89

        if nValor != 80
            QOUT("Numero: " + strZero(nValor,3))

        ENDIF
    nI++
        Loop
    end


RETURN NIL
