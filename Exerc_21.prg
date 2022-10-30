Function Main()

    Local aVetor := ARRAY (12)

    cMsg := VerficaVetor()


RETURN NIL


static Function VerficaVetor(aVetor)

    Local nCont  := 0
    Local nCont2 := 0
    Local cAux   := ""
    Local lExiste := .f.
    Local cRet := ""
    Local cAux := ""
    FOR nCont := 1 to 12

        cAux := (hb_randomint(97,122))
        aVetor[nCont] := cAux
        for nCont2 := 1 to 12
            if cAux == aVetor[nCont2]
                lExiste := .t.
                exit 
            ENDIF
        NEXT
        if !(lExiste)
            aVetor[nCont] := cAux
            cRet += aVetor[nCont]
        else 
            nCont--
        ENDIF
    lExiste := .f.
    NEXT


RETURN cRet
