%Quick Note:
%
%this was made on 1080p screen, so on other
%resolutions it may look messed up, and I don't believe there's
%any way to make it relative to screen size, sooooooooo
%
%hope you're using a 1920 x 1080 screen

import GUI

%Constants
const WIDTH := 800
const HEIGHT := 600
const BT_WIDTH := WIDTH div 5 %BT for button
const U_BT_WIDTH := WIDTH div 3 %for university buttons

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
var torontoPic : int := Pic.FileNew("Data/Education/toronto.jpg")
var waterlooPic : int := Pic.FileNew("Data/Education/waterloo.jpg")
var camosunPic : int := Pic.FileNew("Data/Education/camosun.jpg")
var homeButton : int
var careerButton : int
var educationButton : int
var marketButton : int
var sourcesButton : int
var quitButton : int

%Education Page
var uWaterlooButton : int
var uTorontoButton : int
var camosunButton : int

procedure hideAll
    GUI.Hide(uWaterlooButton)
    GUI.Hide(uTorontoButton)
    GUI.Hide(camosunButton)
    cls
    GUI.Refresh
end hideAll

%Helper Procedures
procedure title(titleStr : string, subStr : string)
    Font.Draw(titleStr, 50, maxy - 80, SEGOE40, black)
    Font.Draw(subStr, length(titleStr) * 35 + 100, maxy - 80, SEGOE15, black)
    Draw.Line(30, maxy - 90, maxx - 30, maxy - 90, black)
    locate(6, 1)
end title

%Page Procedures

procedure home
    hideAll
    Pic.Draw(background, 0, 0, 0)
    Font.Draw("Systems Architect", 160, 315, SEGOE40, white)
    Font.Draw("Michael Shi", maxx - 140, 10, SEGOE15, white)
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
    %TODO: Add images above every button
    GUI.Show(uWaterlooButton)
    GUI.Show(uTorontoButton) %Is redundant right now, but if i add other elements that need to be hidden later, it's easier
    GUI.Show(camosunButton)
    
    Pic.Draw(torontoPic, U_BT_WIDTH, 100 + GUI.GetHeight(uTorontoButton), 0)
    Pic.Draw(waterlooPic, 0, 100 + GUI.GetHeight(uWaterlooButton), 0)
    Pic.Draw(camosunPic, U_BT_WIDTH * 2, 100 + GUI.GetHeight(camosunButton), 0)
    
    title("Education", "University and College pathways.")
end education

procedure market
    hideAll
    title("Market", "Outlook, wages, and employers.")
    open : input, "Data/market.txt", get
    
    close : input
end market

procedure sources
    hideAll
    title("Sources", "")
    open : input, "Data/sources.txt", get
    
    close : input 
end sources

%Education page procedures
procedure waterloo
    hideAll
    title("UWaterloo", "Renowned for computer science.")
    open : input, "Data/Education/waterloo.txt", get
    var currentLine : string
    loop
	exit when eof(input)
	get : input, currentLine : *
	put currentLine
    end loop
    close : input 
end waterloo

procedure toronto
    hideAll
    title("UofT", " Recognized for Artificial Intelligence.")
    open : input, "Data/Education/toronto.txt", get
    var currentLine : string
    loop
	exit when eof(input)
	get : input, currentLine : *
	put currentLine
    end loop
    close : input 
end toronto

procedure camosun
    hideAll
    title("Camosun", "A college in B.C.")
    open : input, "Data/Education/camosun.txt", get
    var currentLine : string
    loop
	exit when eof(input)
	get : input, currentLine : *
	put currentLine
    end loop
    close : input 
end camosun


procedure initial
    %Toolbar
    quitButton := GUI.CreateButton(0, 0, 50, "Quit", GUI.Quit)
    homeButton := GUI.CreateButton(0, maxy - 23, BT_WIDTH, "Home", home)
    careerButton := GUI.CreateButton(BT_WIDTH, maxy - 23, BT_WIDTH, "Career", career)
    educationButton := GUI.CreateButton(BT_WIDTH * 2, maxy - 23, BT_WIDTH, "Education", education)
    marketButton := GUI.CreateButton(BT_WIDTH * 3, maxy - 23, BT_WIDTH, "Market", market)
    sourcesButton := GUI.CreateButton(BT_WIDTH * 4, maxy - 23, BT_WIDTH, "Sources", sources)
    
    %Education Buttons
    uWaterlooButton := GUI.CreateButton(0, 100, U_BT_WIDTH, "University of Waterloo", waterloo)
    uTorontoButton := GUI.CreateButton(U_BT_WIDTH, 100, U_BT_WIDTH, "University of Toronto", toronto)
    camosunButton := GUI.CreateButton(U_BT_WIDTH * 2, 100, U_BT_WIDTH, "Camosun College", camosun)
end initial

View.Set("graphics:" + intstr(WIDTH) + ";" + intstr(HEIGHT))
View.Set("nobuttonbar")

initial
home

loop
    exit when GUI.ProcessEvent
end loop
