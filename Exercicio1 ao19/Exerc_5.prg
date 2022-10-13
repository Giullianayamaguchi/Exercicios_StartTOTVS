FUNCTION main()

    Local nTemp := 0
    Local nVel  := 0
    Local nDis 
    Local nLit 

    ACCEPT "Digite o tempo gasto na viagem: " to nTemp
    ACCEPT "Digite a velocidade média: " to nVel 
    nDis := Val(nTemp) * Val(nVel)
    nLit := nDis /12

    QOUT("A velocidade média foi de: " + Alltrim(nVel))
    QOUT("O tempo gasto de viagem foi de: " + Alltrim(nTemp))
    QOUT("A Distancia percorrida: " + Alltrim(STR(nDis)))
    QOUT("A quantidade de litros utilizada foi de: " + Alltrim(STR(nLit)))

RETURN NIL
