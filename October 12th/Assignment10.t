var p1 : real
var p2 : real
var g1 : real
var g2 : real
var years : int
years := 0

put "Enter country A's population in millions and growth per year: "..
get p1
get g1

put "Enter country B's population in millions and growth per year: "..
get p2
get g2

g1 /= 100
g2 /= 100

loop
    exit when p2 < p1
    years += 1
    p1 *= (1 + g1)
    p2 *= (1 + g2)
end loop

put "It would take ", years, " years until country A has more people than country B."
