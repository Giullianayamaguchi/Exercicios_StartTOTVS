Function Main()

    Local nNum  := 0
    Local nCont := 1

    ACCEPT "Digite um numero para calcular a serie a: " to nNum
    qout("--- A ---")

    for nCont := 1 to Val(nNum)
        qout("1 / ", alltrim(str(nCont)))

    next

    qout("--- B ---")
    
    nCont := 1
    ACCEPT "Digite um numero para calcular a serie b: " to nNum

    for nCont := 1 to Val(nNum)
    qout(alltrim(str(nCont)) + " / " + (str(31 - nCont)))

    NEXT

     qout("--- C ---")
    
    nCont := 1
    ACCEPT "Digite um numero para calcular a serie C: " to nNum
    
    for nCont := 1 to Val(nNum)
    qout(alltrim(str(nCont)) + " / " + (str(nCont * 2)))

    NEXT



RETURN NIL
