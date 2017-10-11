var inWord : string
var count : int
const INTERRUPT_VALUE := "."

count := 0

put "Enter words, seperated by spaces, and enter \".\" with a space when done."
loop
    %inWord is a throwaway, we only use it to check for "."
    get inWord
    
    exit when inWord = "."
    count += 1
end loop

put "\n", count ," words."
