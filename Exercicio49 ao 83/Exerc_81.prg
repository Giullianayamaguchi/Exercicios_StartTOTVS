Function Main()

    Local nValor := 0
    Local nLing  := ""
    Local lSair  := .f.
    Local cEsco  := ""
    Local cRo    := ""
    Qout("----- Bem-vindo ao jogo do Jokenko ------" + chr(10))
    
    while lSair != .t.
        
        ACCEPT("Digite em qual linguagem gostaria de jogar(P - Portugues OU I - Ingles ou E - Para sair): ") TO nLing
        nLing = UPPER(SubStr(nLing, 1, 1))


        if(nLing == "P")
            LingPort()
        lSair := .T.
        elseif (nLing == "I")
            LingIng()
        lSair := .T.
        elseif (nLing =="E")
            lSair := .T.

        elseif (nLing != "P") .or. (nLing != "I")
             
            Qout("erro. Linguagem inserida incorreta, tente novamente " + chr(10))    
            loop
            
        ENDIF
    
    ENDDO


RETURN NIL

    

Static function LingPort(nValor, cEsco, lSair)
 
    while !lSair = .t.

nValor := hb_randomInt(1,9)
        
        ACCEPT ("Digite o numero da jogada que deseja fazer (1 -Pedra, 2- Papel, 3- Tesoura): ") TO cEsco
        cEsco := Val(cEsco)

        if (cEsco == 1)
            Qout("voce jogou pedra")
            Qout("    _______")
            Qout("---'   ____)")
            Qout("      (_____)")
            Qout("       (_____)")
            Qout("       (____)")
            Qout("---.__(___)")

        elseif (cEsco ==2)
            Qout("voce jogou papel ")
            Qout("---'   ____)____")
            Qout("          ______)")
            Qout("          _______)")
            Qout("         _______)")
            Qout("---.__________)")
        
        elseif (cEsco == 3)
            Qout("voce jogou tesoura")
            Qout("_______ ")
            Qout("---'____)____")
            Qout("        ______)")
            Qout("    __________)")
            Qout("      (____)")
            Qout("---.__(___)")
            
        elseif (cEsco == 5)
            lSair := .T.


        else 
            Qout("Opcao incorreta")
            loop
        endif
        
        if(nValor == 1  .or. nValor == 4 .or. nValor == 7)
            Qout("pedra")
            Qout("    _______")
            Qout("---'   ____)")
            Qout("      (_____)")
            Qout("       (_____)")
            Qout("       (____)")
            Qout("---.__(___)")
        
        elseif (nValor == 2  .or. nValor == 5 .or. nValor == 8)
            Qout("papel")
            Qout("---'   ____)____")
            Qout("          ______)")
            Qout("          _______)")
            Qout("         _______)")
            Qout("---.__________)")
        
        elseif (nValor == 3  .or. nValor == 6 .or. nValor == 9)
            Qout("tesoura")
            Qout("_______ ")
            Qout("---'____)____")
            Qout("        ______)")
            Qout("    __________)")
            Qout("      (____)")
            Qout("---.__(___)")
        ENDIF   

    ENDDO
RETURN ""



Static Function LingIng(nValor, cEsco)
nValor := hb_randomInt(1,9)
    Qout(nValor)

       
    if( nValor == 1 .and.nValor == 4 .and.nValor == 7)
        Qout("stone")
        Qout("    _______")
        Qout("---'   ____)")
        Qout("      (_____)")
        Qout("       (_____)")
        Qout("       (____)")
        Qout("---.__(___)")
    
    elseif (nValor == 2  .or. nValor == 5 .or. nValor == 8)
         Qout("paper")
    
    elseif (nValor == 3  .or. nValor == 6 .or. nValor == 9)
         Qout("scissors")
    ENDIF

    ACCEPT ("Enter the number of the move you want to make (1-Stone, 2-Paper, 3-Scissors): ") TO cEsco
    cEsco := Val(cEsco)
    if (cEsco == 1)
        Qout("you threw stone")
        Qout("    _______")
        Qout("---'   ____)")
        Qout("      (_____)")
        Qout("       (_____)")
        Qout("       (____)")
        Qout("---.__(___)")

    elseif (cEsco ==2)
        Qout("you played paper")
    
    elseif (cEsco == 3)
        Qout("you played scissors")
        
    endif


RETURN ""

Static Function Opcao()



Re
