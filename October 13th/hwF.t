const num := 5

for i : 1 .. num
    for q : 1..num - i
	put " "..
    end for
    
    for q : 1..i
	put i..
    end for
    put ""
end for
