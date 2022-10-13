Function Main()

   Local nLadoA := 0
   Local nLadoB := 0
   Local nLadoC := 0

   ACCEPT "Digite o valor do lado A do triangulo: " to nLadoA
   ACCEPT "Digite o valor do lado B do triangulo: " to nLadoB
   ACCEPT "Digite o valor do lado C do triangulo: " to nLadoC

    nLadoA := Val(nLadoA)
    nLadoB := Val(nLadoB)
    nLadoC := Val(nLadoC)

    if((nLadoA < (nLadoB + nLadoC)) .or.(nLadoB < (nLadoA +nLadoC)) .or. (nLadoC < (nLadoA + nLadoB)))

        if(nLadoA = nLadoB .and. nLadoA = nLadoC)
         QOUT("o triangulo é um triangulo equilatero")

        elseif ((nLadoA = nLadoB .and. nLadoA <> nLadoC) .or. (nLadoA = nLadoC .and. nLadoB <> nLadoC) .or. (nLadoC = nLadoB .and. nLadoA <> nLadoB))
            QOUT("o triangulo é um triangulo isosceles")
        
        else
            QOUT("o triangulo é um triangulo escaleno")
        ENDIF
    
    else
        QOUT("os valores inseridos não corespondem a nenhum tipo de triangulo (equilatero,isosceles ou escaleno )")
        
     ENDIF



RETURN Nil
