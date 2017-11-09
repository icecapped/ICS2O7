function toMeter(cm : real) : real
    result cm / 100
end toMeter

%main
var num : real

put "Enter number in cm to convert to meters: "..
get num

put toMeter(num) : 0 : 2, "m"
