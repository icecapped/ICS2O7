var top : int
var bot : int

put "Enter lowest and highest number:"
get bot
get top

put "\nNumbers from lowest to highest cubed:"

for i : bot..top
    put i,"\^3 = ", i ** 3
end for
