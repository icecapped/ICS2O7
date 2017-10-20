var input : string
var longest : string := ""

put "Enter 10 words to check which one is the longest."

for i : 1..10
    get input
    if length(input) > length(longest) then
	longest := input
    end if
end for

put "\"",longest, "\" is the longest word."
