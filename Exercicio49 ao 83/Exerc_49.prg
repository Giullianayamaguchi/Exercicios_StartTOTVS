Function Main()
    Local nI := 0

    QOUT("---- para ----" + CHR(10))
    for nI := 0 to 100

        QOUT("Numero: " + strZero(nI,3))
        
    NEXT nI   

    nI := 0

    QOUT(CHR(10) + "--- Repita ---" + CHR(10))


    while (nI <=100)
     
        QOUT("Numero: " + strZero(nI,3))
          nI++
        Loop
    end
RETURN nI
