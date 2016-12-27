#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; "ALT + LEFT" for previous 
^Left::Media_Prev

; "ALT + RIGHT" for next 
^Right::Media_Next

; "ALT + UP" for pause
^UP::Media_Play_Pause