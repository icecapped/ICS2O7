function armstrong(n : int) : boolean
    var sum : int := 0
    var str : string := intstr(n)
    
    for i : 1..length(str)
	sum += strint(str(i)) ** length(str) %armstrong numbers aren't cubed, it's to the power of the # of digits
    end for
    if sum = n then
	result true
    end if
    result false
end armstrong

%main

for i : 1..10000
    if armstrong(i) then
	put i
    end if
end for
