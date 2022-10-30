Function Main()

    Local cBin     := ""
    Local cDeci    := ""
    Local nEscolha := 1

    while nEscolha != 0
        qout("0. Parar o programa")
        qout("1. conversão de um número binário em decimal")
        qout("2. um número decimal em binário.")
        ACCEPT ("Digite sua escolha: ") to nEscolha

        nEscolha := Val(nEscolha)

        if nEscolha == 0
            qout("Saindo...")
            exit

        elseif nEscolha == 1
            cDeci := Decimal()
            
        elseif nEscolha == 2
            cBin := Binario()
        else
            qout("Valor incorreto, tente novamente")
            loop
        ENDIF
    ENDDO

RETURN NIL

Static Function Decimal()

    Local cBin := ""
    Local nDecimal := 0
    Local nQuo := 0
    Local nResto := 0

    ACCEPT "Insira o decimal: " to nDecimal
    nDecimal := VAL(nDecimal)
    nQuo := nDecimal / 2
    nQuo := NAOREDONDA(nQuo)
    nResto := nQuo % 2
    nResto := NAOREDONDA(nResto)    
    cBin += ALLTRIM(STR(nResto))

    WHILE nQuo >= 1
        nResto := nQuo % 2
        nResto := NAOREDONDA(nResto)
        cBin += ALLTRIM(STR(nResto))
        nQuo := nQuo / 2
    ENDDO
    qout(cBin)

RETURN cBin

Static Function Binario()

    LOCAL nBin := 0
    LOCAL nDecimal := 0
    LOCAL cBin := ""
    LOCAL nCont := 0
    LOCAL nCont2 := 0
    LOCAL nAux := 0
    LOCAL cMsg := ""

    ACCEPT "dIGITE O BINARIO: " TO nBin
    nBin := VAL(nBin)
    cBin := ALLTRIM(STR(nBin))
    nCont2 := Len(cBin) -1     

    FOR nCont := 1  TO Len(cBin)
        nAux := VAL(SUBSTR(cBin, nCont, 1))
        nDecimal += nAux * (2 ^ nCont2)
        nCont2--
    NEXT
    cMsg += cBin + " = " + ALLTRIM(STR(nDecimal)) + " " +Chr(nDecimal)
    qout(cMsg)

    

RETURN cMsg

STATIC FUNCTION NAOREDONDA(nQ)
    LOCAL cMsg := ""
    LOCAL cAux := ""
    LOCAL nRet := 0
    LOCAL nCont := 0

    cMsg := ALLTRIM(STR(nQ))

    FOR nCont := 1 TO Len(cMsg)
        IF SUBSTR(cMsg, nCont, 1) != "." 
            cAux += SUBSTR(cMsg, nCont, 1)
        ELSE
            EXIT
        ENDIF
    NEXT 
    nRet := VAL(cAux)
RETURN nRet

