
Function Main()

    Local cMenu := ""

    cMenu := Menu()
    


RETURN NIL

Static Function Menu(cOpcao)

  Local lSair  := .f.
    while !lSair
    
        qout("a. Juros Simples")
        qout("b. Juros Composto")
        qout("c. Juros a partir do VF")
        ACCEPT ("Digite a opcao que deseja executar: ") to cOpcao
        cOpcao := UPPER(cOpcao)

        if cOpcao == "A"
            JuroSim()
            
        elseif cOpcao == "B"
            JuroComp()

        elseif cOpcao == "C"
            Juros()

        else 
            qout("opcao incorreta, tente novamente" + CHR(10))

        ENDIF
        
        WAIT "Pressione ESC para mostrar o valor total, ou qualquer outra tecla para voltar do começo"

            if lastkey() == 27

                lSair := .T.
            ENDIF
    ENDDO

RETURN cOpcao

Static Function JuroSim()
 
    Local nVF     := 0
    Local nVP     := 0
    Local nI      := 0
    Local nN      := 0

    ACCEPT("Digite o valor do capital: ") to nVP 
    nVP := Val(nVP)
    ACCEPT("Digite o valor da taxa em decimal: ") to nI
    nI := Val(nI)
    ACCEPT("Digite o valor do prazo: ") to nN
    nN := Val(nN)
    
    nVF := nVP + (nVP + nI * nN)
    //nVf := nVP + (nVP * Ni * nN)
    qout("o valor atualizado eh de: " + alltrim(str(nVF)))

RETURN nVF

static Function JuroComp()

    Local nVF     := 0
    Local nVP     := 0
    Local nI      := 0
    Local nN      := 0

    ACCEPT("Digite o valor do capital: ") to nVP 
    nVP := Val(nVP)
    ACCEPT("Digite o valor da taxa em decimal: ") to nI
    nI := Val(nI)
    ACCEPT("Digite o valor do prazo: ") to nN
    nN := Val(nN)
    

    nVf := nVP * ((1 + Ni) ^ nN)
    qout("o valor atualizado eh de: " + alltrim(str(round(nVF,2))))

RETURN nVf

static Function  Juros()

    Local nVF     := 0
    Local nVP     := 0
    Local nI      := 0
    Local nN      := 0
    Local nJ      := 0

    ACCEPT("Digite o valor do capital: ") to nVP 
    nVP := Val(nVP)
    ACCEPT("Digite o valor do montante: ") to nVf
    nVf := Val(nVf)
    
    nJ := nVf - nVP
    qout("o valor do juros eh de: " + alltrim(str(nJ)))

RETURN nJ

