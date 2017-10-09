var name : string
const STOP_CONDITION := "//"
put "Enter \"//\" to stop.\n"

loop
    put "Enter full name: "..
    get name : *
    
    exit when name = STOP_CONDITION
    
    put "Hello " , name , "!\n"
end loop

put "Stopped."
