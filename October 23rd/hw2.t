var inString : string
var outString : string := ""

put "Enter string to remove vowels"
get inString : *

for i : 1..length(inString)
    if index("aeiouAEIOU", inString(i)) = 0 then
	outString += inString(i)
    end if
end for

put "\nString without vowels\n", outString
