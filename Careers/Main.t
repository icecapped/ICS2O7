import GUI

%Constants
const WIDTH := 800
const HEIGHT := 600
const BT_WIDTH := WIDTH div 5 %BT for button

%Fonts
const SEGOE40 : int := Font.New("Segoe UI:40")
const SEGOE15 : int := Font.New("Segoe UI:15")

%%%%%%%
%PAGES%
%%%%%%%

%Toolbar
var background : int := Pic.FileNew("bg.jpg")
var homeButton : int
var careerButton : int
var educationButton : int
var outlookButton : int
var sourcesButton : int
var quitButton : int

procedure hideAll
    GUI.Hide(quitButton)
    GUI.Hide(homeButton)
    GUI.Hide(careerButton)
    GUI.Hide(educationButton)
    GUI.Hide(outlookButton)
    GUI.Hide(sourcesButton)
    cls
end hideAll

%Page Procedures

procedure home
    Pic.Draw(background, 0, 0, 0)
    Font.Draw("Systems Architect", 200, 450, SEGOE40, white)
    Font.Draw("Michael Shi", maxx - 110, 10, SEGOE15, white)
    GUI.Show(homeButton)
    GUI.Show(careerButton)
    GUI.Show(educationButton)
    GUI.Show(outlookButton)
    GUI.Show(sourcesButton)
    GUI.Show(quitButton)
end home

procedure career
end career

procedure education
end education

procedure outlook
end outlook

procedure sources
end sources

procedure initial
    quitButton := GUI.CreateButton(0, 0, 50, "Quit", GUI.Quit)
    homeButton := GUI.CreateButton(0, maxy - 23, BT_WIDTH, "Home", home)
    careerButton := GUI.CreateButton(BT_WIDTH, maxy - 23, BT_WIDTH, "Career", career)
    educationButton := GUI.CreateButton(BT_WIDTH * 2, maxy - 23, BT_WIDTH, "Education", education)
    outlookButton := GUI.CreateButton(BT_WIDTH * 3, maxy - 23, BT_WIDTH, "Outlook", outlook)
    sourcesButton := GUI.CreateButton(BT_WIDTH * 4, maxy - 23, BT_WIDTH, "Sources", sources)
end initial

View.Set("graphics:" + intstr(WIDTH) + ";" + intstr(HEIGHT))
View.Set("nobuttonbar")

initial
home

loop
    exit when GUI.ProcessEvent
end loop
