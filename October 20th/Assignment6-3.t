var input : string

put "Enter word: "..
get input

input := input(length(input)) + input(2 .. length(input) - 1) + input(1)

put input
