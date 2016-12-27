#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


!+0::    ; Next window
WinGetClass, ActiveClass, A
WinSet, Bottom,, A
WinActivate, ahk_class %ActiveClass%
return

!+9::    ; Last window
WinGetClass, ActiveClass, A
WinActivateBottom, ahk_class %ActiveClass%
return

!+`::    ; Next window
WinGetClass, ActiveClass, A
WinSet, Bottom,, A
WinActivate, ahk_class %ActiveClass%
return