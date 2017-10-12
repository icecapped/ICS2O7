%hoho, you dont need to check every number up to the number, you only need to check up to the root

var num : int
var root : int

put "Enter number to show factors: "..
get num

root := ceil(num ** 0.5)

for i : 1..root
    if num mod i = 0 then
	put i, " : ", num / i
    end if
end for
