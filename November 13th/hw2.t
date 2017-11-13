function multiple7(num : int) : boolean
	if num mod 7 = 0 then
		result true
	end if
	result false
end function

var test : int := 21

if multiple7(test) then
	put "is multiple of 7"
else
	put "is not multiple of 7"
end if