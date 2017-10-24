var word : string

put "Enter word: "..
get word

put word((length(word) div 2) + 1 .. *), word(1 .. length(word) div 2)
