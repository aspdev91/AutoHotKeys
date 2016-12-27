
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!+1::
IfWinNotExist ahk_exe chrome.exe
    run, "C:\Users\Mike\AppData\Local\Google\Chrome\Application\chrome.exe"
WinWait, ahk_exe chrome.exe
winactivate, ahk_exe chrome.exe
Return

!+2::
IfWinNotExist ahk_exe spotify.exe
    run, "C:\Users\Mike\AppData\Roaming\Spotify\Spotify.exe"
WinWait, ahk_exe spotify.exe
winactivate, ahk_exe spotify.exe
Return



!+q::
IfWinNotExist ahk_exe sublime_text.exe
    Run "C:\Program Files\Sublime Text 3\sublime.py"
WinWait, ahk_exe sublime_text.exe
winactivate, ahk_exe sublime_text.exe
Return


!+w::
IfWinNotExist ahk_exe mintty.exe
    Run "C:\Program Files\Git\git-bash.exe"
WinWait, ahk_exe mintty.exe
winactivate, ahk_exe mintty.exe
Return

!+e::
IfWinNotExist ahk_exe cmd.exe
    Run, cmd.exe, C:\
WinWait, ahk_exe cmd.exe
winactivate, ahk_exe cmd.exe
Return

!+r::
IfWinNotExist ahk_exe bash.exe
	run, "C:\Windows\System32\bash"
WinWait, ahk_exe bash.exe
winactivate, ahk_exe bash.exe
Return