Function StrUtil()
    
    Local cPalavra := ""
    Local cC := ""
    Local nIni := 0
    Local nQtd := 0
    Local cAux := ""
    Local cPeg := ""

    ACCEPT "Digite uma palavra: " to cPalavra

    //tam
    qout("o Tamanho da palavra eh de: " , Tam(cPalavra))

    //Posic
    Accept "Digite o caracter para pesquisar: " to cC
    qout("a posicao da letra eh: " , Posic(cC, cPalavra))

    //copia
    ACCEPT "Digite a posicao inicial: " to nIni
    nIni := Val(nIni)
    ACCEPT "Digite a quantidade de extracao: " to nQtd 
    nQtd := Val(nQtd)
    qout("as letras copiadas sao: ", Copia(nIni,cPalavra,nQtd))   

    //mains
    qout(Maiu(cPalavra))    
    //Minus

    qout(Minu(cPalavra))  
    //InverteStr

    qout(InverteStr(cPalavra)) 
    //del
    ACCEPT "DIGITE UMA POSICAO INICIAL: "to nIni 
    nIni := Val(nIni)
    ACCEPT "DIGITE UMA QUANTIDADE DE EXTRACAO: " TO nQtd
    nQtd := Val(nQtd)
    cPalavra := Del(nIni, nQtd, cPalavra)
    QOUT(cPalavra)     
    //Ins

    ACCEPT "DIGITE UMA POSICAO DE INSERCAO: " TO nIni
    nIni := Val(nIni)
    ACCEPT "DIGITE A SUB-STRING: " TO cAux
    cPalavra := Ins(nIni, cAux, cPalavra) 
    QOUT(cPalavra) 
    //Lfill

    ACCEPT "DIGITE A SUB-STRING PARA ESQUERDA: " TO cAux
    cPalavra := Lfill(cAux, cPalavra) 
    ALERT(cPalavra)   
    //Rfill

    ACCEPT "DIGITE A SUB-STRING PARA A DIREITA:  " TO cAux
    cPalavra := Rfill(cAux, cPalavra) 
    QOUT(cPalavra) 
    //Trim

    cPalavra := Trimm(cPalavra) 
    ALERT(cPalavra)    
    //Subst

    ACCEPT "DIGITE UMA LETRA PARA SUBSTITUIR NA VARIAVEL: " TO  cPeg
    ACCEPT "POR QUAL LETRA QUER SUBSTITUIR NA VARIAVEL? " TO cAux
    cPalavra := Sub(cAux, cPeg, cPalavra) 
    QOUT(cPalavra)      

RETURN NIL

Static Function Tam(cPalavra)

    Local nTam := 0

    nTam := Len(cPalavra)
RETURN nTam

Static Function Posic(cC, cPalavra)

    Local nCont := 0
    Local lAchou := .F.

    IF Empty(cPalavra)
        nCont := 0
        RETURN nCont
    ENDIF

    cC := UPPER(cC)
    FOR nCont := 1 TO Tam(cPalavra)
        IF  cC == UPPER(SUBSTR(cPalavra, nCont, 1))
            lAchou := .T.
            EXIT
        ENDIF
    NEXT

    IF !lAchou
        Return 0
    ENDIF

RETURN nCont

Static Function Copia(nCont,cPalavra, nQtd)

    Local cRet := ""

    IF Empty(cPalavra)
        cRet := "vazio!"
        RETURN cRet
    ENDIF   

    cRet := SUBSTR(cPalavra, nCont, nQtd) 


RETURN cRet

Static Function Maiu(nCont, cPalavra)

    Local cRet := ""

    IF Empty(cPalavra)
        cRet := "vazio!"
        RETURN cRet
    ENDIF
    
    IF (Asc(cPalavra) >= 65 .and. Asc(cPalavra) <= 90 )
        cRet := "LETRÁ JÁ É MAISCULA!"
    ELSE
        FOR nCont := 1 TO Len(cPalavra)
            cRet += Chr(Asc(SUBSTR(cPalavra, nCont,1)) - 32)
        NEXT
    ENDIF

RETURN cRet

