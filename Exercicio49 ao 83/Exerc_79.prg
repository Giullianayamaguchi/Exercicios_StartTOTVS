Function Main()

    Local nCont  := 0

WAIT "Iniciando - Pressione uma tecla"
    For nCont := 1 to 60
        if(nCont % 3) == 0
          qout("Pim")
          Tone(988, 15)

        else
            qout(alltrim(str(nCont)))
            
        ENDIF
    NEXT

RETURN NIL
