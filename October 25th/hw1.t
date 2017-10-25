var input : string
var low : string := chr(255)

loop
    put "Enter word, or \"done\" when finished."
    get input
    
    exit when input = "done"
    
    if input < low then
	low := input
    end if
end loop

if low = chr(255) then
    put "Nothing entered"
else
    put "Lexicographically lowest word: ", low
end if
