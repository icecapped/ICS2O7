var roll : int
var a : int := 0
var b : int := 0
var c : int := 0
var d : int := 0
var e : int := 0
var f : int := 0

for i : 1..20
    randint(roll, 1, 6)
    put "Roll: ", roll
    case roll of
	label 1 :
	    a += 1
	label 2 :
	    b += 1
	label 3 :
	    c += 1
	label 4 :
	    d += 1
	label 5 :
	    e += 1
	label 6 :
	    f += 1
    end case
end for

put "Number of 1's rolled: ", a
put "Number of 2's rolled: ", b
put "Number of 3's rolled: ", c
put "Number of 4's rolled: ", d
put "Number of 5's rolled: ", e
put "Number of 6's rolled: ", f

var ma : int := 0
var ind : int := 0
if a > ma then
    ind := 1
end if
if b > ma then
    ind := 2
end if
if c > ma then
    ind := 3
end if
if d > ma then
    ind := 4
end if
if e > ma then
    ind := 5
end if
if f > ma then
    ind := 6
end if

put "Most common roll was a ", ind
