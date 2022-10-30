Function Main()

    LOCAL aVetor := ARRAY(8)
    LOCAL nEscolha := 99
    LOCAL cMsg := ""
    LOCAL nV := 0

    WHILE nEscolha != 0
        qout(chr(10))
        qout("1. Carregar o vetor através da leitura dos valores.")
        qout("2. Exibir o conteúdo do vetor.")
        qout("3. Classificar os valores em ordem crescente. Caso o vetor esteja vazio, informar.")
        qout("4. Classificar os valores em ordem decrescente. Caso o vetor esteja vazio, informar.")
        qout("5. Pesquisar a existência de um valor no vetor. Caso o vetor esteja vazio, informar.")
        qout("6. Informar o somatório dos valores do vetor.")
        qout("7. Informar a média dos valores do vetor.")
        qout("8. Informar o maior e o menor valor do vetor.")
        qout("9. Embaralhar o conteúdo do vetor.")
        qout("10. Informar os valores que se repetem e a quantidade de repetições.")
        qout("0. Para parar o programa")
        qout(chr(10))
        ACCEPT "Digite a escolha: " to nEscolha
        nEscolha := Val(nEscolha)

        IF nEscolha == 0
            exit

        elseif nEscolha == 1
            aVetor := POPULAVETOR(aVetor)

        elseif nEscolha == 2
            cMsg := EXIBAVETOR(aVetor)
            qout(cMsg)

        elseif nEscolha == 3
            cMsg := CRESCENTE(aVetor)
            qout(cMsg)

        elseif nEscolha == 4 
            cMsg := DECRESCENTE(aVetor)
            qout(cMsg)
            
        elseif nEscolha == 5 
            ACCEPT "Digite um valor: " to nV
            nV := Val(nV)
            cMsg := BUSCAVALOR(aVetor, nV)   
            qout(cMsg) 
        
        elseif nEscolha == 6
            cMsg := SOMAVETOR(aVetor)
            qout(cMsg)

        elseif nEscolha == 7
            cMsg :=  MEDIAVETOR(aVetor)
            qout(cMsg)  

        elseif nEscolha == 8
            cMsg :=  Mm(aVetor)
            qout(cMsg)  

        elseif nEscolha == 0
            cMsg :=  Embaralhar(aVetor)
            qout(cMsg) 
            
        elseif nEscolha == 10
            cMsg := Repete(aVetor)
            qout(cMsg) 
        else
            qout("escolha incorreta, tente novamente")
            Loop
        ENDIF
    ENDDO 
RETURN  NIL

STATIC FUNCTION POPULAVETOR(aV)
    LOCAL nCont := 0

    FOR nCont := 1 TO 8
       // aV[nCont] := Val(fwinputbox("digite o valor: ", alltrim(Str(nCont))))
       aV[nCont] := hb_randomint(1,10)
    NEXT
RETURN aV

STATIC FUNCTION EXIBAVETOR(aVetor)
    LOCAL cRet := ""
    LOCAL nCont := 0

    IF aVetor == Nil
        cRet := "VETOR VAZIO!"
        Return cRet
    ENDIF

    FOR nCont := 1 TO 8
        cRet += ALLTRIM(STR(aVetor[nCont]) + CHR(10))
    NEXT
RETURN cRet

STATIC FUNCTION CRESCENTE(aVetor)
    LOCAL cRet := ""
    LOCAL nCont := 0
    LOCAL nCont2 := 0
    LOCAL nAux := 0
    LOCAL aAux := ARRAY(8)

    IF aVetor[1] == Nil
        cRet := "VETOR VAZIO!"
        Return cRet
    ENDIF    

    aAux := ACLONE(aVetor)

    FOR nCont := 1 TO 8
        FOR nCont2 := nCont + 1 TO 8
            IF aAux[nCont2] < aAux[nCont]
                nAux := aAux[nCont]
                aAux[nCont] := aAux[nCont2]
                aAux[nCont2] := nAux
            ENDIF
        NEXT
        cRet += ALLTRIM(STR(aAux[nCont])  + CHR(10)) 
    NEXT

RETURN cRet

