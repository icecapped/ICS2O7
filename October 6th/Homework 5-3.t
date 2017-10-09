var name : string
const stopCondition := "//"
put "Enter \"//\" to stop.\n"

loop
    put "Enter full name: "..
    get name : *
    
    exit when name = stopCondition
    
    put "Hello " , name , "!\n"
end loop

put "Stopped."
