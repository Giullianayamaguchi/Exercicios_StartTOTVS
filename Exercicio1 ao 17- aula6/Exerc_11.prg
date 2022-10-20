Function Main()

    Local nSalario  := 0
    Local nReajuste := 0
    
    ACCEPT "Digite o valor do salario atual: " to nSalario
    nSalario := Val(nSalario)
    ACCEPT "Digite a porcentagem do reajuste: " to nReajuste
    nReajuste := Val(nReajuste)

    Reajuste(nSalario, nReajuste)

RETURN NIL

Static Function Reajuste(nSalario, nReajuste)

    Local nAtualiza := 0

    nAtualiza := nSalario + (nSalario * (nReajuste / 100))

    qout("o valor do salario com o rejaute eh de: R$ " + AllTrim(STR(nAtualiza)))


RETURN nAtualiza
