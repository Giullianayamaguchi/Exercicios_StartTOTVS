Function Main()
    
    Local nValor :=0
    Local nDesc  :=0
    Local nReaj
    Local nDes

    ACCEPT "Digite o valor normal: " to nValor
    ACCEPT "Digite a porcentagem do desconto: " to nDesc

    nDes := val(nValor) * (Val(nDesc) / 100)
    nReaj := Val(nValor) - nDes
    QOUT("O valor reajustado é de: " + ALLtrim(STR(nReaj)))

Return NIL
