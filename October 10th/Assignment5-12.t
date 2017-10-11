var currentItem : real
var totalPrice : real
var finalPrice : real
var totalGST : real
var totalPST : real
var PST : real
var GST : real
totalPrice := 0
totalGST := 0
totalPST := 0

put "Enter GST: %"..
get GST
put "Enter PST: %"..
get PST

GST /= 100
PST /= 100

put "\nEnter -1 when finished."
loop
	put "Enter cost of item."
	get currentItem
	exit when currentItem = -1
	totalPrice += currentItem
end loop

totalGST := totalPrice * GST
totalPST := totalPrice * PST
finalPrice := totalPrice + totalGST + totalPST

put "Total GST: $", totalGST : 0 : 2
put "Total PST: $", totalPST : 0 : 2
put "Total price: $", finalPrice : 0 : 2
