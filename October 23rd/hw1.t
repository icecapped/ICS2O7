var inString : string
var outString : string := ""

put "Enter string to remove D's"
get inString : *

for i : 1..length(inString)
    if not(inString(i) = "d" or inString(i) = "D") then
	outString += inString(i)
    end if
end for

put "\nString without D's\n", outString
