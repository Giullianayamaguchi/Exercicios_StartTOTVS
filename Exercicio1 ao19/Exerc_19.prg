FUNCTION Main()
    Local nVar_A :=0
    Local nMod 

    ACCEPT "Digite o n�mero: " to nVar_A

    If(Val(nVar_A) < 0)
        nMod = Val(nVar_A) * (-1)
        QOUT("o M�dulo do n�mermo informado �: " + alltrim(STR(nMod)))

    elseif (Val(nVar_A) > 0) 
        nMod = Val(nVar_A)
        QOUT("o M�dulo do n�mero informado �: " + alltrim(STR(nMod)))

    ENDIF

RETURN NIL
