Function Main()

    Local nA :=0
    Local nB :=0
    Local nC :=0
    Local nD :=0
    Local nE := 0

    Local nM_1 :=0
    Local nM_2 :=0
    Local nM_3 :=0
    Local nM_4 :=0
    
    Local nN_1 :=0
    Local nN_2 :=0
    Local nN_3 :=0
    Local nN_4 :=0
    


    ACCEPT "Informe o dado a: " TO nA
    ACCEPT "Informe o dado b: " TO nB
    ACCEPT "Informe o dado c: " TO nC
    ACCEPT "Informe o dado d: " TO nD
    ACCEPT "Informe o dado e: " TO nE

    nA := val(nA)
    nB := val(nB)
    nC := val(nC)
    nD := val(nD) 
    nE := val(nE) 


    nM_1 := MAX(nA, nB)
    nM_2 := MAX(nM_1, nC)
    nM_3 := MAX(nM_2, nD)
    nM_4 := MAX(nM_3, nE)

    nN_1:= MIN(nA, nB)
    nN_2 := MIN(nN_1, nC)
    nN_3 := MIN(nN_2, nD)
    nN_4 := MIN(nN_3, nE)

    QOUT("Maior: " + alltrim(str(nM_4)))
    QOUT("Menor: " + alltrim(str(nN_4)))

RETURN NIL
