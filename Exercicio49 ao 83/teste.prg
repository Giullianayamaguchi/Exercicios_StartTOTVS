function main()

    local nA := 0, nB := 0, nC := 0

    accept "Digite um lado para fomar um triangulo: " to nA
    accept "Digite outro lado para fomar um triangulo: " to nB
    accept "Digite base lado para fomar um triangulo: " to nC

    nA:=val(nA)
    nB:=val(nB)
    nC:=val(nC)

    if nA < nB + nC .or. nB < nA + nC .or. nC < nA + nB
            QOut("Ele tem valores para ser um triangulo")

            if nA == Nb .and. nA == nC
                QOut("Voce formou um triangulo equilátero")

                elseif nA <> Nb .and. nA <> nC .and. nB <> nC
                    QOut("Voce formou um triangulo escaleno")

                elseif nA == nB .or. nB == nC .or. nA == nC
                    QOut("Voce formou um triangulo isósceles")
            end if

        else
            QOut("Com esses valores é impossivel formar um triangulo")


    end if



RETURN nil
