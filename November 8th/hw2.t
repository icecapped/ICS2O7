function factorial(num : int) : real % real can be larger so i used it
    var out : real := num
    for decreasing i : num - 1..1
	out *= i
    end for
    result out
end factorial

%main
var num : int

put "Enter number: "..
get num

put factorial(num)
