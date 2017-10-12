var a : int
var b : int

loop
    put "Enter two numbers for average, input 0 and 0 when done."
    get a
    get b
    exit when a = 0 and b = 0
    put "Average of ", a, " and ", b, " is: ", (a + b) / 2
end loop

put "\nDone."
