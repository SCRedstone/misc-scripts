; Language:       English
; Author:         Qwerty-Space
; Modified:       Redstone

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force ; Makes sure the script only runs one at a time.

s:="W25 H25",p:="X10 Y10"
Gui,Color,Lime
Gui, -Caption +Toolwindow +AlwaysOnTop +LastFound
Gui,Show,%p% %s% NA
WinSet, Region, 0-0 %s% E
return

#MaxThreadsPerHotkey 4
^f3::
if t:=!t
    Gui,Color,Red
Else
    Gui,Color,Lime
#MaxThreadsPerHotkey 1
If SpamLoop {
    SpamLoop := False
    return
}
SpamLoop := True
Loop {                      
    Loop {                
        SendInput {a down}
	Sleep, 500
	SendInput {a up}
	Sleep, 500
	SendInput {d down}
	Sleep, 500
	SendInput {d up}
	Sleep, 500
        if not SpamLoop
            break
    }
    Sleep, 10000             
    if not SpamLoop
        break
}