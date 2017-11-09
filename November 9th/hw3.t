function linear(m : real, x : real, b : real) : real
    result m * x + b
end linear


%main
var m : real
var x : real
var b : real
put "Enter m and b for a linear equation: "..
get m, b

put ""
loop
    put "Enter number for x to find y with the given equation."
    get x
    
    put "y = ", linear(m, x, b), " x = ", x
end loop
