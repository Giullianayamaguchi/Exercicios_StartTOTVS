Function Main()

Local nA:=0
Local nB:=0
Local nC:=0
Local nD:=0
Local nM:=0
Local nMM:=0
Local nMMM:=0
Local nN := 0
Local nNN :=0
Local nNNN :=0


ACCEPT "Informe o dado a: " TO nA
ACCEPT "Informe o dado b: " TO nB
ACCEPT "Informe o dado c: " TO nC
ACCEPT "Informe o dado c: " TO nD


nA := val(nA)
nB := val(nB)
nC := val(nC)
Nd := val(nD) 

nM := MAX(nA, nB)
nMM := MAX(nM, nC)
nMMM := MAX(nMM, nD)

nN:= MIN(nA, nB)
nNN := MIN(nN, nC)
nNNN := MIN(nNN, nD)

QOUT("Maior: " + alltrim(str(nMMM)))
QOUT("Menor: " + alltrim(str(nNNN)))

RETURN NIL