STATIC FUNCTION DECRESCENTE(aVetor)
    LOCAL cRet := ""
    LOCAL nCont := 0
    LOCAL nCont2 := 0
    LOCAL nAux := 0
    LOCAL aAux := ARRAY(8)

    IF aVetor[1] == Nil
        cRet := "VETOR VAZIO!"
        Return cRet
    ENDIF    

    aAux := ACLONE(aVetor)

    FOR nCont := 1 TO 8
        FOR nCont2 := nCont + 1 TO 8
            IF aAux[nCont2] > aAux[nCont]
                nAux := aAux[nCont]
                aAux[nCont] := aAux[nCont2]
                aAux[nCont2] := nAux
            ENDIF
        NEXT
        cRet += ALLTRIM(STR(aAux[nCont])  + CHR(10)) 
    NEXT


RETURN cRet

STATIC FUNCTION BUSCAVALOR(aV, nV)
    LOCAL cRet := ""
    LOCAL nCont := 0

    IF aV[1] == Nil
        cRet := "VETOR VAZIO!"
        Return cRet
    ENDIF   

    FOR nCont := 1 TO 8
        IF nV == aV[nCont]
            cRet += "Posição " + alltrim(str(nCont)) + " valor " + alltrim(str(aV[nCont]))
        ENDIF
    NEXT

    IF Empty(cRet)
        cRet := "NÃO EXISTE ESTE VALOR"
    ENDIF
RETURN cRet

STATIC FUNCTION SOMAVETOR(aV)

    LOCAL cRet := ""
    LOCAL nCont := 0
    LOCAL nRet   := 0

    IF aV[1] == Nil
        cRet := "VETOR VAZIO!"
        Return cRet
    ENDIF 

    FOR nCont := 1 to 8
       nRet += aV[nCont] 
    NEXT
    
    cRet := alltrim(str(nRet))
 
RETURN cRet

STATIC FUNCTION MEDIAVETOR(aV)

    LOCAL nM    := 0
    lOCAL cRet  := 0

    IF aV[1] == Nil
        cRet := "VETOR VAZIO!"
        Return cRet
    ENDIF 

    nM := Val(SOMAVETOR(aV))
    nM := nM /8
    cRet := "a Media eh: " + alltrim(str(nM))

RETURN cRet

STATIC FUNCTION Mm(aV)

    Local nMaior := -999999999
    Local nMenor := 9999999999
   LOCAL nCont := 0
    LOCAL cRet := ""

    IF aV[1] == Nil
        cRet := "VETOR VAZIO!"
        Return cRet
    ENDIF  

    FOR nCont := 1 TO 8
        IF aV[nCont] > nMaior
            nMaior := aV[nCont]
        ENDIF
        IF aV[nCont] < nMenor
            nMenor := aV[nCont]
        ENDIF
    NEXT
    cRet += "VALOR MAIOR " + ALLTRIM(STR(nMaior)) 
    cRet += "VALOR MENOR " + ALLTRIM(STR(nMenor))

RETURN cRet

STATIC FUNCTION Embaralhar(aV)

    Local cJafoi := ""
    Local nCont := 0
    LOCAL nAux := 0
    LOCAL nAle := 0
    lOCAL cRet :=""
    Local aClone := array(8)

    IF aV[1] == Nil
        cRet := "VETOR VAZIO!"
        Return cRet
    ENDIF  

    aClone := aclone(aV)
    FOR nCont := 1 TO 8
        nAle := hb_randomint(1,8)
     
        IF !(alltrim(str(nAle)) $ cJafoi)
            cJafoi += "/" + alltrim(str(nAle))
            nAux := aClone[nCont]
            aClone[nCont] := aClone[nAle]
            aClone[nAle] := nAux
        
        else
            nCont--
        ENDIF
    NEXT
    cRet := ExibaVetor(aClone)

RETURN cRet

STATIC FUNCTION Repete(aV)

    Local nCont := 0
    LOCAL nCont2 := 0
    Local nRepete := 0
    Local nV := 0
    Local cRet := ""
    Local cJafoi:= ""

    IF aV[1] == Nil
        cRet := "VETOR VAZIO!"
        Return cRet
    ENDIF  

    FOR nCont := 1 TO 8
        nV := aV[nCont]

        if !(alltrim(str(nV)) $ cJafoi)

            cJafoi += alltrim(str(nV))
            for nCont2 := 1 to 8
                if nV == aV[nCont2]
                    nRepete++
                ENDIF
            NEXT
        if nRepete >1
            cRet := alltrim(str(nV)) +" se repete " + alltrim(str(nRepete))
    
        ENDIF
        nRepete:= 0
    
        ENDIF
    NEXT

    if Empty(cRet)
        qout("nao ha numeros que se repetem no vetor")
        ENDIF
RETURN cRet


