var inString : string
var outString : string := ""

put "Enter string to change letters"
get inString : *

for i : 1 .. length(inString)
    if (inString (i) >= "a" and inString (i) <= "z") or (inString (i) >= "A" and inString (i) <= "Z") then
	if index ("abcdefghijklmnopqrstuvwyxzABCDEFGHIJKLMNOPQRSTUVWXYZ", inString (i)) = 0 then
	    outString += inString (i)
	else
	    if ord (inString (i)) > 90 then
		outString += chr (ord (inString (i)) - 32) %shh I won't use it on a test I swear
	    else
		outString += chr (ord (inString (i)) + 32)
	    end if
	end if
    else
	outString += inString(i)
    end if
    
end for

put "\nString with changed letters\n", outString
