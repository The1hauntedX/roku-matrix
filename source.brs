Function RunScreenSaver(params as Object) as Object 
    main()
end function

sub main()
    ' Setup components
    s = CreateObject("roScreen")
    i = CreateObject("roArray", 25, true)
    h = s.GetHeight()
    w = s.GetWidth()
    font_registry = CreateObject("roFontRegistry")
    font = font_registry.GetDefaultFont()
    
    ' Configure interfaces
    s.SetAlphaEnable(true)
    i.join("0").split("")
    
    ' Populate array
    for z = 0 to 45 step +1 
    i.SetEntry(z,0)
    end for
    

    while true
        
        for each a in i 
            s.DrawRect(0,0,w,h,&h00000045)
            sleep(45)
            
            for ind = 0 to 45 step +1
                text = Rand(1).toStr()
                x = 45 * ind
                s.DrawText(text,x,i[ind],&h00FF00FF, font)
                s.finish()
      
                    if (i[ind] > 10 * h * Rnd(0)) 
                        i[ind] = 0
                        
                        else 
                            i[ind] = i[ind] + 35
                            
                endif
            end for
        end for
    end while
end sub


Function Rand(length As Integer) As String
    chars = "01"
    str = ""
    For i = 1 to length
        str = str + chars.Mid(Rnd(2) -1, 1)
    Next
    Return str
End Function
  
