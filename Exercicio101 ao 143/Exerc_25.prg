Function Main()

    LOCAL aV := ARRAY(100)
    LOCAL cMsg := 0
    LOCAL nV := 0

    aV := POPULAVETOR(aV)
    ACCEPT "DIGITE O VALOR (1 a 100): " TO nV
    nV := Val(nV)

    IF nV < 1 .or. nV > 100
        QOUT("VALOR ERRADO!")
    ENDIF

    cMsg := PesquisaBin(aV, nV)
    cMsg += PesquisaSeq(aV, nV)    
    QOUT(cMsg)


RETURN NIL


Static Function POPULAVETOR(aV)

     LOCAL nCont := 0

    FOR nCont := 1 TO 100
       aV[nCont] := nCont 
    NEXT
RETURN aV

STATIC FUNCTION PesquisaBin(aV, nV)
    LOCAL cRet := ""
    LOCAL lAchou := .F.
    LOCAL nIni := 0
    LOCAL nFim := 0
    LOCAL nMeio := 0 
    LOCAL nTent := 0

    nFim := Len(aV)
    WHILE nIni <= nFim .and. !(lAchou)
        nIni++
        nTent++

        nMeio := (nIni + nFim) / 2

        IF aV[nMeio] == nV 
            lAchou := .T.
            cRet := "(BINARIO) O VALOR " + ALLTRIM(STR(nV)) + " FOI ENCONTRADO APOS  " + ALLTRIM(STR(nTent)) + " TENTATIVAS"
        ELSE
            IF (aV[nMeio] > nV)
                nFim := nMeio - 1
            ELSE
                nIni := nMeio + 1
            ENDIF
        ENDIF
    ENDDO

RETURN cRet

STATIC FUNCTION PesquisaSeq(aV, nV)
    LOCAL cRet := ""
    LOCAL nCont := 0
    
    FOR nCont := 1 TO 100
        IF nV == aV[nCont]
            cRet := "(SEQUENCIAL) O VALOR " + ALLTRIM(STR(nV)) + " FOI ENCONTRADO APOS  " + ALLTRIM(STR(nCont)) + " TENTATIVAS"
            EXIT
        ENDIF
    NEXT

RETURN cRet
