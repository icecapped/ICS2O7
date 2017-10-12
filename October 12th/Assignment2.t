var a : int
var b : int

loop
    put "Enter two even numbers"
    get a
    get b
    exit when a mod 2 = 0 and b mod 2 = 0
    put "The number(s) were not even, try again."
end loop

put "Numbers from ", a, " to ", b, ":"

for i : a..b by 2
    put i
end for

