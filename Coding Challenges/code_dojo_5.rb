def superReducedString(str)
    #local var with value true
    changed = true
    # Check condition untill the statement is true and str not equal to nil 
    while changed && str != ""
        changed = false
        #
        for i in 0..str.length-1 do 
           changed = true
        end   
    end 
end     

superReducedString("aab")