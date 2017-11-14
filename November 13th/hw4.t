function uselessFunction (num : real) : real
    result num * 2
end uselessFunction

%main
var num : real

put "Enter number to double it until > 1000: "..
get num

loop
    num := uselessFunction(num)
    exit when num > 1000
    put num
end loop

