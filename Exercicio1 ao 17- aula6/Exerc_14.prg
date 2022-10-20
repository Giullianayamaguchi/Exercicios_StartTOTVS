
Function Main()

    Local cMenu := ""

    cMenu := Menu()
    


RETURN NIL

Static Function Menu(cOpcao)

  Local lSair  := .f.
    while !lSair
    
        qout("a. Valor Futuro (FV)")
        qout("b. valor presente (PV)")
        ACCEPT ("Digite a opcao que deseja executar: ") to cOpcao
        cOpcao := UPPER(cOpcao)

        if cOpcao == "A"
            FV()
            
        elseif cOpcao == "B"
            PV()

        else 
            qout("opcao incorreta, tente novamente" + CHR(10))

        ENDIF
        
        WAIT "Pressione ESC para mostrar o valor total, ou qualquer outra tecla para voltar do começo"

            if lastkey() == 27

                lSair := .T.
            ENDIF
    ENDDO

RETURN cOpcao

Static Function FV()
 
    Local nVF     := 0
    Local nVP     := 0
    Local nI      := 0
    Local nN      := 0

    ACCEPT("Digite o valor da taxa em decimal: ") to nI
    nI := Val(nI)

    ACCEPT("Digite o valor do prazo: ") to nN
    nN := Val(nN)

    ACCEPT("Digite o valor presente: ") to nVP 
    nVP := Val(nVP)
    
    nVF := nVP * ((1 + nI)^ nN)
    qout("o valor atualizado eh de: " + alltrim(str(round(nVF,2))))

RETURN nVF

static Function PV()
    Local nVF     := 0
    Local nVP     := 0
    Local nI      := 0
    Local nN      := 0

    ACCEPT("Digite o valor da taxa em decimal: ") to nI
    nI := Val(nI)

    ACCEPT("Digite o valor do prazo: ") to nN
    nN := Val(nN)

    ACCEPT("Digite o valor futuro: ") to nVF 
    nVF := Val(nVF)
    
    nVP := nVF / ((1 + nI)^ nN)
    qout("o valor atualizado eh de: " + alltrim(str(round(nVP,2))))

RETURN nVP

