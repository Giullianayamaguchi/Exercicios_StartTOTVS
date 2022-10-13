Function Main()
    
    Local nMes := 1

    ACCEPT "Digite o número do mes (de 1 a 12): " to nmes

    if(Val(nMes) = 1) .or.(Val(nMes) = 3) .or.(Val(nMes) = 5).or.(Val(nMes) = 7) .or.(Val(nMes) = 8).or.(Val(nMes) = 10).or.(Val(nMes) = 12)
        QOUT(" o mes inserido tem 31 dias")

    elseif(Val(nMes) = 2)
        QOUT(" o mes inserido tem 28 dias")
    
    elseif(Val(nMes) = 4).or.(Val(nMes) = 6).or.(Val(nMes) = 9).or.(Val(nMes) = 11)
        QOUT(" o mes inserido tem 30 dias")
    ENDIF


Return NIL
