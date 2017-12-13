var keys : array 1..10 of string
var values : array 1..10 of int
var query : string

for i : 1..10
    put "Enter the name of an item and the quantity on seperate lines: "..
    get keys(i) : *
    get values(i)
end for

put "What would you like to check for?"
get query : *

for i : 1..10
    if keys(i) = query then
	put "You have ", values(i), query, " in inventory."
    end if
end for
