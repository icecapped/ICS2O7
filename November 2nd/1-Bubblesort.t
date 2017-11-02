var ar : array 0..2 of int
%Bubble sort courtesy of michael shi i understand this but PEOPLE THAT COPY AND PASTE dddddont
for i : 0..2
    randint(ar(i), 100, 200)
end for

for q : 0..1
    for i : 0..1
	if ar(i) > ar(i + 1) then
	    var temp : int := ar(i)
	    ar(i) := ar(i + 1)
	    ar(i + 1) := temp
	end if
    end for
end for

for i : 0..2
    put ar(i), " "..
end for
