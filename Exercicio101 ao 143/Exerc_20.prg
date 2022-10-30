Function Main()

    Local aLetra   := ARRAY(50)
    Local nCont    := 0 
    Local nEscolha := 0
    Local cC       := ""
    Local cMsg     := ""

    aLetra := RandomizeLetra(aLetra)

    if Empty(aLetra)
        qout("Algo deu errado, Vetor vazio")
    ENDIF

    While nEscolha != 5
        qout("1. Listar o conteudo completo do vetor")
        qout("2. Pesquisar caracter no vetor e mostrar todas suas ocorencias")
        qout("3. Pesquisar caracter no vetor e mostrar primeira ocorencia")
        qout("4. Pesquisar caracter no vetor e mostrar ultima ocorencia")
        qout("5. Parar o programa")
        ACCEPT "Digite sua escolha: " to nEscolha
        nEscolha := Val(nEscolha)

        if nEscolha ==1
        cMsg := Listar(aLetra)
        qout(cMsg)

        elseif nEscolha == 2
        ACCEPT "Digite uma letra para pesquisar: " to cC
            cC := SUBSTR(cC,1,1)
            cC := Upper(cC)
            cMsg := BUSCALETRA(cC, aLetra)
            qout(cMsg)
        
        elseif nEscolha == 3
        ACCEPT "Digite uma letra para pesquisar: " to cC
            cC := SUBSTR(cC,1,1)
            cC := Upper(cC)
            cMsg := BuscaUltima(cC, aLetra)
            qout(cMsg)
        
        elseif nEscolha == 4
        ACCEPT "Digite uma letra para pesquisar: " to cC
            cC := SUBSTR(cC,1,1)
            cC := Upper(cC)
            cMsg := BUSCAPRIMEIRA(cC, aLetra)
             qout(cMsg)
        
        elseif nEscolha == 5
            qout("Saindo...")
            Exit

        else
            qout("Opcao invalida, tente novamente")
            loop
        ENDIF
    ENDDO


RETURN NIL

STATIC FUNCTION RandomizeLetra(aLetra)
    LOCAL nCont := 0
    Local nAux  := 0

    FOR nCont := 1 TO 50
        nAux := CHR(hb_Randomint(65,90))
        aLetra[nCont] := nAux


    NEXT
RETURN aLetra

Static Function Listar(aLetra)

    Local nCont := 0
    Local cRet  := ""

    for nCont := 1 to 50
        cRet += aLetra[nCont] + chr(10)
    NEXT

RETURN cRet

STATIC FUNCTION BUSCALETRA(cC, aLetra)
    LOCAL cRet := ""
    LOCAL nO := 0
    LOCAL nCont := 0

    FOR nCont := 1 TO 50
        IF cC == aLetra[nCont]
            cRet += "Posição " + ALLTRIM(STR(nCont)) 
            nO++
        ENDIF
    NEXT

    IF EMPTY(cRet)
        cRet := "NÃO EXISTE ESTÁ LETRA PARA ESTE VETOR PREENCHIDO!"
    ELSE
        cRet += "OCORRENCIAS " + ALLTRIM(STR(nO))
    ENDIF
RETURN cRet

Static Function BuscaUltima(cC, aLetra)

    LOCAL cRet := ""
    LOCAL nO := 0
    LOCAL nCont := 0

    FOR nCont := 1 TO 50
        IF cC == aLetra[nCont]
            cRet := "Ultima Posição " + ALLTRIM(STR(nCont)) 
            nO++
        ENDIF
    NEXT

    IF EMPTY(cRet)
        cRet := "NÃO EXISTE ESTÁ LETRA PARA ESTE VETOR PREENCHIDO!"
    ELSE
        cRet += "OCORRENCIAS " + ALLTRIM(STR(nO))
    ENDIF
RETURN cRet

STATIC FUNCTION BUSCAPRIMEIRA(cC, aLetra)
    LOCAL cRet := ""
    LOCAL nCont := 0
    LOCAL nO := 0

    FOR nCont := 1 TO 50
        IF cC == aLetra[nCont]
            cRet := "Primeira Posição " + ALLTRIM(STR(nCont))
            EXIT
        ENDIF
    NEXT

    FOR nCont := 1 TO 50
        IF cC == aLetra[nCont]
            nO++
        ENDIF
    NEXT  

    IF EMPTY(cRet)
        cRet := "NÃO EXISTE ESTÁ LETRA PARA ESTE VETOR PREENCHIDO!"
    ELSE
        cRet += "OCORRENCIAS " + ALLTRIM(STR(nO))
    ENDIF
RETURN cRet
