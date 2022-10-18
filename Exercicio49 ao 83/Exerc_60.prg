Function Main()

    Local nCont  :=0
    Local nValor :=0
    Local nLim   :=0
    Local cTipo  :=""

    ACCEPT "Digite a quantidade de numeros: " to nLim
    ACCEPT "Digite se gostaria de fazer a conta com número impares (I) ou pares (P)" to cTipo
    cTipo = UPPER(cTipo)

    for nCont := 1 to Val(nLim)

        if cTipo =="P" .and. (nCont % 2) ==0
            nValor := nValor + nCont
            QOUT(alltrim(str(nValor)))

        elseif cTipo =="I" .and. (nCont % 2) !=0
            nValor := nValor + nCont
            QOUT(alltrim(str(nValor)))
        ENDIF
    end


RETURN NIL
