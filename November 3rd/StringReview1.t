var ar : array 0..4 of string
var long : string

for i : 0..4
    get ar(i)
end for
long := ar(0)

for i : 0..4
    if length(ar(i)) > length(long) then
	long := ar(i)
    end if
end for

put long, " is the longest word."
