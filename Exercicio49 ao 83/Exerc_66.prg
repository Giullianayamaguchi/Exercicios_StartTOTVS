function Main()

    Local nTaxad := 0
    Local nTaxD := 0
    Local lSair    := .f.
    Local cOpcao   := ""
    Local nTaxa    := 0
    Local nProd    := 0

    While !lSair

        ACCEPT "Digite A para acrescimo, ou D para decrescimo: " to cOpcao

          cOpcao := UPPER(cOpcao)

        if cOpcao == "A"

            ACCEPT "Digite o valor da taxa: " to nTaxa
            ACCEPT "Digite o valor do produto: " to nProd

            nTaxad := (1 + (val(nTaxa) / 100)) * val(nProd)

            

        elseif cOpcao == "D"

            ACCEPT "Digite o valor da taxa: " to nTaxa
            ACCEPT "Digite o valor do produto: " to nProd

            nTaxD := (1 - (val(nTaxa) / 100)) * val(nProd)

            

        endif

        WAIT "Pressione ESC para mostrar o valor total, ou qualquer outra tecla para voltar do começo"

        if lastkey() == 27

            lSair := .T.

        endif

    ENDDO

    if cOpcao = "A"

        QOUT("O valor atualizado do produto e de: " + alltrim(str(nTaxad)))

    else

        QOUT("O valor atualizado do produto e de: " + alltrim(str(nTaxD)))

    endif

RETURN Nil
