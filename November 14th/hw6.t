function aa(s : string) : string
	var out : string := ""
	for i : 1..length(s)
		out += s(i)
		if s(i) = "a" then
			out += s(i)
		end if
	end for
	result out
end aa

function bb(s : string) : string
	var out : string := ""
	for i : 1..length(s)
		if s(i) = "b" then
			out += "c"
		else
			out += s(i)
		end if
	end for
	result out
end bb

function cc(s : string) : string
	var n : int
	var out : string := ""
	randint(n, 1, length(s))
	
	for i : 1..length(s)
		if i = n then
			out += "c"
		end if
		out += s(i)
	end for
	result out
end cc