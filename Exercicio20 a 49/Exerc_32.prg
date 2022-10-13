Function Main()

    Local nInicio := 0 
    Local nFim := 0 
    Local ntempo

    QOUT("Colocar horário em formato 24 horas")
    ACCEPT "Digite o horario que foi iniciado o jogo: " to nInicio
    ACCEPT "Digite o horário que foi fimalizado o jogo: " to nFim
    nTempo = Val(nFim) - Val(nInicio)

    if(nTempo <= 24)
        QOUT( " O tempo de jogo foi de: " + AllTrim(STR(nTempo)))
        
    else
        QOUT("O tempo de jogo foi superior ao tempo máximo de 24 horas")
    
    ENDIF

RETURN NIL
