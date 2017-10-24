var inString : string
var outString : string := ""

put "Enter string to change vowels"
get inString : *

for i : 1..length(inString)
    if index("aeiouAEIOU", inString(i)) = 0 then
	outString += inString(i)
    else
	if inString(i) > 90 then
	    outString += inString(i) - 32 %shh I won't use it on a test I swear
	else
	    outString += inString(i) + 32
	end if
    end if
end for

put "\nString with changed vowels\n", outString
