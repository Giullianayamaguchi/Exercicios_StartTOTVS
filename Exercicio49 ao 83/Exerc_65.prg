Function Main()

    Local cNome  := ""
    Local cSenha := ""
    Local cConf  := ""
    Local lSair  := .f.
    Local lRet   := .f.

    while lSair
        ACCEPT "Digite o userName (no minimo 5 caracteres): " to cNome

        if (len(cNome) <= 5)
            QOUT("nome de usuario incorreta, tente novamente")
            loop
        else 
            lSair := .t.
        ENDIF
    END
    lSair := .f.

    while !lSair
        ACCEPT "Digite uma senha: " to cSenha

        if (len(cSenha) >= 6) 

           if (lRet := verifica(cSenha)) == .f.
                QOUT("Senha incorreta, verifique se a senha possi 1 letra maiuscula, 1 digito e 1 simbolo") 
                loop
           ENDIF
        else
            QOUT("Senha incorreta, verifique se a senha possi mais de 6 caracteres")    
            Loop
        ENDIF
        ACCEPT "Digite a senha novamente: " to cConf
        
        if (cConf == cSenha)
            QOUT("senha correta, ususario cadastrado com sucesso")
            lSair := .t.
        else 
            QOUT("senhas diferentes, favor tentar novamente")
            loop
        ENDIF
    ENDDO
RETURN Nil

static Function verifica(cSenha)

    Local lRetorno := .f.
    Local nCont    := 0
    Local aPossui :={"", "", ""}

    for nCont := 1 to len(cSenha)
    
        if asc(SubStr(cSenha, nCont, 1)) >= 48 .and. asc(SubStr(cSenha, nCont, 1)) <= 57
            aPossui[1] := "ok"
        ENDIF

        if asc(SubStr(cSenha, nCont, 1)) >= 65 .and. asc(SubStr(cSenha, nCont, 1)) <= 90
            aPossui[2] := "ok"
        ENDIF

        if (asc(SubStr(cSenha, nCont, 1)) >= 33 .and. asc(SubStr(cSenha, nCont, 1)) <= 47) .or.(asc(SubStr(cSenha, nCont, 1)) >=58 .and. asc(SubStr(cSenha, nCont, 1)) <=64) .or. (asc(SubStr(cSenha, nCont, 1)) >= 91 .and. asc(SubStr(cSenha, nCont, 1)) <= 96) .or. (asc(SubStr(cSenha, nCont, 1)) >= 123 .and. asc(SubStr(cSenha, nCont, 1)) <= 126)
            aPossui[3] := "ok"
       ENDIF
    NEXT

    if aPossui[1] =="ok" .and. aPossui[2] == "ok" .and. aPossui[3] == "ok"
        lRetorno := .t.
    ENDIF
RETURN lRetorno
