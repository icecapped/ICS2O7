function gcd(a : int, b : int) : int
	var temp : int
	var n1 := a
	var n2 := b
	loop
		exit when n2 = 0
		temp := n2
		n2 := n1 mod n2
		n1 := temp
	end loop
	result n1
end gcd

var a : int
var b : int

put "Enter 2 numbers to find gcd"
get a, b

put gcd(a, b)
