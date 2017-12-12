import GUI

%Constants
const WIDTH := 800
const HEIGHT := 600
const BT_WIDTH := WIDTH div 5 %BT for button

%Fonts
const SEGOE20 : int := Font.New("SegoeUI:20")

%%%%%%%
%PAGES%
%%%%%%%

%Home
var background : int := Pic.FileNew("bg.jpg")
var homeButton : int
var careerButton : int
var educationButton : int
var outlookButton : int
var sourcesButton : int

procedure hideAll
    GUI.Hide(homeButton)
    GUI.Hide(careerButton)
    GUI.Hide(educationButton)
    GUI.Hide(outlookButton)
    GUI.Hide(sourcesButton)
    cls
end hideAll

procedure home
    Pic.Draw(background, 0, 0, 0)
    GUI.Show(homeButton)
    GUI.Show(careerButton)
    %GUI.Show(educationButton)
    %GUI.Show(outlookButton)
    %GUI.Show(sourcesButton)
end home

procedure career

end career

procedure initial
    homeButton := GUI.CreateButton(0, maxy - 23, BT_WIDTH, "Home", home)
    careerButton := GUI.CreateButton(BT_WIDTH, maxy - 23, BT_WIDTH, "Career", career)
end initial

View.Set("graphics:" + intstr(WIDTH) + ";" + intstr(HEIGHT))
View.Set("nobuttonbar")

initial
home

