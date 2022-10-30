Function Main()
    Local cExer := ""

    cExer := Letra()

RETURN NIL


Static Function Letra()

    Local cLetra :=""
    Local nCont  := 0
    Local aTeste := ARRAY(50)

    for nCont := 1 to 50
        cLetra := hb_randomint(65, 90)
        aTeste[nCont] := CHR(cLetra)
    
        qout(alltrim(str(nCont)) + " " + alltrim(aTeste[nCont]))
    NEXT

RETURN aTeste
