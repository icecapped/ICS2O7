procedure pattern(n : int)
    for i : 1..n
	for q : 1..i
	    put i..
	end for
	put " "..
    end for
    put ""
end pattern

%main
pattern(8)

var n : int

put "Enter number: "..
get n

pattern(n)
