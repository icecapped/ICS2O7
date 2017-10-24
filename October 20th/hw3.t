var input : string
var vowel : int := 0

put "Enter word: "..
get input

for i : 1..length(input)
    if input(i) = "a" or input(i) = "A" or input(i) = "e" or input(i) = "E" or input(i) = "i" or input(i) = "I" or input(i) = "o" or input(i) = "O" or input(i) = "u" or input(i) = "U"then
	vowel += 1
    end if
end for

put vowel, " vowels in the word ", input, "."
