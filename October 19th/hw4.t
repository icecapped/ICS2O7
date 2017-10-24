var num : int
var input : string
const MULTIPLE := 4
loop
    put "Enter number: "..
    get input
    exit when strintok(input)
    put "Input was not a number!\n"
end loop

num := strint(input)

put "Multiples of 4 below ", num, ":"
for i : 4..num by 4
    if i mod MULTIPLE = 0 then
	put i
    end if
end for
