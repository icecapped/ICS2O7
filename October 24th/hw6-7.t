var inString : string
var outString : string := ""

put "Enter string to change consonants"
get inString : *

for i : 1..length(inString)

    if index("bcdfghjklmnpqrstvwyxzBCDFGHJKLMNPQRSTVWYXZ", inString(i)) = 0 then
	outString += inString(i)
    else
	if ord(inString(i)) > 90 then
	    outString += chr(ord(inString(i)) - 32)%shh I won't use it on a test I swear
	else
	    outString += chr(ord(inString(i)) + 32)
	end if
    end if
end for

put "\nString with changed consonants\n", outString
