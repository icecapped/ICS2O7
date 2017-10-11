var markTotal : int
var numMarks : int
numMarks := 0
markTotal := 0

var inNum : int

put "Enter marks to find average, enter -1 to exit."
loop
    get inNum
    exit when inNum = -1
    markTotal += inNum
    numMarks += 1
end loop

put "The average of your marks is: ", markTotal / numMarks : 0 : 2
