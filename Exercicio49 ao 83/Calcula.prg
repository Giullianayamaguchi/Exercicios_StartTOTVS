Function Main()

    Local nVal1, nVal2 := 0
    Local cOperacao := ""
    Local lLoop := .t.

    Cabecalho()


RETURN Nil

Static Function Cabecalho()
        ? "** CALCULADORA! **"
        ? "Digite um n�mero, a opera��o, e em seguida outro n�mero!"
        ? "S para Soma"
        ? "D para Divis�o"
        ? "M para Multiplica��o"
        ? "Sub para Subtra��o"
        
RETURN 


Static Function Soma(nVal1, nVal2)
    local nVal3
    nVal3 := nVal1 + nVal2
    ? "A soma dos valores �: ", ltrim(str(nVal3)), "."
Return nVal3

Static Function Sub(nVal1, nVal2)
    local nVal3
    nVal3 := nVal1 - nVal2
    ? "A diferen�a entre os valores �: ", ltrim(str(nVal3)), "."
Return nVal3

Static Function Multi(nVal1, nVal2)
    local nVal3
    nVal3 := nVal1 * nVal2
    ? "O produto dos valores �: ", ltrim(str(nVal3)), "."
Return nVal3

Static Function Divis(nVal1, nVal2)
    local nVal3
    nVal3 := nVal1 / nVal2
    ? "O quociente dos valores �: ", ltrim(str(nVal3)), "."
Return nVal3
