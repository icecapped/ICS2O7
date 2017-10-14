const n := 5

for i : 1 .. n
    for decreasing q : n .. i + 1
	put " " ..
    end for

    for q : 0 .. i - 1
	put q + 1 ..
    end for
    
    for decreasing q : i - 1 .. 1
	put q..
    end for
    
    put ""
end for
