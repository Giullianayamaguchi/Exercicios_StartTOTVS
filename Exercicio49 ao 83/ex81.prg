function main()

    local cIdioma := ""
    local nPP, nPA := 0
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
        
        ?
        QOUT("You: " + AllTrim(str(nPP)))
        QOUT("AI: " + AllTrim(str(nPA)))
        ?
        
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
                ? "Voce escolheu PEDRA"
                lRun := .F.
                
            elseif cJogada = "PAPEL"

                nDado := 2
                ? "Voce escolheu PAPEL"
                lRun := .F.

            elseif cJogada = "TESOURA"

                nDado := 3
                ? "Voce escolheu TESOURA"
                lRun := .F.

            else

                ?
                ? "INVALIDO"
                ?

            ENDIF

        else // Menu para EN

            ACCEPT "Rock, paper or scissors? " to cJogada
            cJogada := UPPER(cJogada)

            if cJogada = "ROCK"

                nDado := 1
                ? "You chose ROCK"
                lRun := .F.
                
            elseif cJogada = "PAPER"

                nDado := 2
                ? "You chose PAPER"
                lRun := .F.

            elseif cJogada = "SCISSORS"

                nDado := 3
                ? "You chose SCISSORS"
                lRun := .F.

            else

                ?
                ? "INVALID"
                ?
                    
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

                ?
                ? "Opção invalida!"
                ?

            else

                lRun := .F.

            endif

        else

            ACCEPT "Do you wish to continue? (Y/N)" to cPlay
            cPlay := UPPER(cPlay)

            if ISDIGIT(cPlay) .or. (cPlay <> "Y" .and. cPlay <> "N")

                ?
                ? "Invalid option!"
                ?

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

            ? "Empate!"

        elseif (nJogo = 1 .and. nAI = 2) .or. (nJogo = 2 .and. nAI = 3) .or. (nJogo = 3 .and. nAI = 1)

            ? "O oponente jogou: " + aMsg[nAI]
            ? "Voce perdeu!"

            nDado := 2

        else
            
            ? "O oponente jogou: " + aMsg[nAI]
            ? "Voce ganhou!"

            nDado++

        ENDIF

    else
        
        aMsg := {"ROCK!", "PAPER!", "SCISSORS!"}

        if nJogo = nAI

            ? "Draw!"

        elseif (nJogo = 1 .and. nAI = 2) .or. (nJogo = 2 .and. nAI = 3) .or. (nJogo = 3 .and. nAI = 1)

            ? "Opponent played: " + aMsg[nAI]
            ? "You lose!"

            nDado := 2

        else
            
            ? "O oponente jogou: " + aMsg[nAI]
            ? "Voce ganhou!"

            nDado++
            
        ENDIF

    endif

return nDado
