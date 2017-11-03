var n : int
var c : int := 0

loop
    c += 1
    randint(n, 1, 100)
    if n >= 90 then
	exit
    else
	put c, " try: ", n
    end if
end loop

put "Got ", n, " in ", c , " tries."
