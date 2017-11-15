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

procedure reduce(n : int, d : int)
    var gcf : int
    gcf := gcd(n, d)
    
    var n1 := n
    var d1 := d
    
    n1 := n1 div gcf
    d1 := d1 div gcf
    
    put n1, "\n--\n", d1
end reduce

%main
reduce(2, 4)

var a : int
var b : int

put "\nEnter numerator and denominator to reduce fraction: "..
get a, b

reduce(a, b)
