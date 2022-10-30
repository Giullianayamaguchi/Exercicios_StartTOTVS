Function Main()

    Local aNum   := ARRAY(10)
    Local nCont  := 0
    Local nCont2 := 1

    for nCont := 2 to 20 step 2
      
         aNum[nCont2] := nCont
            qout(alltrim(str(aNum[nCont2])))
          nCont2++


    NEXT

RETURN NIL
