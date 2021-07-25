#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Mouse, Window
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetBatchLines -1

GroupAdd, SuperMemo, ahk_class TBrowser ;Browser
GroupAdd, SuperMemo, ahk_class TContents ;Content Window (Knowledge Tree)
GroupAdd, SuperMemo, ahk_class TElWind ;Element window
GroupAdd, SuperMemo, ahk_class TSMMain ;Toolbar

#IfWinActive ahk_group SuperMemo

RAlt & End::
SetKeyDelay, 100
WinActivate, ahk_class TElWind
WinWaitActive, ahk_class TElWind
Send, !{v}
Sleep, 1000
Send, {down}
Send, {h}
Send, {e}
Sleep, 1000
WinActivate, ahk_class TBrowser
WinWaitActive, ahk_class TBrowser
Send, {AppsKey}
Sleep, 1000
Send, {down 5}
Send, {right}
Send, {down 4}
Sleep, 1000
Send, {Enter}
Sleep, 1000
WinActivate, ahk_class TInputDlg
WinWaitActive, ahk_class TInputDlg
Send, 1-10 ; enter elements of cards per day here
Send, {Enter}
WinWaitClose, ahk_class TInputDlg
WinActivate, ahk_class TBrowser
WinWaitActive, ahk_class TBrowser
Send, {AppsKey}
Sleep, 1000
Send, {c}
Send, {s}
Sleep, 1000
WinActivate, ahk_class TBrowser
WinWaitActive, ahk_class TBrowser
Send, {AppsKey}
Sleep, 1000
Send, {p}
Send, {l}
Send, {e}
Sleep, 1000
WinActivate, ahk_class TChoicesDlg
WinWaitActive, ahk_class TChoicesDlg
Send, {down 3} ; sets interval to one day
Send, {Enter}
WinWaitClose, ahk_class TChoicesDlg
WinActivate, ahk_class TMsgDialog
WinWaitActive, ahk_class TMsgDialog
Send, {o}
WinWaitClose, ahk_class TMsgDialog
WinActivate, ahk_class TBrowser
WinWaitActive, ahk_class TBrowser
Send, {Esc}
Sleep, 1000
WinActivate, ahk_class TBrowser
WinWaitActive, ahk_class TBrowser
Send, {Esc}
return
