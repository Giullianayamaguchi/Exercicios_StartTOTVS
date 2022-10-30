Function Main()


    local aM := {}
    local nI, nJ

    aM := array(10)
    for nI := 1 to 10
        aM[nI] := array(3)
        for nJ := 1 to 3
            aM[nI][nJ] := nI + nJ
        next nJ
    next nI

    for nI := 1 to 10
        QOUT(hb_valtoexp(aM[nI]))
    next nI

    QOUT("**")
    QOUT("")
    wait
Return nil
