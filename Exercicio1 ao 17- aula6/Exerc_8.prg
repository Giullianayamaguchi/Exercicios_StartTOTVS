Function Main()

    Local nLado  := 0
    Local nLado2 := 0

    ACCEPT ("Digite o tamanho do  primeiro lado (em cm): ") to nLado
    nLado := Val(nLado)

    ACCEPT ("Digite o tamanho do  primeiro lado (em cm): ") to nLado2
    nLado2 := Val(nLado2)

    Area(nLado, nLado2)

RETURN NIL

Static Function Area(nLado, nLado2)
    Local nArea := 0

    nArea := nLado * nLado2
    qout(alltrim(str(nArea)) + "cm²")

RETURN nArea
