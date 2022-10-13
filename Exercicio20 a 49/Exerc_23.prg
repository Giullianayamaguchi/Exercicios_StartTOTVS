Function Exer04_5()

    Local nNota_1 :=0
    Local nNota_2 :=0
    Local nNota_3 :=0
    Local nNota_4 :=0
    Local nMedia 

    ACCEPT "Digite a primeira nota: " to nNota_1
    ACCEPT "Digite a segunda nota: " to nNota_2
    ACCEPT "Digite a terceita nota: " to nNota_3
    ACCEPT "Digite a quarta nota: " to nNota_4

    nMedia = (Val(nNota_1) + Val(nNota_2) + Val(nNota_3) + Val(nNota_4)) / 4

    if (nMedia >= 5)
        QOUT("A média final foi de: " + ALLtrim(STR(nMedia)) + ", o aluno está aprovado")

    else 
        QOUT("A média final foi de: " + ALLtrim(STR(nMedia)) + ", o aluno está reprovado")
    ENDIF


Return NIL
