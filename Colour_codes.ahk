#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

GroupAdd, SuperMemo, ahk_class TBrowser ;Browser
GroupAdd, SuperMemo, ahk_class TContents ;Content Window (Knowledge Tree)
GroupAdd, SuperMemo, ahk_class TElWind ;Element window
GroupAdd, SuperMemo, ahk_class TSMMain ;Toolbar

#IfWinActive ahk_group SuperMemo

>!Left:: ; Right Alt and Left arrow key 
Clipboard := ""
Send, {Ctrl down}c{Ctrl up}
ClipWait
Clipboard = %Clipboard%
Clipboard = <FONT color=005CE6>%Clipboard%</FONT> ;blue colour
Send, {Ctrl down}v{Ctrl up}
Send, {Blind}{Ctrl up}
Sleep, 100
Send, {Ctrl down}{Shift down}{Up}{Ctrl up}{Shift up}
Send, {Ctrl down}{Shift down}1{Ctrl up}{Shift up}
Sleep, 100
Send, {Esc}
return

>!Down:: ; Right Alt and Down arrow key
Clipboard := ""
Send, {Ctrl down}c{Ctrl up}
ClipWait
Clipboard = <FONT color=#808080>%Clipboard%</FONT> ;gray colour
Clipboard = %Clipboard%
Send, {Ctrl down}v{Ctrl up}
Send, {Blind}{Ctrl up}
Sleep, 100
Send, {Ctrl down}{Shift down}{Up}{Ctrl up}{Shift up}
Send, {Ctrl down}{Shift down}1{Ctrl up}{Shift up}
Sleep, 100
Send, {Esc}
return

>!Right:: ; Right Alt and Right arrow key
Clipboard := ""
Send, {Ctrl down}c{Ctrl up}
ClipWait
Clipboard = %Clipboard%
Clipboard = <FONT color=#E60000>%Clipboard%</FONT> ;red colour
Send, {Ctrl down}v{Ctrl up}
Send, {Blind}{Ctrl up}
Sleep, 100
Send, {Ctrl down}{Shift down}{Up}{Ctrl up}{Shift up}
Send, {Ctrl down}{Shift down}1{Ctrl up}{Shift up}
Sleep, 100
Send, {Esc}
return
