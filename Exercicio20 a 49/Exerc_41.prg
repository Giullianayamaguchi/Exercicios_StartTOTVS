Function Main()

Local nA:=0, nB:=0, nC:=0, nM:=0, nMM:=0

ACCEPT "Informe o dado a: " TO nA
ACCEPT "Informe o dado b: " TO nB
ACCEPT "Informe o dado c: " TO nC

nA := val(nA)
nB := val(nB)
nC := val(nC) 
nM := MAX(nA, nB)
nMM := MAX(nM, nC)
QOUT(nMM)

RETURN NIL
