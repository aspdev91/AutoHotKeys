#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; "CTL + ALT + LEFT" for previous 
!+Left::Media_Prev
Return

; "CTL + ALT + RIGHT" for next 
!+Right::Media_Next
Return

; "CTL + ALT + UP" for pause
!+Up::Media_Play_Pause
Return

; "CTL + ALT + /" for starring current song

!+/::
spotify = ahk_class SpotifyMainWindow
IfWinExist, %spotify%
{
;Store active window and mouse position.
WinGetActiveTitle, activeWindow
MouseGetPos x, y, winID

;Activate Spotify.
WinActivate %spotify%
WinWaitActive %spotify%

;Get maximised status
WinGet, isMaximised, MinMax

;Clear any context menus
Send {Escape down}{Escape up}

;Right click near the song title in the "Now Playing" box.
WinGetPos,  ,  ,  , spotifyHeight, %spotify%
MouseClick, Right, 68, spotifyHeight - (isMaximised = 1 ? 105 : 83), 1, 0

PixelGetColor, pixelColor, 68+174, spotifyHeight - (isMaximised = 1 ? 105 : 83)

if (pixelColor != 0x333333) {
  ;Move down to 'Add to your music' and hit enter
  loop, 5 {
    Send {Down down}{Down up}
  }
  Send {Enter down}{Enter up}
} else {
  ;Already added, so close context menu
  Send {Escape down}{Escape up}
}

;Restore original window and mouse position.
WinActivate ahk_id %winID%
MouseMove %x%, %y%

}

Return