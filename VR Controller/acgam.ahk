#Persistent
#IfWinActive ahk_exe anki.exe
SetTimer, WatchAxis, 5
return

Joy8::^z
Joy7::Space
Joy10::NumpadMult
Joy1::^1

WatchAxis:
KeyToHoldDownPrev := KeyToHoldDown
JoyX := GetKeyState("JoyX")
JoyY := GetKeyState("JoyY")
if (JoyX > 70)
    KeyToHoldDown := 3
else if (JoyX < 30)
    KeyToHoldDown := 1
else if (JoyY > 70)
    KeyToHoldDown := 2
else if (JoyY < 30)
    KeyToHoldDown := 4
else
    KeyToHoldDown := ""
if (KeyToHoldDown = KeyToHoldDownPrev)
    return

if KeyToHoldDown
 Send {%KeyToHoldDown%}

return