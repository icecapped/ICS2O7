function starVowel(str : string) : string
	const VOWELS := "aeiouAEIOU"
	var out : string := ""
	for i : 1..length(str)
		if index(VOWELS, str(i)) not= 0 then
			out += "*"
		else
			out += str(i)
		end if
	end for
	result out
end starVowel


%main
var str : string

put "Enter string to convert vowels to \"*\""
get str : *

put "Returns: ", starVowel(str)
