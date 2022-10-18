// 1. Ler dois números positivos e apresentar a soma, diferença, produto e quociente entre eles.

Function Main()
    local nVal1, nVal2, nResultado := 0
    local cOperacao := ""
    local lLoop := .t.

    Cabecalho()
    Entrada(nVal1, nVal2)
    Operacao(nVal1, nVal2, lLoop, cOperacao)

    
    ACCEPT "Deseja fazer outra operação? (S/N) " to cOperacao
        if upper(cOperacao) == "N"
            lLoop := .f.
        end if
Return .t.

Static Function Soma(nVal1, nVal2, nResultado)
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

Static Function Cabecalho()
    ? "** CALCULADORA! **"
    ? "Digite um número, a operação, e em seguida outro número!"
    ? "+ para Soma"
    ? "/ para Divisão"
    ? "* para Multiplicação"
    ? "- para Subtração"
    ? ""
Return ""

Static Function Entrada(nVal1, nVal2, cOperacao)
    ACCEPT "Digite o um valor: " to nVal1
    ACCEPT "Escolha a operação a ser executada!: " to cOperacao
    ACCEPT "Digite outro valor: " to nVal2

    nVal1 := Val(nVal1)
    nVal2 := Val(nVal2)
Return nil

Static Function Saida(nVal1, nVal2, nVal3)
    local nResultado := nVal3
    ? "O resaultado da operação executada é", nResultado
Return .t.

Static Function Operacao(nVal1, nVal2, lLoop, cOperacao)
    local nResultado := 0
    while lLoop == .t.
        if cOperacao == "+"
            Soma(nVal1, nVal2)
        elseif cOperacao == "/"
            Divis(nVal1, nVal2)
        elseif cOperacao == "*"
            Multi(nVal1, nVal2)
        elseif cOperacao == "-"
            Sub(nVal1, nVal2)
        end if
    end do
    ? ""
Return nResultado
