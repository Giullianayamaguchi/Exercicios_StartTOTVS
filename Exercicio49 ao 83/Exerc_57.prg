Function Main()


    Local nMult := 0
    Local nI    := 1
    Local nLim  := 0
    Local nValor:= 0

    ACCEPT "Digite o numero limite: " to nLim
    ACCEPT "Digite o numero multiplo: " to nMult

    QOUT("--- Enquanto ---")
    while (nI <= Val(nLim))
        nValor := hb_randomint(0,99)
        if (nValor % Val(nMult)) == 0
            QOUT("Numero: " + strZero(nValor,3) + " / " + nMult +" = 0 ")
      
        ENDIF
        nI++         
    end

    nLim  := 0
    nValor:= 0

    ACCEPT "Digite o numero limite: " to nLim
    ACCEPT "Digite o numero multiplo: " to nMult

    QOUT("--- Para ---")
    for nI := 1 to Val(nLim)
        nValor := hb_randomint(0,99)
        QOUT(nValor)
        if mod(nValor, Val(nMult)) = 0
            QOUT("Numero: " + strZero(nValor,3) + " / " + nMult +" = 0 ")
                
        ENDIF
        //nI++         
    end


RETURN NIL
