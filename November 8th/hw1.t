function subtractFive(num : real) : real
    result num - 5
end subtractFive

%main
var num : real

put "Enter number: "..
get num

put num, " - 5 = ", subtractFive(num)
