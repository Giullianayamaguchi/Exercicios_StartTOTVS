Function Main()
    
    Local nI := 0
    //Local n1 := 100
    QOUT("--- Para ---")
    for nI := 100 to 0 step -1
        QOUT("Numero: " + strZero(nI,3))
    NEXT

    nI := 100
    QOUT("--- Repita ---")
    while nI  >= 0
        QOUT("Numero: " + strZero(nI,3))
        nI--
        Loop

    end


RETURN .t.
