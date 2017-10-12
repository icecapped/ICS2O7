const numMarks := 10
const limit := 70
var currentMark : int
var above : int
above := 0

put "Enter 10 marks between 0 and 100: "

for i : 1..numMarks
    loop
	get currentMark
	exit when currentMark > 0
	put "Invalid mark, try again."
    end loop
    
    if currentMark >= limit then
	above += 1
    end if
end for

put above, " marks were above 70."
