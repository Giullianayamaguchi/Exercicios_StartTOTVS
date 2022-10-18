Function Main()
    Local nCont  :=0
    Local nValor :=0

    for nCont := 1 to 10
        if (nCont % 2) ==0
            nValor := nValor + nCont
            QOUT(alltrim(str(nValor)))
        ENDIF
    end
RETURN Nil
