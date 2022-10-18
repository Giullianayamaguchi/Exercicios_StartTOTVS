Function Main()

    Local nMult := 0
    Local nResu := 0

    for nMult := 1 to 100
    nResu = nMult * 3
    QOUT(alltrim(str(nResu)))
    end
RETURN NIL
