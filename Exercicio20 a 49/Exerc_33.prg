FUNCTION Main()
     Local fValorHora := 0.0 
     Local fNumerotraba := 0.0 
     Local fHoraExtra := 0.0 
     Local fValor := 0.0 

     ACCEPT "Digite o número de horas trabalhadas no mês: " to fNumerotraba
     ACCEPT "Digite o valor da hora trabalhada: " to fValorHora

     if (Val(fNumerotraba) > 160)
        fHoraExtra = Val(fNumerotraba) - 160
        fValor =(160 * Val(fValorHora)) + (fHoraExtra * (Val(fValorHora) / 2))
        QOUT("O salario será de: " + ALLtrim(STR(fValor)))

    else 
        fValor = Val(fNumerotraba) * Val(fValorHora)
        QOUT("O salario será de: " + ALLtrim(STR(fValor)))

    ENDIF


 RETURN NIL
