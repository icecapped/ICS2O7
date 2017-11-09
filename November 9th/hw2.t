function areaOfTriangle(base : real, height : real) : real
    result base * height / 2
end areaOfTriangle

%main
var base : real
var height : real

put "Enter base and height of triangle: "..
get base, height

put "Area of the triangle is: ", areaOfTriangle(base, height)
