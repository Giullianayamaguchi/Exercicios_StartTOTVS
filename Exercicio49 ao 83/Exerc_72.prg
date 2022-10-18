function main()

    local nNum := 0
    local nCount := 1
    local nI := 1
    local aFib := {}

    nNum := checaNum(nNum)

    aFib := calcFib(nNum)

    for nCount := 1 to nNum

        QOUT("Numero " + Alltrim(str(nI)) + " da sequencia Fibonacci: " + Alltrim(str(aFib[nI])))

        nI++

    next nCount

RETURN NIL

function checaNum(nNum)

    local nVal := 0
    local lVal := .T.

    while lVal

        ACCEPT "Digite um numero a ser fatorado: " to nNum
        nNum := val(nNum)
        nNum := ABS(nNum)

        nVal := ROUND(nNum, 0)

        if nNum <> nVal

            ?
            ? "Digite um numero inteiro!"
            ?
            loop

        else
            
            lVal := .F.

        endif

    enddo

return nVal


function calcFib(nNum)

    local nCount := 1
    local nFib := 2
    local nI := 2
    local aDado := {0, 1}

    for nCount := 1 to nNum

        nFib := aDado[nI] + aDado[nCount]
        Aadd(aDado, nFib)

        nI++

    next nCount

return aDado
