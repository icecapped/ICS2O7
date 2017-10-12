var a : int
var b : int
var sum : int
sum := 0

loop
    put "Enter two numbers: "..
    get a
    get b
    
    exit when a < b
    put "Invalid, make sure the first number is smaller than the second.\n"
end loop

for i : a..b
    sum += i
end for

put "Sum of numbers from ", a , " to ", b ,": ", sum