Static Function Minu(nCont, cPalavra)

    Local cRet:= ""

     IF Empty(cPalavra)
        cRet := "vazio!"
        RETURN cRet
    ENDIF


     IF (Asc(cPalavra) >= 97 .and. Asc(cPalavra) <= 122)
        cRet := "LETRÁ JÁ É MINUSCULA!"
    ELSE
        FOR nCont := 1 TO Len(cPalavra)
            cRet += Chr(Asc(SUBSTR(cPalavra, nCont,1)) + 32)
        NEXT
    ENDIF

RETURN cRet

Static Function InverteStr(nCont, cPalavra)

    Local cRet := ""

    IF Empty(cPalavra)
        cRet := "vazio!"
        RETURN cRet
    ENDIF

    FOR nCont := Len(cPalavra) TO 1 Step -1 
        cRet += SUBSTR(cPalavra, nCont, 1)
    NEXT
RETURN cRet

STATIC FUNCTION Del(nP,nQ,cP)
    LOCAL cRet := ""
    LOCAL nCont := 0
    LOCAL aStr := {}
    LOCAL nPosic := 0
    LOCAL cDel := ""
    
    IF nP > Tam(cP) .OR. nP < 1
        ALERT("POSIÇÃO INCOMPATIVEL!")
        cRet := cP
        RETURN cRet
    ENDIF

    FOR nCont := 1 TO Tam(cP)
        Aadd(aStr,SUBSTR(cP,nCont,1))
    NEXT

    cDel := SUBSTR(cP, nP,nQ)
    cDel := InverteStr(cDel)

    FOR nCont := 1 TO Tam(cDel)
        nPosic := Posic(SUBSTR(cDel,nCont, 1),cP)
        aDel(aStr,nPosic)
    NEXT

    FOR nCont := 1 TO Len(aStr)
        IF aStr[nCont] != Nil
            cRet += aStr[nCont]
        ENDIF    
    NEXT

RETURN cRet

STATIC FUNCTION Ins(nP, cC ,cP)
    LOCAL cRet := ""
    LOCAL nCont := 0
    
    IF nP > Len(cP) .OR. nP < 1 
        ALERT("POSIÇÃO INCOMPATIVEL!")
        cRet := cP
        RETURN cRet   
    ENDIF

    FOR nCont := 1 TO Len(cP)
        IF nP == nCont 
            cRet += cC
            cRet += SUBSTR(cP, nCont, 1)
        ELSE
            cRet += SUBSTR(cP, nCont, 1)
        ENDIF
    NEXT
RETURN cRet

STATIC FUNCTION Lfill(cC,cP)
    LOCAL cRet := ""

    IF Empty(cP)
        ALERT("VAZIO!")
        cRet := cP
        RETURN cRet   
    ENDIF


    cRet := cC + cP
RETURN cRet

STATIC FUNCTION Rfill(cC,cP)
    LOCAL cRet := ""

    IF Empty(cP)
        ALERT("VAZIO!")
        cRet := cP
        RETURN cRet   
    ENDIF

    cRet := cP + cC 
RETURN cRet

STATIC FUNCTION Trimm(cP)
    LOCAL cRet := ""
    LOCAL nCont := 0

    IF Empty(cP)
        ALERT("VAZIO!")
        cRet := cP
        RETURN cRet   
    ENDIF

    FOR nCont := 1 TO Len(cP)
        IF SUBSTR(cP, nCont, 1) != " " //Asc(SUBSTR(cP, nCont, 1)) != 32
            cRet += SUBSTR(cP,nCont, 1)
        ENDIF
    NEXT
RETURN cRet 

STATIC FUNCTION Sub(cC, cA, cP)
    LOCAL cRet := ""
    LOCAL nCont := 0

    IF Empty(cP)
        ALERT("VAZIO!")
        cRet := cP
        RETURN cRet   
    ENDIF

    FOR nCont := 1 TO Len(cP)
        IF cA == SUBSTR(cP, nCont, 1)
            cRet += cC
        ELSE
            cRet += SUBSTR(cP, nCont, 1)
        ENDIF
    NEXT

RETURN cRet 
