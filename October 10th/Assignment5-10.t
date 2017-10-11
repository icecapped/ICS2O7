var currentNum : int
var positive : int
var negative : int
positive := 0
negative := 0

put "Enter integers to count how many positive or negative. Enter 0 when done."
loop
    get currentNum
    exit when currentNum = 0
    if currentNum > 0 then
	positive += 1
    else
	negative += 1
    end if
end loop
put "Positive: ", positive
put "Negative: ", negative
