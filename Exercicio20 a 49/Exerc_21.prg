Function Main()
     Local nNum :=0

    ACCEPT "Digite um número: " to nNum
    nNum = Val(nNum)

    if(nNum > 0)
        nNum = nNum * (-1)
    ENDIF

    QOUT("O numero negativo e: " + Alltrim(STR(nNum)))

RETURN NIL
