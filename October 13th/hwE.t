const n := 4

for i : 1 .. n
    for decreasing q : n .. i + 1
	put " " ..
    end for

    for q : 0 .. (i - 1) * 2
	put "$" ..
    end for
    
    put ""
end for
