function removeAll (s : string, c : char) : string
    var out : string := ""
    for i : 1 .. length (s)
	if s(i) not= c then
	    out += s(i)
	end if
    end for
    result out
end removeAll

%main
put removeAll("spaghetti", 't')

var s : string
var c : char

put "\nEnter a string and then character."
get s : *
get c

put removeAll(s, c)
