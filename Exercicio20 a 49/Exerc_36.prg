Function Main()

    Local cVogal := "" 

    ACCEPT "Digite uma letra: " to cVogal
    cVogal = Upper(cVogal)
    cVogal = asc(cVogal)

    if(cVogal = 65).or.(cVogal = 96).or.(cVogal = 73).or.(cVogal = 79).or.(cVogal = 85)
        QOUT("a letrta digitada eh uma vogal")

    Else 
        QOUT("A letra digitada nao é vogal")

    ENDIF

RETURN NIL
