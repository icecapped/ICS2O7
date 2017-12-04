function toUpper(var s : string) : string
    var out : string := ""
    for i : 1..length(s)
	if(s(i) <= 'z' and s(i) >= 'a')then
	    out += chr(ord(s(i)) - ord('a') + ord('A'))
	else
	    out += s(i)
	end if
    end for
    result out
end toUpper

var count : int
get count

var current_smallest : string
var list : array 1 .. count of string
var ogList : array 1 .. count of string
var largest : string
var sortedList : array 1 .. count of int
var where : int

% Read list into array
for i : 1 .. count
    var temp : string
    get temp
    ogList(i) := temp
    list(i) := toUpper(temp)
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
    sortedList (i) := where
    % Replace smallest in array list by one more than the largest so
    % we don't select it again
    list (where) := largest + "z"
end for

% Output sorted list
put "Here are the numbers in ascending order"
for i : 1 .. count
    put ogList(sortedList (i))
end for
