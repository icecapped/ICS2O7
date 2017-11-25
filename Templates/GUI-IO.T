import GUI

var field1 : int
var field2 : int
var label1 : int
var label2 : int


procedure field1Procedure(str : string)
    GUI.SetText(field2, str)
end field1Procedure

procedure field2Procedure(str : string)
    %nothing
end field2Procedure

View.Set("graphics:260,50")
GUI.SetBackgroundColour(gray)

field1 := GUI.CreateTextField(10, 20, 100, "", field1Procedure)
field2 := GUI.CreateTextField(150, 20, 100, "", field2Procedure)
label1 := GUI.CreateLabel(10, 20 + GUI.GetHeight(field1),"Input")
label2 := GUI.CreateLabel(150, 20 + GUI.GetHeight(field2),"Output")

loop
    exit when GUI.ProcessEvent
end loop
