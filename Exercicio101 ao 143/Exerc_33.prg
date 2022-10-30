Function Main()

    local nVal:=0

    ACCEPT("Informe o valor monetário a pagar: ") to nVal
    nVal:=val(nVal)

    ValorMonetario(nVal)

return nil


Function ValorMonetario(nVal)

    local A:=ARRAY(2,13), nCont:=1, aux:=1

    A[1][1]:=200 
    A[1][2]:=100 
    A[1][3]:=50 
    A[1][4]:=20 
    A[1][5]:=10 
    A[1][6]:=5 
    A[1][7]:=2 
    A[1][8]:=1 
    A[1][9]:=0.5 
    A[1][10]:=0.25 
    A[1][11]:=0.1 
    A[1][12]:=0.05 
    A[1][13]:=0.01

    for nCont:=1 to len(A[1])
        aux:=1
        while nVal>=(A[1,nCont])
            nVal:=nVal-A[1,nCont]
            A[2][nCont]:=aux++
        enddo
        If (A[2,nCont]) != NIL
            Qout("O valor de R$", Alltrim(STR(A[1,nCont])), "foi utilizado", Alltrim(STR(A[2][nCont])),"vez(es) ")
        end if
    next

return nil
