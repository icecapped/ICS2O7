import GUI

%Constants
const WIDTH := 800
const HEIGHT := 600
const BT_WIDTH := WIDTH div 5 %BT for button

%Fonts
const SEGOE40 : int := Font.New("Segoe UI:40")
const SEGOE15 : int := Font.New("Segoe UI:15")

%Input/Output
var input : int %IO files, each declared whenever you load a new page

%%%%%%%
%PAGES%
%%%%%%%

%Toolbar
var background : int := Pic.FileNew("bg.jpg")
var homeButton : int
var careerButton : int
var educationButton : int
var marketButton : int
var sourcesButton : int
var quitButton : int

%Career Page

 %   GUI.Hide(homeButton)
 %   GUI.Hide(careerButton)
 %   GUI.Hide(educationButton)
 %   GUI.Hide(marketButton)
 %   GUI.Hide(sourcesButton)

procedure hideAll
    
    cls
    GUI.Refresh
end hideAll

%Helper Procedures
procedure title(titleStr : string, subStr : string)
    Font.Draw(titleStr, 50, maxy - 80, SEGOE40, black)
    Font.Draw(subStr, length(titleStr) * 38, maxy - 80, SEGOE15, black)
    Draw.Line(30, maxy - 90, maxx - 30, maxy - 90, black)
    locate(8, 1)
end title

%Page Procedures

procedure home
    hideAll
    Pic.Draw(background, 0, 0, 0)
    Font.Draw("Systems Architect", 200, 315, SEGOE40, white)
    Font.Draw("Michael Shi", maxx - 110, 10, SEGOE15, white)
    GUI.Show(homeButton)
    GUI.Show(careerButton)
    GUI.Show(educationButton)
    GUI.Show(marketButton)
    GUI.Show(sourcesButton)
    GUI.Show(quitButton)
end home

procedure career
    hideAll
    title("Career", "Information about System Architects.")
    open : input, "Data/career.txt", get
    
    var currentLine : string
    loop
	exit when eof(input)
	get : input, currentLine : *
	put currentLine
    end loop
    close : input
end career

procedure education
    hideAll
end education

procedure market
    hideAll
    title("Market", "Outlook, wages, and employers.")
    open : input, "Data/market.txt", get
    
    close : input
end market

procedure sources
    hideAll
end sources

procedure initial
    quitButton := GUI.CreateButton(0, 0, 50, "Quit", GUI.Quit)
    homeButton := GUI.CreateButton(0, maxy - 23, BT_WIDTH, "Home", home)
    careerButton := GUI.CreateButton(BT_WIDTH, maxy - 23, BT_WIDTH, "Career", career)
    educationButton := GUI.CreateButton(BT_WIDTH * 2, maxy - 23, BT_WIDTH, "Education", education)
    marketButton := GUI.CreateButton(BT_WIDTH * 3, maxy - 23, BT_WIDTH, "Market", market)
    sourcesButton := GUI.CreateButton(BT_WIDTH * 4, maxy - 23, BT_WIDTH, "Sources", sources)
end initial

View.Set("graphics:" + intstr(WIDTH) + ";" + intstr(HEIGHT))
View.Set("nobuttonbar")

initial
home

loop
    exit when GUI.ProcessEvent
end loop
