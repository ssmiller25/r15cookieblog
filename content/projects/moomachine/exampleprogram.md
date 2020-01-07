---
catagories:
  - Project
tags:
  - project
  - moomachine
date: "2010-08-03"
layout: "single"
meta: "false"
title: "Moo Machine Exmaple Program"
---
Below are several example programs.  Please refer to the [language reference](../languagereference).  For debugging purposes, use the 
Cow Language web implementation at [http://www.frank-buss.de/cow.html](http://www.frank-buss.de/cow.html)


#Hello World
(from [http://www.c2.com/cgi/wiki?HelloWorldInManyProgrammingLanguages](http://www.c2.com/cgi/wiki?HelloWorldInManyProgrammingLanguages)

```
[[ H in first memory position - 72 in ASCII ]]
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO
[[ Print Current Memory Position ]]
Moo
[[ Add an additional 29 for the "e" - 101 ]]
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO
[[ Print Current Memory Position ]]
Moo
[[ Add 7 more for the "l" = 108 ]]
MoO MoO MoO MoO MoO MoO MoO
[[ Print current twice for "ll" ]]
Moo Moo
[[ Add three for the "o" = 111 ]]
MoO MoO MoO
[[ Print ]]
Moo
[[ Reset memory to 0 ]]
OOO
[[ Add 44 for the "," character ]]
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO
[[ Print ]]
Moo
[[ Add 116 for non-breaking space " " - 160 ]]
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO
[[ Print ]]
Moo
[[ Subtract 41 for "w" - 119 ]]
MOo MOo MOo MOo MOo MOo MOo MOo MOo MOo
MOo MOo MOo MOo MOo MOo MOo MOo MOo MOo
MOo MOo MOo MOo MOo MOo MOo MOo MOo MOo
MOo MOo MOo MOo MOo MOo MOo MOo MOo MOo
MOo
[[ Print ]]
Moo
[[ Subtract 8 for "o" = 111 ]]
MOo MOo MOo MOo MOo MOo MOo MOo
[[ Print ]]
Moo
[[ Add 3 for "r" = 114 ]]
MoO MoO MoO
[[ Print ]]
Moo
[[ Subtract 6 for "l" = 108 ]]
MOo MOo MOo MOo MOo MOo
[[ Print ]]
Moo
[[ Subtract 8 for "d" = 100 ]]
MOo MOo MOo MOo MOo MOo MOo MOo
[[ Print ]]
Moo
[[ Reset current memory back to zero ]]
OOO
[[ Add 33 for "!" - 33 ]]
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO MoO MoO MoO MoO MoO MoO MoO
MoO MoO MoO
[[ Print Current Character ]]
Moo
```

# Counting Program

(based on loop "current" number of times without affecting current's value from http://www.bigzaphod.org/cow/)

```
[[ SSM: Load current memory position with 16, for loop ]]
MoO
MoO
MoO
MoO
MoO
MoO
MoO
MoO
MoO
MoO
MoO
MoO
MoO
MoO
MoO
MoO
[[ Start of looping program ]]
MMM
moO
MMM
MOO
MOo
[[ move back so original current is current again ]]
mOo
[[ loop here ]]
[[ move forward so the loop continutes to work on the temp counter ]]
moO
[[ ssm Print current "temp" counter ]]
OOM
moo
```

# Fibonacci Sequence
from http://www.bigzaphod.org/cow/

Warning:  This version will loop forever.

```
MoO
moO
MoO
mOo
[[ main loop ]]
MOO
[[ print first number ]]
OOM
[[ temp copy of first number ]]
MMM
moO
moO
MMM
mOo
mOo
[[ store second number off in the first position now ]]
moO
MMM
mOo
MMM
[[ move back to temp number ]]
moO
moO
[[ use temp to add to first and store in second in loop ]]
MOO
MOo
mOo
MoO
moO
moo
mOo
mOo
moo
```
