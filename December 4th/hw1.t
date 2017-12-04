var count : int
get count

var current_smallest : int
var list : array 1 .. count of int
var largest : int 
var sortedList : array 1 .. count of int
var where : int

% Read list into array
for i : 1 .. count
    get list (i)
    sortedList(i) := -1
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
    var already : boolean := false
    
    for q : 1..count
	if sortedList(q) = current_smallest then
	    already := true
	end if
    end for
    
    if already = false then
	sortedList (i) := current_smallest
    end if
    % Replace smallest in array list by one more than the largest so
    % we don't select it again
    list (where) := largest + 1  
end for

% Output sorted list
put "Here are the numbers in ascending order without duplicates."
for i : 1 .. count
    if sortedList(i) not= -1 then
	put sortedList (i)
    end if
end for
