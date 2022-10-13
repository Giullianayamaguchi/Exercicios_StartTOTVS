FUNCTION Main()
    Local nVar_A :=0
    Local nMod 

    ACCEPT "Digite o número: " to nVar_A

    If(Val(nVar_A) < 0)
        nMod = Val(nVar_A) * (-1)
        QOUT("o Módulo do númermo informado é: " + alltrim(STR(nMod)))

    elseif (Val(nVar_A) > 0) 
        nMod = Val(nVar_A)
        QOUT("o Módulo do número informado é: " + alltrim(STR(nMod)))

    ENDIF

RETURN NIL
