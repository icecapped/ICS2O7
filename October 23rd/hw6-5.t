var inString : string
var outString : string := ""

put "Enter string to change vowels."
get inString : *

for i : 1..length(inString)
    if index("aeiouAEIOU", inString(i)) not= 0 then
        outString += "9"
    else
        outString += inString(i)
    end if
end for

put "\nString with changed vowels\n", outString
