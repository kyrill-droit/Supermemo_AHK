#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

GroupAdd, SuperMemo, ahk_class TBrowser ;Browser
GroupAdd, SuperMemo, ahk_class TContents ;Content Window (Knowledge Tree)
GroupAdd, SuperMemo, ahk_class TElWind ;Element window
GroupAdd, SuperMemo, ahk_class TSMMain ;Toolbar

#IfWinActive ahk_group SuperMemo

^d:: ;Ctrl and d dismiss an element
Send, {Ctrl down}d{Ctrl up}
WinActivate, ahk_class TMsgDialog
WinWaitActive, ahk_class TMsgDialog
Sleep, 100
Send, y
Sleep, 100
Send, o
Sleep, 100
Send, o
Sleep, 100
Send, {Enter}
return

^+F12:: ; Ctrl, Shift and F12 clear formatting of an active part of an element
Send, {Ctrl down}{Shift down}{F12}{Ctrl up}{Shift up}
Sleep, 100
Send, y
return
