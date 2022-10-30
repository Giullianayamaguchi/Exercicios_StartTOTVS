Function Main()

    Local cSenha := ""


    ACCEPT "Digite a senha: " to cSenha
    Encrypt(cSenha)


RETURN NIL

Static Function Encrypt(cSenha)

    Local cRet := ""
    Local cAsc :=""
    Local nCont
    Local nSen := 0

    FOR nCont = 1 TO Len(CSenha) 
        nSen := hb_RandomInt(1,90)
        cAsc := CHR(nSen)
        cRet+= cAsc
    NEXT
    qout("a senha criptografada ficou:  " + cRet)
RETURN  cRet

