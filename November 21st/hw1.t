import GUI

procedure print
    put "Message "..
end print

var button : int
button := GUI.CreateButton(20, 20, 50, "Button", print)

loop
    exit when GUI.ProcessEvent
end loop

