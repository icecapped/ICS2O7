var input : string
var letter : int := 0
var sentinel : string := "end"
var num : int := 0
loop
    put "Enter word or \"end\" to stop."
    get input
    
    exit when input = "end"
    
    letter += length(input)
    num += 1
end loop

put "Average of ", letter / num, " letters per word."
