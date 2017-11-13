function reverse(str : string) : string
	var out : string := ""
	for decreasing i : length(str)..1
		out += str(i)
	end for
	result out
end reverse

function isPalindrome(str : string) : boolean
	if str = reverse(str) then
		result true
	end if
	result false
end isPalindrome

var str : string

put "Enter string to check if palindrome."
get str

if isPalindrome(str) then
	put "Is a palindrome."
else
	put "Is not a palindrome."
end if