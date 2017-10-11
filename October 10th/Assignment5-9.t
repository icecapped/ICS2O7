var currentNum : int
const EXIT_CONDITION := 0

put "Enter integers to invert, enter 0 when done."
loop
    get currentNum
    exit when currentNum = EXIT_CONDITION
    put "Inverted: ", 0 - currentNum
end loop
