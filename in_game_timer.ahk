#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

f12:: Reload

f5::
	WinGetActiveTitle, NindouTitle
	Loop, 3
	{
		SetControlDelay -1
		ControlClick, X10 Y80, %NindouTitle%
		ControlSend, , ^{F5}, %NindouTitle%
		Sleep, 20
	}
Return

0::
	WinGetActiveTitle, NindouTitle
	WinGetPos, X, Y, W, H, %NindouTitle%
	;X := X + 70 + 1
	;Y := Y + 607 - 1
	X := 69
	Y := 606
	R_flag := 1
	R_break_flag := 0
	Loop
	{
		PixelGetColor, color, %X%, %Y%, RGB
		Sleep, 20
		ToolTip, %X%`n%Y%`n%color%, 100, 700
		If (color = "0xCC0000") {
			StartTime := A_TickCount
			ToolTip, %color%`ndone , 100, 700
			break
		}
	}
	Sleep, 2000
	If R_break_flag = 1 
	{
		ToolTip, Paused, 100, 700
		Return
	}
	else
	{
		Click Up
		ElapsedTime := A_TickCount - StartTime
		ToolTip, %ElapsedTime%, 100, 700
	}
Return

9::
	WinGetActiveTitle, NindouTitle
	PixelSearch, Px, Py, 69, 606, 214, 606, 0x000000, , Fast
	lastPx = %Px%
	If (!Px)
		lastPx = 214
	trigger_count := 0
	R_flag := 1
	R_break_flag := 0
	Loop
	{
		PixelSearch, Px, Py, 69, 606, 214, 606, 0x000000, , Fast
		Sleep, 20
		If (!Px)
			Px = 214
		If R_break_flag = 0
		{
			If Px < %lastPx%
			{
				Click Up
				trigger_count := trigger_count + 1
				lastPx = %Px%
			}
			ToolTip, last:%lastPx%`ncurrent:%Px%`ntrigger_count:%trigger_count%, 100, 700
		}
		else
			ToolTip, Paused, 100, 700
	}
Return

~RButton::
	If R_flag = 1
	{
		If R_break_flag = 0
			R_break_flag := 1
		else
			R_break_flag := 0
		ToolTip, R_break_flag = %R_break_flag%, 400, 700, 2
	}
	else
	{
		WinGetActiveTitle, NindouTitle
		ControlSend, , RightClick, %NindouTitle%
	}
Return