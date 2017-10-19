var input : string
var letter : int := 0
for i : 1..10
    put "Enter word ", i
    get input
    letter += length(input)
end for

put "Average of ", letter / 10, " letters per word."
