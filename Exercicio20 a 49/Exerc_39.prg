function main()

    Local nDia := 0
    Local nMes := 0
    Local nAno := 0
    Local dDat 
    Local Dia_Ano := 0
    Local nBix := .F.

    ACCEPT "Digite o dia: " TO nDia
    ACCEPT "Digite o Mes: " TO nMes
    ACCEPT "Digite o Ano: " TO nAno

    dDat := CToD(nAno + "/" + nMes + "/" + nDia)

    nBix := IsLeap(dDat)

    Dia_Ano := DoY(dDat)

    dDat := DMY(dDat)

    if nBix == .T.
        QOUT("A data " + dDat + " Corresponde ao " + Alltrim(Str(Dia_Ano)) + "°/366 dia do ano!")

    else
        QOUT("A data " + dDat + " Corresponde ao " + Alltrim(Str(Dia_Ano)) + "°/365 dia do ano!")

    end if

RETURN nil
