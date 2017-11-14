function glue(s1 : string, s2 : string) : string
    result s1 + s2
end glue

function reverse(str : string) : string
	var out : string := ""
	for decreasing i : length(str)..1
		out += str(i)
	end for
	result out
end reverse

function machine(s1 : string, s2 : string, s3 : string) : string
    result glue(reverse(glue(s1, s2)), s3)
end machine

%main
var s1 : string
var s2 : string
var s3 : string

put "Enter three words: "..
get s1, s2, s3

put machine(s1, s2, s3)
