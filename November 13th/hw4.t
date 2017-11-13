function uselessFunction(num : real) : real
	result num * 2
end uselessFunction

%main
var num : real

loop
	put "Enter number to double it, or number > 500 to exit."
	get num
	
	exit when uselessFunction(num) > 1000
	
	put "Doubled: ", uselessFunction(num)
end loop