var x : int
var n : int
var total : int
total := 0

put "Enter number x: "..
get x

loop
    put "Enter number n: "..
    get n
    exit when n > 0
    put "Invalid number, enter a number larger than 0.\n"
end loop

for i : 0..n
    total += x ** i
end for

put total
