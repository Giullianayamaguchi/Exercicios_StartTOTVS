FUNCTION Main()

    Local aVetor := {}
    Local nCont := 0
    Local cMsg := ""
    Local nV := 1

    WHILE nV != 0 
        nCont++

        ACCEPT ("Digite o" + ALLTRIM(STR(nCont)) + "º numero:  ou 0 para parar de popular o vetor") to nV
        nV := Val(nV)

        IF nV != 0
            AADD(aVetor, nV)
        ENDIF   

    ENDDO       

    cMsg := VISAOVETOR(aVetor)
    qout(cMsg)

RETURN NIL

STATIC FUNCTION VISAOVETOR(aV)
    Local cRet := ""    
    Local nCont := 0

    IF Len(aV) == 0
        cRet := "Não há valores neste vetor!"
        RETURN cRet
    ENDIF

    FOR nCont := 1 TO Len(aV)
        cRet += ALLTRIM(STR(aV[nCont]))
    NEXT
RETURN cRet
