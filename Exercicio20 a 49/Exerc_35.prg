Function Main()

    Local cName := "Giu"
    Local cSennha :="Senha"
    Local cNome 
    Local ctenta

    ACCEPT "Digite o login: " to cNome
    ACCEPT "Digite a senha: " to cTenta

    if ((cNome = cName).or.(cTenta = cSennha))
        QOUT(" Acesso permitido")

    else 
        QOUT("Usuário ou senha inválido")
    
    ENDIF


 RETURN NIL
