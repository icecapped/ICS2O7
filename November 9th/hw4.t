function starVowel(str : string) : string
	const VOWELS := "aeiouAEIOU"
	var out : string := ""
	for i : 1..length(str)
		if index(VOWELS, str(i)) != 0 then
			out += "*"
		else
			out += str(i)
		end if
	end for
end starVowel