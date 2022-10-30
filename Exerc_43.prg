SET PROCEDURE TO lib43.prg

Function Main()

    local nI     := 0
    local nOpcao := 1
    local aCartas2 := {}
    local aMatriz7 := {}
    local a21 := {}
    local aCartas :=  { "A"+chr(3) , "A"+chr(4) , "A"+chr(5) , "A"+chr(6) , ;
                        "2"+chr(3) , "2"+chr(4) , "2"+chr(5) , "2"+chr(6) , ;
                        "3"+chr(3) , "3"+chr(4) , "3"+chr(5) , "3"+chr(6) , ;
                        "4"+chr(3) , "4"+chr(4) , "4"+chr(5) , "4"+chr(6) , ;
                        "5"+chr(3) , "5"+chr(4) , "5"+chr(5) , "5"+chr(6) , ;
                        "6"+chr(3) , "6"+chr(4) , "6"+chr(5) , "6"+chr(6) , ;
                        "7"+chr(3) , "7"+chr(4) , "7"+chr(5) , "7"+chr(6) , ;
                        "8"+chr(3) , "8"+chr(4) , "8"+chr(5) , "8"+chr(6) , ;
                        "9"+chr(3) , "9"+chr(4) , "9"+chr(5) , "9"+chr(6) , ;
                        "10"+chr(3) , "10"+chr(4) , "10"+chr(5) , "10"+chr(6) , ;
                        "J"+chr(3) , "J"+chr(4) , "J"+chr(5) , "J"+chr(6) , ;
                        "Q"+chr(3) , "Q"+chr(4) , "Q"+chr(5) , "Q"+chr(6) , ;
                        "K"+chr(3) , "K"+chr(4) , "K"+chr(5) , "K"+chr(6) }

    EMBARALHA(@aCartas)
    a21 := VETOR21(aCartas)
    
    QOUT("*******************")
    QOUT("Escolha uma carta")
    QOUT("*******************")
    a21 := MATRIZ7(a21)
    QOUT("")
    INPUT "Coloque aqui qual a coluna que sua carta está: " TO nOpcao
    a21 := MATRIZVETOR(a21 , nOpcao)
    a21 := MATRIZ7(a21)
    QOUT("")
    INPUT "Coloque aqui qual a coluna que sua carta está: " TO nOpcao
    a21 := MATRIZVETOR(a21 , nOpcao)
    a21 := MATRIZ7(a21)
    QOUT("")
    INPUT "Coloque aqui qual a coluna que sua carta está: " TO nOpcao

    a21 := MATRIZVETOR(a21 , nOpcao)
    QOUT("Sua carta escolhida foi: " , a21[11])

    
Return NIL
