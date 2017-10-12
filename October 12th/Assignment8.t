var m1 : real
var m2 : real
var i1 : real
var i2 : real
var years : int
years := 0

put "Enter Julia's money and interest: "..
get m1
get i1

put "Enter Max's money and interest: "..
get m2
get i2

i1 /= 100
i2 /= 100

loop
    exit when m2 > m1
    years += 1
    m1 := m1 * (1 + i1)
    m2 *= (1 + i2)
end loop

put "It would take ", years, " years until Max has more money than Julia."
