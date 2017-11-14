procedure stars(line_number : int)
    for i : 1 .. line_number
        put "*****"
    end for
end stars

%main a
stars(7)

%main b
var n : int

put "Enter number of lines: "..
get n

stars(n)