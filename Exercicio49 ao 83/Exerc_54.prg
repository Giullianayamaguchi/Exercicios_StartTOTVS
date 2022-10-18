Function Main()

    Local nCod  := 0
    Local nCarac :=0

    QOUT("--- Enquanto ---")
    for nCod := 32 to 126

        nCarac = CHR(nCod)
        QOUT(AllTrim(str(nCod)) + " - " + nCarac)
    end

   QOUT("--- Enquanto ---")
    while (nCod <= 126)
        nCarac = CHR(nCod)
        QOUT(AllTrim(str(nCod)) + " - " + nCarac)
    
    nCod++
    end


RETURN NIL
