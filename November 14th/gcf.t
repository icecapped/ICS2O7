function gcd(a : int, b : int) : int
	var temp : int
	loop
		exit when b = 0
		temp := b
		b := a mod b
		a := temp
	end loop
	result a
end gcd

var a : int
var b : int

put "Enter 2 numbers to find gcd"
get a, b

put gcd(a, b)