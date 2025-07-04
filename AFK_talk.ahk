#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

f11:: Pause
f12:: Reload

x::AFK(1000)
AFK(delay) {
	Loop	{
		Sleep, 20
		Send, f
		Sleep, 200
		Send, a
		Sleep, 200
		Send, d
		Sleep, 200
		Send, d
		Sleep, 200
		Send, s
		Sleep, 200
		Send, w
		Sleep, 200
		Send, w
		Sleep, 200
		Send, a
		Sleep, 200
		Send, sf
		Sleep, 200
		Send, w
		Sleep, 200
		Send, d
		Sleep, 200
		Send, a
		Sleep, 200
		Send, s
		Sleep, 200
		Send, e
		Sleep, 200
		Send, k
		Sleep, 200
		Send, f
		Sleep, 2000
	}
}
AFK2(delay) {
	Loop	{
		Send {a down}{a up}
		Sleep, 300
	}
}