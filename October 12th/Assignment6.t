var temp : int
const hot := 30
loop
    put "Enter temperature: "..
    get temp
    exit when temp > hot
end loop
put "Wow, that's hot!"
