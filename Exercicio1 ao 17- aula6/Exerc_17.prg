Function Main()

    Local cMenu := ""
    Local cOpcao := ""

    cMenu := Menu()
    


RETURN NIL

Static Function Menu(cOpcao)

  Local lSair  := .f.
    while !lSair
    
        qout("a. iTroca(a, b): troca os valores entre as variáveis a e b.")
        qout("b. isPar(x): informa se o inteiro enviado eh um numero par.")
        qout("c. isImPar(x): informa se o inteiro enviado eh um numero impar.")
        qout("d. Inverte(x): retorna o numero com sinal invertido.")
        qout("e. isDiv(a, b): retorna se a eh divisivel por b." + chr(10))
        ACCEPT ("Digite a opcao que deseja executar: ") to cOpcao
        cOpcao := UPPER(cOpcao)

        if cOpcao == "A"
            iTroca()
            
        elseif cOpcao == "B"
            isPar()

        elseif cOpcao == "C"
            isImPar()

        elseif cOpcao == "D"
            Inverte()

        elseif cOpcao == "E"
            isDiv()

        else 
            qout("opcao incorreta, tente novamente" + CHR(10))

        ENDIF
        
        WAIT "Pressione ESC para mostrar o valor total, ou qualquer outra tecla para voltar do começo"

            if lastkey() == 27

                lSair := .T.
            ENDIF
    ENDDO

RETURN cOpcao

Static Function iTroca()
    Local nAux   := 0
    Local nA     := 0
    Local nB     := 0

    ACCEPT("Digite o valor da variavel A: ") to nA 
    nA := Val(nA)
    ACCEPT("Digite o valor da variavel b: ") to nB
    nB := Val(nB)
    nAux := nA
    nA := nB
    nB := nAux

    QOUT(nA)
    QOUT(nB)

RETURN ""

static Function isPar()

    Local Nnum:= 0

    ACCEPT("Digite um numero: ") to nNum
    nNum :=Val(nNum)

    if (nNum %2 ) == 0
        qout("o numero: " + alltrim(str(nNum)) + " eh par")
    else
        qout("o numero NAO eh par")
    ENDIF
RETURN nNum

static Function  isImPar()

    Local nNum :=0

    ACCEPT("Digite um numero: ") to nNum
    nNum :=Val(nNum)

    if (nNum %2 ) != 0
        qout("o numero: " + alltrim(str(nNum)) + " eh impar")
    else
        qout("o numero NAO e impar")
    ENDIF

RETURN nNum

static Function Inverte()

    Local nValor := 0

    ACCEPT("Digite um numero: ") to nValor
    nValor :=Val(nValor)

    nValor := nValor * -1
        qout("ao inverter o sinal o numero ficara assim: " + alltrim(str(nValor)) )
  


RETURN nValor

static Function isDiv()
    Local nA := 0
    Local nB := 0 

    ACCEPT "Digite o valor de A: " to nA 
    nA :=Val(nA)

    ACCEPT "Digite o valor de B: " to nB
    nB := Val(nB)

    if(nA % nB) ==0
        qout("o valor: " + alltrim(str(nA)) + " eh divisivel por : " + alltrim(str(nB)))

    else
        qout("o valor: " + alltrim(str(nA)) + " NAO eh divisivel por : " + alltrim(str(nB)))

    ENDIF

RETURN ""
