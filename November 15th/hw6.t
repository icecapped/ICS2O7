function middle(s : string) : char
    result s((length(s) div 2) + 1)
end middle

%main
put middle("hello")

var s : string

put "\nEnter string to get middle character."
get s : *

put middle(s)
