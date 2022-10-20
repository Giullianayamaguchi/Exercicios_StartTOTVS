Function Main()
    
    Local cMenu := ""

    cMenu := Menu()


RETURN NIL

Static Function Menu()

    Local cOpcao := 0
    Local lSair  := .f.

    while !lSair
    
        qout("a. isLetra(c): informa se o caractere enviado é uma letra.")
        qout("b. isDigito(c): informa se o caractere enviado é um número.")
        qout("c. isSimbolo(c): informa se o caractere enviado é um símbolo.")
        qout("d. toLower(c): converte uma letra maiúscula em minúscula.")
        qout("e. cTroca(a, b): troca os valores entre as variáveis a e b." + chr(10))
        ACCEPT ("Digite a opcao que deseja executar: ") to cOpcao
        cOpcao := UPPER(cOpcao)

        if cOpcao == "A"
            isLetra()

        elseif cOpcao == "B"
            isDigito()

        elseif cOpcao == "C"
           isSimbolo()

        elseif cOpcao == "D"
           toLower()

        elseif cOpcao == "E"
          cTroca()
        else 
            qout("opcao incorreta, tente novamente" + CHR(10))

        ENDIF
        
        WAIT "Pressione ESC para mostrar o valor total, ou qualquer outra tecla para voltar do começo"

            if lastkey() == 27

                lSair := .T.
            ENDIF
    ENDDO



RETURN cOpcao

Static Function isLetra()

    Local cLetra :=""

    ACCEPT "Digite uma letra: " to cLetra 
    cLetra :=UPPER(cLetra)

    if asc(cLetra) >= 65 .and. asc(cLetra) <= 90
        qout("o caractere inserido eh uma letra")

    else 
        qout("o caractere inserido NAO eh uma letra")
    ENDIF

RETURN cLetra

Static Function isDigito()

    Local nNum := 0

    ACCEPT "Digite um numero: " to nNum 

   if asc(nNum) >= 48 .and. asc(nNum) <= 57
        qout("o caractere inserido eh um numero")

    else 
        qout("o caractere inserido NAO eh um numero")
    ENDIF

RETURN nNum

Static Function isSimbolo()

    Local cSimb := 0

    ACCEPT "Digite um simbolo: " to cSimb 

    if (asc(cSimb) >= 33 .and. asc(cSimb) <= 47) .or.(asc(cSimb) >=58 .and. asc(cSimb) <=64) .or. (asc(cSimb) >= 91 .and. asc(cSimb) <= 96) .or. (asc(cSimb) >= 123 .and. asc(cSimb) <= 126)
            qout("o caractere inserido eh um simbolo")

    else 
        qout("o caractere inserido NAO eh um simbolo")
    ENDIF



RETURN cSimb

Static Function toLower()

    Local cLetra := ""

    ACCEPT "Digite uma letra minuscula: " to cLetra 

    if (asc(cLetra) >= 97 .and. asc(cLetra) <= 232) 
        cLetra :=Upper(cLetra)
        qout("o caractere inserido eh uma letra minuscula, ao converter para maiuscula ficou: " + alltrim(cLetra))

    else 
        qout("o caractere inserido NAO eh uma letra minuscula")
    ENDIF


RETURN cLetra


Static Function cTroca()
    Local nAux   := 0
    Local nA     := 0
    Local nB     := 0

    ACCEPT("Digite o valor da variavel A: ") to nA 
    ACCEPT("Digite o valor da variavel b: ") to nB

    nAux := nA
    nA := nB
    nB := nAux

    QOUT(nA)
    QOUT(nB)

RETURN ""
