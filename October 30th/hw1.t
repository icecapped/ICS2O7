var input : string
var ran : int
for i : 1..5
    randint(ran, 1, 10)
    loop
	put "Enter a word that is ", ran, " letters long: "..
	get input
	exit when length(input) = ran
	put "Try again.\n"
    end loop
end for
put "\nDone."
