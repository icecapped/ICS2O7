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

procedure mixedFraction(n : int, d : int)
    var gcf : int
    gcf := gcd(n, d)
    
    var n1 := n
    var d1 := d
    
    n1 := n1 div gcf
    d1 := d1 div gcf
    
    if n1 < d then %regular fraction
	put n1, "\n--\n", d1
	return
    end if
    
    %mixed fractions starts
    var w : int %whole number
    
    w := n1 div d1
    n1 := n1 mod d1
    
    if n1 not= 0 then
	put w, " ", n1, "/", d1
    else
	put w
    end if
end mixedFraction

%main
mixedFraction(9, 2)

var n : int
var d : int

put "\nEnter number for numerator and denominator: "..
get n, d

put "Fraction is: "..
mixedFraction(n, d)
