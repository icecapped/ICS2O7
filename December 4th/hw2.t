var count : int
get count

var current_smallest : string
var list : array 1 .. count of string
var largest : string
var sortedList : array 1 .. count of string
var where : int

% Read list into array
for i : 1 .. count
    get list (i)
end for

% find the largest value in the list
largest := list(1)
for i : 2 .. count
    if list(i) > largest then
	largest := list(i)
    end if
end for


for i : 1 .. count
    % Find smallest remaining in list 
    current_smallest := list(1)
    where := 1
    for j : 2 .. count
	if list (j) < current_smallest then
	    current_smallest := list (j)
	    where := j
	end if
    end for
    % Store smallest in sorted List 
    sortedList (i) := current_smallest
    % Replace smallest in array list by one more than the largest so
    % we don't select it again
    list (where) := largest + "z"
end for

% Output sorted list
put "Here are the numbers in ascending order"
for i : 1 .. count
    put sortedList (i)
end for
