procedure triangle(a1 : int, a2 : int, a3 : int)
    if not(a1 + a2 + a3 = 180) then
	put "Angles don't add up to 180."
    elsif a1 = a2 and a2 = a3 then
	put "Equilateral."
    elsif (a1 = a2 or a2 = a3 or a3 = a1) then
	put "Isosceles."
    else
	put "Scalene."
    end if 
end triangle

%main
triangle(60, 60, 60)

var n : array 1..3 of int

put "Enter 3 numbers as angles of a triangle: "..
get n(1), n(2), n(3)

triangle(n(1), n(2), n(3))
