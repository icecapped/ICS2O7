function robustInt() : int
    var s : string
    loop
	get s
	exit when strintok(s)
	put "Not a valid integer."
    end loop
    result strint(s)
end robustInt

%main
var n : int

put "Enter number"
n := robustInt()

put "You number was: ", n
