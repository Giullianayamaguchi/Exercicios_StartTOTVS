Function Main()

    local aA := {1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10}
    local aB := {1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10}
    local aC := {1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10}
    local aM := {}

        aAdd(aM, aA)
        aAdd(aM, aB)
        aAdd(aM, aC)

    QOUT(hb_valtoexp(aM))

Return NIL
