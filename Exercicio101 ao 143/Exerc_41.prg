Function Main()
    local aMat := {{"O", "Q", "*", "I"}, {"E", "*", "E", "S"}, {"R", "E", "U", "T"}, {"A", "*", "*", "S"}}
    local nI := 0
    local nJ := 0
    local cAux := ""
   
    For nI := 1 to 3
        For nJ := (nI + 1) to 4
            cAux := aMat[nJ,nI]
            aMat[nI,nJ] := aMat[nJ,nI]
            aMat[nJ,nI] := cAux
        End For
    End for
 
    cAux := aMat[1,1]
    aMat[1,1] := aMat[4,4]
    aMat[4,4] := cAux
    cAux := aMat[2,2]
    aMat[2,2] := aMat[3,3]
    aMat[3,3] := cAux
 
    qout( hb_valtoexp(aMat[1]))
    qout( hb_valtoexp(aMat[2]))
    qout( hb_valtoexp(aMat[3]))
    qout( hb_valtoexp(aMat[4]))
Return Nil
