var input : string
var shortest : string := "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

loop
    put "Enter word, or \"done\" when finished."
    get input
    
    exit when input = "done"
    
    if length(input) < length(shortest) then
	shortest := input
    end if
end loop

if shortest = "" then
    put "Nothing entered"
else
    put "Shortest word: ", shortest
end if
