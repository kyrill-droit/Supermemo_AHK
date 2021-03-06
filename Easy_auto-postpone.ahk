#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

GroupAdd, SuperMemo, ahk_class TBrowser ;Browser
GroupAdd, SuperMemo, ahk_class TContents ;Content Window (Knowledge Tree)
GroupAdd, SuperMemo, ahk_class TElWind ;Element window
GroupAdd, SuperMemo, ahk_class TSMMain ;Toolbar

#IfWinActive ahk_group SuperMemo

Pause:: ;Pause stops omitting windows when auto-postpone applies to a leech element
Pause, On, 1
MsgBox, Postpone deactivated.
return

+Pause:: ;any Shift and Pause runs start omitting windows when auto-postpone applies to a leech element
Pause, Off, 1
MsgBox, Postpone (re)activated.
Loop
	{if WinExist ("ahk_class TChoicesDlg")
	WinActivate ahk_class TChoicesDlg
	WinWaitActive ahk_class TChoicesDlg
	Send, {Enter}
	Sleep, 500
	Send, {Space}
	Sleep, 500
	}
return
