function main()

    local nNota := 0
    local nMedia := 0
    local nI := 0
    local aMedia := {}

    aMedia := checaMed(nNota)

    nI = len(aMedia)

    nMedia := fazMedia(aMedia)

    QOUT("Media das notas: " + AllTrim(str(nMedia)))
    QOUT("Maior nota: " + Alltrim(str(aMedia[nI])))
    QOUT("Menor nota: " + AllTrim(str(aMedia[1])))


return NIL


function checaMed (nNota)

    local cOpt := ""
    local lVal := .T.
    local aMed := {}

    while lVal

        ACCEPT "Digite a nota: " to nNota
        nNota = val(nNota)

        if (nNota < 0 .or. nNota > 10)

            QOUT( "DIGITE UMA NOTA VALIDA!")
            loop

        else

            Aadd(aMed, nNota)
            
        endif

        ACCEPT "Deseja continuar? (Y/N) " to cOpt
        cOpt := UPPER(cOpt)

        if cOpt == "Y"

            loop
        
        elseif cOpt == "N"

            lVal = .F.

        else

            QOUT( "ERRO")
            loop

        ENDIF

    enddo

    ASORT(aMed)


return aMed


function fazMedia (aMedia)

    local nCount := 0
    local nSoma := 0
    local nMedia := 0
    local nI := 1
    local nDiv := len(aMedia)

    for nCount := 1 to len(aMedia)

        nSoma += aMedia[nI]

        nI++

    next nCount

    nMedia = nSoma / nDiv

return nMedia
