Function Main()

    Local nMes   := 0
    Local ndia   := 0
    Local nDias  := 0 
    Local nAnoBi := ""

    ACCEPT "Digite o dia: " to nDia
    ACCEPT "Digite o mes: " to nMes
    ACCEPT "O ano e binario: (S- Sim ou N- Nao): " to nAnoBi
    nAnoBi = Upper(nAnoBi)

    if (Val(nMes) = 1)
        nDias = Val(nDia)
        QOUT("a quantidade de dias do ano atù a data insrida eh: " + alltrim(str(nDias)))

    elseif (Val(nMes) = 2)
        nDias = 31 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))
    
    elseif (Val(nMes) = 3)
        if (nAnoBi = "S")
        nDias = 60 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))
        
        elseif (nAnoBi = "N")
        nDias = 59 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))

        else 
        QOUT("Erro, informacoes informadas estao incorretas")

        ENDIF
        
    elseif (Val(nMes) = 4)
        if (nAnoBi = "S") .and. 
        nDias = 91 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))
        
        elseif (nAnoBi = "N")
        nDias = 90 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))

        else 
        QOUT("Erro, informacoes informadas estao incorretas")

        ENDIF

    elseif (Val(nMes) = 5)
        if (nAnoBi = "S")
        nDias = 121 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))
        
        elseif (nAnoBi = "N")
        nDias = 120 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))

        else 
        QOUT("Erro, informacoes informadas estao incorretas")

        ENDIF

    elseif (Val(nMes) = 6)
        
        if (nAnoBi = "S")
        nDias = 152 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))
        
        elseif (nAnoBi = "N")
        nDias = 151 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))

        else 
        QOUT("Erro, informacoes informadas estao incorretas")

        ENDIF

    elseif (Val(nMes) = 7)
        if (nAnoBi = "S")
        nDias = 182 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))
        
        elseif (nAnoBi = "N")
        nDias = 181 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))

        else 
        QOUT("Erro, informacoes informadas estao incorretas")

        ENDIF

    elseif (Val(nMes) = 8)
        if (nAnoBi = "S")
        nDias = 213 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))
        
        elseif (nAnoBi = "N")
        nDias = 212 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))

        else 
        QOUT("Erro, informacoes informadas estao incorretas")

        ENDIF

    elseif (Val(nMes) = 9)
        if (nAnoBi = "S")
        nDias = 244 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))
        
        elseif (nAnoBi = "N")
        nDias = 243 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))

        else 
        QOUT("Erro, informacoes informadas estao incorretas")

        ENDIF

    elseif (Val(nMes) = 10)
        if (nAnoBi = "S")
        nDias = 274 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))
        
        elseif (nAnoBi = "N")
        nDias = 273 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))

        else 
        QOUT("Erro, informacoes informadas estao incorretas ")

        ENDIF

    elseif (Val(nMes) = 11)
        if (nAnoBi = "S")
        nDias = 305 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))
        
        elseif (nAnoBi = "N")
        nDias = 304 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))

        else 
        QOUT("Erro, informacoes informadas estao incorretas")

        ENDIF

    elseif (Val(nMes) = 12)
        if (nAnoBi = "S")
        nDias = 335 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))
        
        elseif (nAnoBi = "N")
        nDias = 334 + Val(nDia)
        QOUT("a quantidade de dias do ano ate a data inserida eh: " + alltrim(str(nDias)))

        else 
        QOUT("Erro, informacoes informadas estao incorretas ")

        ENDIF

    endif

RETURN NIL
