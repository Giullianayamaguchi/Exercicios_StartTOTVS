Function Main()

    Local aNum := {"Domingo", "Segunda", "Terca", "Quarta", "Quinta", "Sexta", "Sabado"}
    Local nDia := 0

    ACCEPT "Digite um numero: " to nDia
    if nDia >= 1 .and. nDia<= 7
        nDia :=Val(nDia)
        AScan(aNum, nDia)

        qout(aNum[nDia])

    else 
         qout("o dia inserido nao existe")

    ENDIF
RETURN NIL
