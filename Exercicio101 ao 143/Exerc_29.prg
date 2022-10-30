Function Main()

    Local nNumCpf  := 1
    Local cConfirma:= ""
    Local nValid   := 0
    Local nCont    := 0

    while nNumCpf <> 0
    ACCEPT "Digite o CPF (sem caracteres especiais) ou sair para parar o programa: " TO nNumCpf

    if Len(nNumCPF) <> 11
        QOUT("Cpf Incorreto")

    else
         //   nNumCpf := SubStr(nNumCpf, 1, nCont)
        Mascara(nNumCpf)
        ACCEPT ("confirme o CPF(S/N): ") to cConfirma
        cConfirma := Upper(cConfirma)

        if cConfirma == "S"
            QOUT("CONFIRMADO")
             //validar 1 digito   
            FOR nCont := 1 to 9

               nValid +=  Val((SubStr(nNumCpf, nCont, 1))) * (11 - nCont)
            
            NEXT 

            nValid := nValid * 10

            if nValid % 11  ==  Val((SubStr(nNumCpf, 10, 1)))

            //validar 2 digito
            nValid:=0
                 FOR nCont := 1 to 10

               nValid +=  Val((SubStr(nNumCpf, nCont, 1))) * (12 - nCont)
               NEXT
                nValid := nValid * 10
                if nValid % 11  ==  Val((SubStr(nNumCpf, 11, 1)))
                qout("CPF valido")

                else
                    qout("erro, segundo digito invalido")
                ENDIF
        
            else
                qout("erro, primeiro digito invalido ")
            ENDIF
            exit
        elseif cConfirma == "N"     
            nNumCpf  := 1    
            LOOP
        
        
        ENDIF
    ENDIF
    ENDDO
RETURN NIL

static Function Mascara(nNumCpf)

    Local cRet := ""
    Local nCont := 0
    Local nCont2 := 1


    for nCont := 1 to 14
        if nCont == 4 
            cRet += "."
        ENDIF
        IF  nCont == 8 
            cRet += "."
        ENDIF
        if nCont == 12
            cRet += "-"

        ENDIF
        if nCont != 4 .and. nCont != 8 .and. nCont != 12
            cRet += SubStr(nNumCpf, nCont2, 1)
            nCont2++
        ENDIF
    NEXT
    QOUT(cRet)

RETURN cRet
