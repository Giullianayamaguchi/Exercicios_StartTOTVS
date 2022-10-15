FUNCTION Main()
    Local nVar_A := 0

    ACCEPT "Digite o número: " to nVar_A
        nVar_A = Val(nVar_A)
        nVar_A = abs(nVar_A)
        QOUT("o Módulo do número informado é: " + alltrim(STR(nVar_A)))


RETURN NIL

