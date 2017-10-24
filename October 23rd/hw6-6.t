var inString : string
var outString : string := ""

put "Enter string to change consonants"
get inString : *

for i : 1..length(inString)
    if index("aeiouAEIOU", inString(i)) = 0 then
	outString += "9"
    else
	outString += inString(i)
    end if
end for

put "\nString with changed consonants\n", outString
