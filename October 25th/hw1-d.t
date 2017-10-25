var input : string
var longest : string := ""

loop
    put "Enter word, or \"done\" when finished."
    get input
    
    exit when input = "done"
    
    if length(input) > length(longest) then
	longest := input
    end if
end loop

if longest = "" then
    put "Nothing entered"
else
    put "Longest word: ", longest
end if
