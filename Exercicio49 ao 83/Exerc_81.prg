function main()

    local cIdioma := ""
    local aPF := {}

    cIdioma := idiomaJogo()

    if cIdioma = "PT"

        aPF := jokenPT()

    else

        aPF := jokenEN()
    
    endif

    QOUT("================================")
    QOUT("Placar final: ")
    QOUT()
    QOUT("Jogador: " + AllTrim(str(aPF[1])))
    QOUT("AI: " + AllTrim(str(aPF[2])))
    QOUT("================================")

return nil


//////////// Seleciona idioma
static function idiomaJogo()

    local cDado := ""
    local lRun  := .T.

    while lRun

        ACCEPT "Escolha o idioma // Choose the language (PT / EN): " to cDado
        cDado := UPPER(cDado)

        if !IsDigit(cDado) .or. (cDado = "PT" .and. cDado = "EN")

            lRun := .F.
        
        else

            QOUT( "ERROR")
        
        ENDIF

    enddo


return cDado

//////////// Jogo portugues
static function jokenPT()

    local cStatus := "PT"
    local nJogo := 0
    local nAI   := 0
    local nPlay := 0
    local cPlay := ""
    local lRun  := .T.
    local nPP   := 0
    local nPA   := 0
    local aPlacar := {}

    while lRun

        nJogo := validaJogo(cStatus)

        nAI := hb_Randomint(1, 3)

        nPlay := fazJogada(nJogo, nAI, cStatus)

        if nPlay = 1

            nPP++

        else

            nPA++
        
        endif
        
        
        QOUT("Voce: " + AllTrim(str(nPP)))
        QOUT("AI: " + AllTrim(str(nPA)))
        
        
        cPlay := validaOpc(cStatus)

        if cPlay = "N"

            lRun := .F.

        endif    

    enddo

    Aadd(aPlacar, nPP)
    Aadd(aPlacar, nPA)


return aPlacar

//////////// Jogo ingles
static function jokenEN()

    local cStatus := "EN"
    local nJogo := 0
    local nAI   := 0
    local nPlay := 0
    local cPlay := ""
    local lRun  := .T.
    local nPP   := 0
    local nPA   := 0
    local aPlacar := {}

    while lRun

        nJogo := validaJogo(cStatus)

        nAI := hb_Randomint(1, 3)

        nPlay := fazJogada(nJogo, nAI, cStatus)

        if nPlay = 1

            nPP++

        else

            nPA++
        
        endif
        
        QOUT("You: " + AllTrim(str(nPP)))
        QOUT("AI: " + AllTrim(str(nPA)))

        
        cPlay := validaOpc(cStatus)

        if cPlay = "N"

            lRun := .F.

        endif    

    enddo

    Aadd(aPlacar, nPP)
    Aadd(aPlacar, nPA)

return aPlacar

//////////// Valida jogada
static function validaJogo(cStatus)

    local lRun      := .T.
    local cJogada   := ""
    local nDado     := 0

    while lRun

        if cStatus = "PT" // Menu para pt
        
            ACCEPT "Pedra, papel ou tesoura? " to cJogada
            cJogada := UPPER(cJogada)

            if cJogada = "PEDRA"

                nDado := 1
                Qout( "Voce escolheu PEDRA")
                Qout("    _______")
                Qout("---'   ____)")
                Qout("      (_____)")
                Qout("       (_____)")
                Qout("       (____)")
                Qout("---.__(___)")
                lRun := .F.
                
            elseif cJogada = "PAPEL"

                nDado := 2
                Qout( "Voce escolheu PAPEL")
                Qout("---'   ____)____")
                Qout("          ______)")
                Qout("          _______)")
                Qout("         _______)")
                Qout("---.__________)")
        
                lRun := .F.

            elseif cJogada = "TESOURA"

                nDado := 3
                Qout( "Voce escolheu TESOURA")
                Qout("_______ ")
                Qout("---'____)____")
                Qout("        ______)")
                Qout("    __________)")
                Qout("      (____)")
                Qout("---.__(___)")
                
                lRun := .F.

            else

                
                Qout( "INVALIDO")

            ENDIF

        else // Menu para EN

            ACCEPT "Rock, paper or scissors? " to cJogada
            cJogada := UPPER(cJogada)

            if cJogada = "ROCK"

                nDado := 1
                Qout( "You chose ROCK")
                Qout("    _______")
                Qout("---'   ____)")
                Qout("      (_____)")
                Qout("       (_____)")
                Qout("       (____)")
                Qout("---.__(___)")
                lRun := .F.
                
            elseif cJogada = "PAPER"

                nDado := 2
                Qout( "You chose PAPER")
                Qout("---'   ____)____")
                Qout("          ______)")
                Qout("          _______)")
                Qout("         _______)")
                Qout("---.__________)")
        
                lRun := .F.

            elseif cJogada = "SCISSORS"

                nDado := 3
                Qout( "You chose SCISSORS")
                Qout("---'____)____")
                Qout("        ______)")
                Qout("    __________)")
                Qout("      (____)")
                Qout("---.__(___)")
            
                lRun := .F.

            else

                
                Qout( "INVALID")
                
                    
            ENDIF

        endif

    enddo


return nDado


//////////// Valida continuacao
static function validaOpc(cStatus)

    local cPlay := ""
    local cDado := ""
    local lRun  := .T.

    while lRun

        if cStatus = "PT"

            ACCEPT "Deseja continuar? (S/N) " to cPlay
            cPlay := UPPER(cPlay)

            if ISDIGIT(cPlay) .or. (cPlay <> "S" .and. cPlay <> "N")

                
                Qout( "Opção invalida!")
                

            else

                lRun := .F.

            endif

        else

            ACCEPT "Do you wish to continue? (Y/N)" to cPlay
            cPlay := UPPER(cPlay)

            if ISDIGIT(cPlay) .or. (cPlay <> "Y" .and. cPlay <> "N")

                
                Qout( "Invalid option!")
                

            else

                lRun := .F.

            endif

        endif

    enddo

    cDado := cPlay

return cDado


//////////// REALIZA JOGADA
static function fazJogada(nJogo, nAI, cStatus)

    local aMsg
    local nDado := 0

    if cStatus = "PT"

        aMsg := {"PEDRA!", "PAPEL!", "TESOURA!"}

        if nJogo = nAI

            Qout( "Empate!")

        elseif (nJogo = 1 .and. nAI = 2) .or. (nJogo = 2 .and. nAI = 3) .or. (nJogo = 3 .and. nAI = 1)

            Qout( "O oponente jogou: " + aMsg[nAI])
            Qout( "Voce perdeu!")

            nDado := 2

        else
            
            Qout( "O oponente jogou: " + aMsg[nAI])
            Qout("Voce ganhou!")

            nDado++

        ENDIF

    else
        
        aMsg := {"ROCK!", "PAPER!", "SCISSORS!"}

        if nJogo = nAI

            Qout( "Draw!")

        elseif (nJogo = 1 .and. nAI = 2) .or. (nJogo = 2 .and. nAI = 3) .or. (nJogo = 3 .and. nAI = 1)

            Qout( "Opponent played: " + aMsg[nAI])
            Qout( "You lose!")

            nDado := 2

        else
            
            Qout( "O oponente jogou: " + aMsg[nAI])
            Qout("Voce ganhou!")

            nDado++
            
        ENDIF

    endif

return nDado
