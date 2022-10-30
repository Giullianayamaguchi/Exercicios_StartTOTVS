Function Main()
    
    local aA := {{0,1,2},{3,4,5},{6,7,8}}
    local nI , nJ, nDigP , nDigS , nDif

    nDigP := aA[1][1] + aA[2][2] + aA[3][3] 
    nDigS := aA[1][3] + aA[2][2] + aA[3][1] 
    nDif := nDigP - nDigS

    QOUT(hb_valtoexp(aA[1]))
    QOUT(hb_valtoexp(aA[2]))
    QOUT(hb_valtoexp(aA[3]))

    QOUT("diagonal principal " + allTrim(str(nDigP)))
    QOUT("diagonal secundaria " + allTrim(str(nDigS)))
    QOUT("diferenca " + allTrim(str(nDif)))

    QOUT("**")
    QOUT("")
    wait
Return nil
