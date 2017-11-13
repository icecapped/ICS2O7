function startS(str : string) : boolean
	if str(1) = "S" or str(1) = "s" then
		result true
	end if
	result false
end if

var str : string

put "Enter word."
get str

if startS(str) then
	put "Starts with \"S\""
else
	put "Doesn't start with \"S\""
end if