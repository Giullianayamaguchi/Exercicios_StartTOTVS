Function Main()

    Local cChute := ""
    Local cJaFoi := ""
    Local nCont  := 0


     QOUT("--- Enquanto ---")
    while (cChute != "SAIR")
        ACCEPT "Digite uma letra ou sair para parar o programa: " to cChute
        cChute := UPPER(cChute)
        
        if Len(cChute) > 1 .and. cChute != "SAIR"
            QOUT( "insira apenas 1 letra")
            loop
        else
            if (cChute $ cJaFoi )
                QOUT("essa letra já foi informada anteriormente, tente outra letra")
                loop
            else
                cJaFoi += cChute
                
            ENDIF
        ENDIF

    ENDDO
    cChute := ""
    cJafoi := ""


    QOUT("--- Para ---")
    for nCont := 1 to 2
        if (cChute == "SAIR")
            exit
        ENDIF
        ACCEPT "Digite uma letra ou sair para parar o programa: " to cChute
        cChute := UPPER(cChute)
        if Len(cChute) > 1 .and. cChute != "SAIR"
            QOUT( "insira apenas 1 letra")
            loop
        else
            if (cChute $ cJaFoi )
                QOUT("essa letra já foi informada anteriormente, tente outra letra")
                nCont--
                loop
            else
                cJaFoi += cChute
                
            ENDIF
        ENDIF

    nCont--
    NEXT

RETURN Nil
