%Michael Shi 2017 - ICS2O7

setscreen("graphics")

%For triangle polygons
var x : array 1..3 of int
var y : array 1..3 of int

%Background
drawfill(50,50,30,30)

%Grey Compass
x(1) := 291 %centerpiece
y(1) := 171
x(2) := 265 %side
y(2) := 177
x(3) := 208 %outer
y(3) := 89
drawfillpolygon(x, y, 3, 27)

x(2) := 297
y(2) := 145
drawfillpolygon(x, y, 3, 26)

y(2) := 254
y(1) := 228
y(3) := 311
drawfillpolygon(x, y, 3, 26)

x(2) := 265
y(2) := 223
drawfillpolygon(x, y, 3, 27)

x(2) := 342
y(2) := 145
x(1) := 348
y(1) := 171
x(3) := 429
y(3) := 90
drawfillpolygon(x, y, 3, 27)

x(2) := 374
y(2) := 177
drawfillpolygon(x, y, 3, 26)

y(2) := 222
y(1) := 228
y(3) := 308
drawfillpolygon(x, y, 3, 26)

y(2) := 254
x(2) := 342
drawfillpolygon(x, y, 3, 27)

%Red Compass
x(1) := 319 %bottom
y(1) := 40
x(2) := 319 %top
y(2) := 199
x(3) := 292 %side
y(3) := 171
drawfillpolygon(x, y, 3, 65)

x(3) := 347
drawfillpolygon(x, y, 3, 64)

y(1) := 359
y(3) := 228
drawfillpolygon(x, y, 3, 64)

x(3) := 292
drawfillpolygon(x, y, 3, 65)

x(1) := 160
y(1) := 199
drawfillpolygon(x, y, 3, 65)

y(3) := 172
drawfillpolygon(x, y, 3, 64)

x(3) := 347
x(1) := 479
drawfillpolygon(x, y, 3, 64)

y(3) := 227
drawfillpolygon(x, y, 3, 65)
