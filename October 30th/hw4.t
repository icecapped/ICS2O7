var num : int
var input : int
randint(num, 1, 100)

loop
    put "Enter guess between 1 and 100: "..
    get input
    
    exit when input = num
    if input > num then
	put "Lower."
    else
	put "Higher."
    end if
    put ""
end loop

put "The number was ", num, "!"
