var arraySize : int := 10
var ar : array 1..arraySize of int
var average : real := 0
var highest : int := -100000

for i : 1..arraySize
    put "Enter temperature: "..
    get ar(i)
end for

put "\nArray reversed:"
for decreasing i : arraySize..1
    put ar(i)
    average += ar(i)
    if ar(i) > highest then
	highest := ar(i)
    end if
end for

average /= arraySize

put "Average temp is: ", average : 0 : 2
put "Highest temp is: ", highest
