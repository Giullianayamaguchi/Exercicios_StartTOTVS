Function Main()

    Local nNum := 0

    ACCEPT "Digite um numero: " to nNum
    nNum := Val(nNum)

    ehPositivo(nNum)

RETURN NIL

static Function ehPositivo(nNum)
     
    Local lRel := .f.

    while !lRel
        IF (nNum >= 0)
            qout("o numero: " + alltrim(str(nNum)) + " eh positivo")
            lRel := .t.
        elseif (nNum < 0)
            qout("o Numero: " + alltrim(str(nNum)) + " NAO eh positivo")
            
        ENDIF
    ENDDO


RETURN lRel := .t.
