
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!+1::
IfWinNotExist ahk_exe chrome.exe
    run, "C:\Users\Mike\AppData\Local\Google\Chrome\Application\chrome.exe"
IfWinActive ahk_class Chrome_WidgetWin_1
	WinGetClass, ActiveClass, A
	WinActivateBottom, ahk_class %ActiveClass%
IfWinNotActive ahk_class Chrome_WidgetWin_1
	WinWait, ahk_exe chrome.exe
	winactivate, ahk_exe chrome.exe
	Return


!+2::
IfWinNotExist ahk_exe spotify.exe
    run, "C:\Users\Mike\AppData\Roaming\Spotify\Spotify.exe"
WinWait, ahk_exe spotify.exe
winactivate, ahk_exe spotify.exe
Return


!+3::
IfWinNotExist ahk_exe evernote.exe
    run, "C:\Program Files (x86)\Evernote\Evernote.exe"
WinWait, ahk_exe evernote.exe
winactivate, ahk_exe evernote.exe
Return

!+4::
IfWinNotExist ahk_exe TeamViz.exe
    run, "C:\Program Files (x86)\TeamViz\TeamViz.exe"
WinWait, ahk_exe TeamViz.exe
winactivate, ahk_exe TeamViz.exe
Return

!+a::
IfWinNotExist ahk_exe anki.exe
    run, "C:\Program Files (x86)\Anki\anki.exe"
IfWinActive ahk_class QWidget
	WinGetClass, ActiveClass, A
	WinActivateBottom, ahk_class %ActiveClass%
	
IfWinNotActive ahk_class QWidget
	WinWait, ahk_exe anki.exe
	winactivate, ahk_exe anki.exe
	Return

!+t::
WinGetClass, class, A
MsgBox, The active window's class is "%class%".

!+q::
IfWinNotExist ahk_exe sublime_text.exe
    Run "C:\Program Files\Sublime Text 3\sublime.py"
IfWinActive ahk_class PX_WINDOW_CLASS
	WinGetClass, ActiveClass, A
	WinActivateBottom, ahk_class %ActiveClass%
	
IfWinNotActive ahk_class PX_WINDOW_CLASS
	WinWait, ahk_exe sublime_text.exe
	winactivate, ahk_exe sublime_text.exe
	return


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

