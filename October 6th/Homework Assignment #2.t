var length1 : real %could be radius for circle
var length2 : real %not used for circles and squares
var input : string

loop
    loop
	put "Enter in square/triangle/rectangle/circle in lowercase (\"exit\" to exit)"
	get input
	
	if input = "exit" or input = "square" or input = "triangle" or input = "rectangle" or input = "circle" then
	    exit
	end if
	
	put "\nImproper input!"
    end loop
    %check input and do proper processing
    
    exit when input = "exit"
    
    if input = "square" then %Square
	put "Enter in side length: "..
	get length1
	
	put "Area of square: ", length1 * length1
    elsif input = "triangle" or input = "rectangle" then %Triangle/Rectangle
	put "Enter height of ", input, ": "..
	get length1
	put "Enter length of ", input, ": "..
	get length2
	
	if input = "rectangle" then
	    put "Area of ", input, ": ", length1 * length2
	else
	    put "Area of ", input, ": ", length1 * length2 / 2
	end if
    else %Circle
	put "Enter radius of circle: "..
	get length1
	length2 := 3.14 %pi
	
	put "Area of circle: ", length2 * length1 ** 2
    end if
end loop

put "Exited."
