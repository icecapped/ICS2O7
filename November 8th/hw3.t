function reverseString(str : string) : string
    var out : string := ""
    for decreasing i : length(str) .. 1
	out += str(i)
    end for
    result out
end reverseString

%main
var str : string

put "Enter string to reverse."
get str : *

put "\nReversed string:\n", reverseString(str)
