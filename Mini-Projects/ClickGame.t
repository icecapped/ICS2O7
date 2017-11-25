%Written by Michael Shi - 11/24/2017
%
%Try and get the highest number of block clicks in 60 seconds.

import GUI

var Label : int
var gameButton : int
var gameStart : int
var scoreLabel : int
var timeLabel : int

var score : int := 0
var elapsedTime : int
var startTime : int := 0

var WIDTH : int := 40
var HEIGHT : int := 40

forward procedure update

procedure startGame
    GUI.Hide(gameStart)
    GUI.Hide(Label)
    cls
    startTime := Time.Elapsed div 1000
    score := 0
    GUI.Show(timeLabel)
    GUI.Show(gameButton)
    GUI.Refresh
end startGame

procedure finishGame
    GUI.Show(gameStart)
    GUI.Show(Label)
    GUI.Hide(gameButton)
    GUI.Hide(timeLabel)
    cls
    GUI.Refresh
end finishGame

body procedure update
    score += 1
    
    var x, y : int
    randint(x, 1, maxx - WIDTH)
    randint(y, 1, maxy - HEIGHT)
    GUI.SetPosition(gameButton, x, y)
    GUI.SetLabel(scoreLabel, "Score: " + intstr(score))
    GUI.Refresh
end update

procedure updateTimer
    
end updateTimer

%main
Label := GUI.CreateLabel(10, maxy - 30, "Click game")
scoreLabel := GUI.CreateLabel(maxx - 60, maxy - 30, "Score: " + intstr(score))
timeLabel := GUI.CreateLabel(10, maxy - 30, "Time: 0")
gameStart := GUI.CreateButton(maxx div 2 - 40, maxy div 2, 40, "Start game.", startGame)

gameButton := GUI.CreateButtonFull(maxx div 2, maxy div 2, WIDTH, "", update, HEIGHT, '^D', false)
GUI.Show(scoreLabel)
finishGame

loop
    elapsedTime := Time.Elapsed div 1000
    GUI.SetLabel(timeLabel, "Time: " + intstr(elapsedTime - startTime))
    
    if elapsedTime - startTime = 60 then
	finishGame
    end if
    exit when GUI.ProcessEvent
end loop
