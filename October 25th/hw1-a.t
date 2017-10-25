var input : string
var low : string := chr(1)

loop
    put "Enter word, or \"done\" when finished."
    get input
    
    exit when input = "done"
    
    if input > low then
	low := input
    end if
end loop

if low = chr(1) then
    put "Nothing entered"
else
    put "Lexicographically highest word: ", low
end if
