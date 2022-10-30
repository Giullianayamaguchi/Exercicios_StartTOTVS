Function Main()

    Local aVetor := ARRAY (12)
    Local nAux := 0
    Local nCont := 0
    Local nCont2 := 0

    aVetor := VerficaVetor(aVetor)

    for nCont := 1 to 12
        for nCont2 := nCont + 1 to 12
            if aVetor[nCont2] < aVetor[nCont]
                nAux := aVetor[nCont]
                aVetor[nCont] := aVetor[nCont2]
                aVetor[nCont2] := nAux
            ENDIF
        NEXT
     qout(aVetor[nCont])
    NEXT
RETURN NIL


static Function VerficaVetor(aVetor)

    Local nCont  := 0
    Local nCont2 := 0
    Local nAux   := 0
    Local lExiste := .f.

    FOR nCont := 1 to 12

        nAux := hb_randomint(1,50)

        for nCont2 := 1 to nCont
            if nAux == aVetor[nCont2]
                lExiste := .t.
                exit 
            ENDIF
        NEXT
        if !(lExiste)
            aVetor[nCont] := nAux
         //   qout(aVetor[nCont])
        else 
            nCont--
        ENDIF
        lExiste := .f.
    NEXT
        

RETURN aVetor
