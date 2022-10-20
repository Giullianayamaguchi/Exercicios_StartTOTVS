Function Main()

    Local nMult := 0
    Local nResu := 0
    Local nLim  := 0
    Local nNum  := 0

    ACCEPT "Digite o valor do limite: " to nLim
    ACCEPT "Digite o numero multiplo: " to nNum
    for nMult := 1 to Val(nLim)
    nResu = nMult * Val(nNum)
    QOUT(alltrim(str(nResu)))
    end

    nMult := 0
    nLim  := 0

    ACCEPT "Digite o valor do limite: " to nLim
    ACCEPT "Digite o numero multiplo: " to nNum

    while nMult < Val(nLim)
    nResu = nMult * Val(nNum)
    QOUT(alltrim(str(nResu)))

    nMult++
    end
    
RETURN NIL
