var input : string
var total : int := 0
var num : int := 0

loop
    put "Enter word, or \"done\" when finished."
    get input
    
    exit when input = "done"
    
    total += length(input)
    num += 1
end loop

if num = 0 then
    put "Nothing entered"
else
    put "Average length of words: ", total / num : 0 : 2
end if
