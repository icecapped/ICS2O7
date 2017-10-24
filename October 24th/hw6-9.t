var inString : string
var outString : string := ""
var vowels : string := "aeiou"
var upperVowels : string := "AEIOU"
put "Enter string to change vowels."
get inString : *

for i : 1..length(inString)
    if index(vowels, inString(i)) not= 0 then
	if index(vowels, inString(i)) + 1 = 6 then
	    outString += vowels(1)
	else 
	    outString += vowels(index(vowels, inString(i)) + 1)
	end if
    elsif index(upperVowels, inString(i)) not= 0 then
	if index(upperVowels, inString(i)) + 1 = 6 then
	    outString += upperVowels(1)
	else 
	    outString += upperVowels(index(upperVowels, inString(i)) + 1)
	end if
    else
	outString += inString(i)
    end if
end for

put "\nString with changed vowels\n", outString
