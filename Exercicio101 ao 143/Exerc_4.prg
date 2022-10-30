Function Main()

    Local aMes := {31,28,31,30,31,30,31,31,30,31,30,31}
    Local nNum :=0


   ACCEPT "Digite um numero: " to nNum
    nNum :=Val(nNum)

    if nNum >=1 .and. nNum <=12
    AScan(aMes, nNum)

    qout(Alltrim(str(aMes[nNum])))

    else
        qout("Mes incorreto, tente novamente")

    ENDIF
RETURN NIL
