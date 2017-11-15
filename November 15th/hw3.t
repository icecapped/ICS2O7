procedure tee(width : int, height : int)
    if(width mod 2 = 0) then
	put "Width must be odd."
	return
    end if
    
    for i : 1..height
	if i = 1 then
	    for q : 1..width
		put "*"..
	    end for
	else
	    for q : 1..width div 2
		put " "..
	    end for
	    put "*"..
	end if
	
	put ""
    end for
end tee

tee(7, 5)

var w : int
var h : int

put "\nEnter width and height: "
get w, h

tee(w, h)
