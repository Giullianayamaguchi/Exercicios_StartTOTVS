Function Main()

    Local nVal1, nVal2 := 0
    Local cOperacao := ""
    Local lLoop := .t.

    Cabecalho()


RETURN Nil

Static Function Cabecalho()
        ? "** CALCULADORA! **"
        ? "Digite um número, a operação, e em seguida outro número!"
        ? "S para Soma"
        ? "D para Divisão"
        ? "M para Multiplicação"
        ? "Sub para Subtração"
        
RETURN 


Static Function Soma(nVal1, nVal2)
    local nVal3
    nVal3 := nVal1 + nVal2
    ? "A soma dos valores é: ", ltrim(str(nVal3)), "."
Return nVal3

Static Function Sub(nVal1, nVal2)
    local nVal3
    nVal3 := nVal1 - nVal2
    ? "A diferença entre os valores é: ", ltrim(str(nVal3)), "."
Return nVal3

Static Function Multi(nVal1, nVal2)
    local nVal3
    nVal3 := nVal1 * nVal2
    ? "O produto dos valores é: ", ltrim(str(nVal3)), "."
Return nVal3

Static Function Divis(nVal1, nVal2)
    local nVal3
    nVal3 := nVal1 / nVal2
    ? "O quociente dos valores é: ", ltrim(str(nVal3)), "."
Return nVal3
