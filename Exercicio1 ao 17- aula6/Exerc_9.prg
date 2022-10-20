Function Main()

    Local nNum := 0

    ACCEPT ("Digite um numero: ") to nNum
    nNum := Val(nNum)

    Sucessor(nNum)
    Antecessor(nNum)
Return NIL

Static Function Sucessor(nNum)

    Local nSuce := 0

    nSuce := nNum +1
     qout("o Sucessor de " + alltrim(str(nNum)) + " eh: " + alltrim(str(nSuce)))
RETURN nSuce


Static function Antecessor(nNum)

    Local nAnte := 0

    nAnte := nNum - 1

    qout("o antecessor de " + alltrim(str(nNum)) + " eh: " + alltrim(str(nAnte)))
RETURN nAnte
