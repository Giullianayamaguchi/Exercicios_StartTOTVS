FUNCTION main()

    Local nRaio :=0
    Local nAlt :=0
    Local nVol 

    ACCEPT "Digite o raio da lata: " TO nRaio
    ACCEPT "Digite a altura da lata: " to nAlt

    nVol := 3.14159 *(Val(nRaio) * Val(nRaio)) * Val(nAlt) 

    QOUT("O volume é: " + AllTrim(STR(nVol)))

RETURN NIL
