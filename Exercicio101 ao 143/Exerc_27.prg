Function Main()

local cTexto , cTxtInv, nI , nTamanho


    cTexto := inp_str( "Digite uma palavra " ) 

    nTamanho := len(cTexto)

    cTxtInv := ""
    for nI := 1 to nTamanho
    
        cTxtInv += SubStr(cTexto, nTamanho-nI+1 , 1)
    next nI

    QOUT("invertida = " + cTxtInv)
    if cTexto == cTxtInv
        QOUT(cTexto + " e um palindromo")
    endif


RETURN NIL
