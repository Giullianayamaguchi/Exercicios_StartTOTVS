Function Main()

    local aA := {{"A","B","C"},{"D","E","F"},{"G","H","I"}}
    local aB := {}

    aAdd(aB, aA[1])
    aAdd(aB, aA[2])
    aAdd(aB, aA[3])

    QOUT(hb_valtoexp(aB[1]))
    QOUT(hb_valtoexp(aB[2]))
    QOUT(hb_valtoexp(aB[3]))


Return NIL

