var num : int

put "Input number to display timetables."
get num

for i : 0..13
    put i, ": ", num * i
end for
