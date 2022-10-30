Function Exercicio30()
// Através de teste de mesa, indique a finalidade do trecho de código a 

//o codigo a seguir foi feito de acordo com o do enunciado, sua finalidade é trocar as informações do array aANAG onde a ultima 
// fiquei igual a primeira, ambas formando a palavra AMOR.


    local aANAG := {"A","M","O","R"}
    local nI    := 0
    local cAUX  := ""

    QOUT("***************")
    QOUT("* Exercicio30 *")
    QOUT("Atraves de teste de mesa, indique a finalidade do trecho de codigo a seguir")
    For nI := 1 TO 4
        cAUX := aANAG[nI]
        aANAG[nI] := aANAG[5-nI]
        aANAG[5-nI] := cAUX
        QOUT(hb_valtoexp(aANAG))
    NEXT nI
    QOUT("R: este codigo inverteu o array duas vezes , voltando ao seu estado original ")
    QOUT("***************")
    QOUT("")
    wait
Return nil
