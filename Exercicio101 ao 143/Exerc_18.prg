Function Main()

    Local aDia := {31,59,,90,120, 151, ,181, 212, 142, 273, 304, 334, 365}
    Local nAno := 0
    Local nMes := 0

    ACCEPT ("Digite o dia: ") TO nAno

    if (nAno % 4 ==0 .and. nAno %100 != 0) .or. nAno %400 ==0 
        vetorBi(nDia)

    else
    
    ENDIF



RETURN NIL

Static Function VetorBi(nDia)

    Local nCont := 0

    For nCont := 2 to Len(nDia)

    nDia[nCont] += 1 

    NEXT

RETURN nDia
