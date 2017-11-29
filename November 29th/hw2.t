var numRolls : int := 50
var die1 : int
var die2 : int
var ar : array 1..12 of int

for i : 1..12
    ar(i) := 0
end for

var num : int

for i : 1..numRolls
    randint(die1, 1, 6)
    randint(die2, 1, 6)
    ar(die1 + die2) += 1
end for

put "What roll are you interested in?"
get num

put "Sum of ",num, " was rolled ", ar(num), " times"
