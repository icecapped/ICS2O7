var input : string

put "Enter \"done\" when done."
loop
    loop
	put "Enter string that has more than 2 characters."
	get input : *
	
	exit when length(input) >= 2

	put "String must have more than two characters!\n"
    end loop
    
    exit when input = "done"
    
    put "First and last letter are: ", input(1), " ", input(length(input)), "\n"
end loop

put "\nDone."
