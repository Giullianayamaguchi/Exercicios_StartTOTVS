Function Main()

Local nA:=0
Local nB:=0
Local nC:=0
Local nM:=0
Local nMM:=0
Local nN := 0
Local nNN :=0


ACCEPT "Informe o dado a: " TO nA
ACCEPT "Informe o dado b: " TO nB
ACCEPT "Informe o dado c: " TO nC

nA := val(nA)
nB := val(nB)
nC := val(nC) 

nM := MAX(nA, nB)
nMM := MAX(nM, nC)

nN:= MIN(nA, nB)
nNN := MIN(nN, nC)

QOUT("Maior: " + alltrim(str(nMM)))
QOUT("Menor: " + alltrim(str(nNN)))

RETURN NIL
