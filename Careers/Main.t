import GUI

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

procedure home
    Pic.Draw(background, 0, 0, 0)
end home

View.Set("graphics:800,600")
home
