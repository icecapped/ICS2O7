var num : int
var input : string
const MULTIPLE := 4

put "Enter number: " ..
get input

if strintok(input) then
    num := strint (input)

    put "Multiples of 4 below ", num, ":"
    for i : 4 .. num by 4
	if i mod MULTIPLE = 0 then
	    put i
	end if
    end for
else
    put "Not a number!"
end if


