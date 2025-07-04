#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting d tirectory.

;Title based script
f9::
	WinGetActiveTitle, NindouTitle
	WinMove, %NindouTitle%, , , , 920, 700 ;resize windows
	;Edge 85 Pos: x20y80 to x900y680
Return

f12:: Reload

B::
	WinGetActiveTitle, NindouTitle
	WinGetPos, X, Y, W, H, %NindouTitle%
	Buy_thunder := 0
	Buy_weapon := 1
	Confirm_buying := 1
	move_to_setting := 1
	Loop
	{
		PixelGetColor, color, 530, 400, RGB
		SetControlDelay -1
		ControlClick, X400 Y645, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step1`n%color%, 100, 700
	}
	Until color = "0xFBFAF2"
	ToolTip, done step 1 enter shop, 100, 700
	StartTime := A_TickCount
	Loop
	{
		PixelGetColor, color, 490, 153, RGB
		SetControlDelay -1
		ControlClick, X490 Y153, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step2.1`n%color%, 100, 700
	}
	Until color = "0xA89860"
	ToolTip, done step 2.1 enter shoes shop, 100, 700
	Loop
	{
		PixelGetColor, color, 615, 300, RGB
		SetControlDelay -1
		ControlClick, X1 Y1, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step2.15`n%color%, 100, 700
	}
	Until color = "0xE7E3CB"
	ToolTip, done step 2.15 search empty zone, 100, 700
	Loop
	{
		PixelGetColor, color, 615, 300, RGB
		SetControlDelay -1
		ControlClick, X95 Y300, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step2.2`n%color%, 100, 700
	}
	Until color != "0xE7E3CB"
	ToolTip, done step 2.2 select shoes, 100, 700
	Loop
	{
		PixelGetColor, color, 530, 400, RGB
		SetControlDelay -1
		ControlClick, X700 Y630, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step2.3`n%color%, 100, 700
	}
	Until color != "0xFBFAF2"
	ToolTip, done step 2.3 select shoes date menu, 100, 700
	Loop
	{
		PixelGetColor, color, 670, 240, RGB
		SetControlDelay -1
		ControlClick, X560 Y295, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step2.4`n%color%, 100, 700
	}
	Until color = "0x3B3A5A"
	ToolTip, done step 2.4 confirm 3days, 100, 700
	Loop
	{
		PixelGetColor, color, 670, 240, RGB
		SetControlDelay -1
		If Confirm_buying = 1
			ControlClick, X570 Y375, %NindouTitle%,,,3
		Else
			ControlClick, X490 Y375, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step2.5`n%color%, 100, 700
	}
	Until color != "0x3B3A5A"
	ToolTip, done step 2.5 confirm buying, 100, 700
	Loop
	{
		PixelGetColor, color, 410, 153, RGB
		SetControlDelay -1
		ControlClick, X410 Y153, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step3`n%color%, 100, 700
	}
	Until color = "0xA89860"
	ToolTip, done step 3 enter armor shop, 100, 700
	Loop
	{
		PixelGetColor, color, 615, 300, RGB
		SetControlDelay -1
		ControlClick, X1 Y1, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step3.05`n%color%, 100, 700
	}
	Until color = "0xE7E3CB"
	ToolTip, done step 3.05 search empty zone, 100, 700
	Loop
	{
		PixelGetColor, color, 615, 300, RGB
		SetControlDelay -1
		ControlClick, X315 Y300, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step3.1`n%color%, 100, 700
	}
	Until color != "0xE7E3CB"
	ToolTip, done step 3.1 select armor, 100, 700
	Loop
	{
		PixelGetColor, color, 530, 400, RGB
		SetControlDelay -1
		ControlClick, X700 Y630, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step3.2`n%color%, 100, 700
	}
	Until color != "0xFBFAF2"
	ToolTip, done step 3.2 select armor date menu, 100, 700
	Loop
	{
		PixelGetColor, color, 670, 240, RGB
		SetControlDelay -1
		ControlClick, X560 Y295, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step3.3`n%color%, 100, 700
	}
	Until color = "0x3B3A5A"
	ToolTip, done step 3.3 confirm 3days, 100, 700
	Loop
	{
		PixelGetColor, color, 670, 240, RGB
		SetControlDelay -1
		If Confirm_buying = 1
			ControlClick, X570 Y375, %NindouTitle%,,,3
		Else
			ControlClick, X490 Y375, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step3.4`n%color%, 100, 700
	}
	Until color != "0x3B3A5A"
	ToolTip, done step 3.4 confirm buying, 100, 700
	Loop
	{
		PixelGetColor, color, 330, 153, RGB
		SetControlDelay -1
		ControlClick, X330 Y153, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step4`n%color%, 100, 700
	}
	Until color = "0xA89860"
	ToolTip, done step 4 enter stone shop, 100, 700
	Loop
	{
		If color = 0x333333
			click_offset := 230
		Else
			click_offset := 300
		SetControlDelay -1
		ControlClick, X%click_offset% Y630, %NindouTitle%,,,1
		Sleep, 200
		PixelGetColor, color, 100, 545, RGB
		ToolTip, step4.05`n%color%, 100, 700		
	}
	Until color = "0xE0BA1D" or color = "0xEEC51E"
	ToolTip, done step 4.05 select stone menu page 3, 100, 700
	Loop
	{
		PixelGetColor, color, 615, 300, RGB
		SetControlDelay -1
		ControlClick, X200 Y430, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step4.1`n%color%, 100, 700
	}
	Until color = "0xE7E3CB"
	ToolTip, done step 4.1 select power stone, 100, 700
	Loop
	{
		PixelGetColor, color, 530, 400, RGB
		SetControlDelay -1
		ControlClick, X700 Y630, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step4.2`n%color%, 100, 700
	}
	Until color != "0xFBFAF2"
	ToolTip, done step 4.2 select stone date menu, 100, 700
	Loop
	{
		PixelGetColor, color, 670, 240, RGB
		SetControlDelay -1
		ControlClick, X560 Y295, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step4.3`n%color%, 100, 700
	}
	Until color = "0x3B3A5A"
	ToolTip, done step 4.3 confirm 3days, 100, 700
	Loop
	{
		PixelGetColor, color, 670, 240, RGB
		SetControlDelay -1
		If Confirm_buying = 1
			ControlClick, X570 Y375, %NindouTitle%,,,3
		Else
			ControlClick, X490 Y375, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step4.4`n%color%, 100, 700
	}
	Until color != "0x3B3A5A"
	ToolTip, done step 4.4 confirm buying, 100, 700
	If Buy_thunder = 1
		{
			Loop
			{
				PixelGetColor, color, 615, 300, RGB
				SetControlDelay -1
				ControlClick, X200 Y300, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step4.5`n%color%, 100, 700
			}
			Until color != "0xFFFFFF"
			ToolTip, done step 4.5 select thunder stone, 100, 700
			Loop
			{
				PixelGetColor, color, 530, 400, RGB
				SetControlDelay -1
				ControlClick, X700 Y630, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step4.6`n%color%, 100, 700
			}
			Until color != "0xFBFAF2"
			ToolTip, done step 4.6 select stone date menu, 100, 700
			Loop
			{
				PixelGetColor, color, 670, 240, RGB
				SetControlDelay -1
				ControlClick, X560 Y295, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step4.7`n%color%, 100, 700
			}
			Until color = "0x3B3A5A"
			ToolTip, done step 4.7 confirm 3days, 100, 700
			Loop
			{
				PixelGetColor, color, 670, 240, RGB
				SetControlDelay -1
				If Confirm_buying = 1
					ControlClick, X570 Y375, %NindouTitle%,,,3
				Else
					ControlClick, X490 Y375, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step4.8`n%color%, 100, 700
			}
			Until color != "0x3B3A5A"
			ToolTip, done step 4.8 confirm buying, 100, 700
		}
	If Buy_weapon = 1
		{
			Loop
			{
				SetControlDelay -1
				ControlClick, X230 Y630, %NindouTitle%,,,1
				Sleep, 20
				PixelGetColor, color, 100, 545, RGB
				ToolTip, step5.05`n%color%, 100, 700
			}
			Until color = "0x940909" or color = "0x930909"
			ToolTip, done step 5.05 select stone menu page 1, 100, 700
			Loop
			{
				PixelGetColor, color, 615, 300, RGB
				SetControlDelay -1
				ControlClick, X100 Y545, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step5.1`n%color%, 100, 700
			}
			Until color = "0xA10E0E" or color = "0xA10F0E"
			ToolTip, done step 5.1 select weapon stone, 100, 700
			Loop
			{
				PixelGetColor, color, 530, 400, RGB
				SetControlDelay -1
				ControlClick, X700 Y630, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step5.2`n%color%, 100, 700
			}
			Until color != "0xFBFAF2"
			ToolTip, done step 5.2 select stone date menu, 100, 700
			Loop
			{
				PixelGetColor, color, 670, 240, RGB
				SetControlDelay -1
				ControlClick, X560 Y295, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step5.3`n%color%, 100, 700
			}
			Until color = "0x3B3A5A"
			ToolTip, done step 5.3 confirm 3days, 100, 700
			Loop
			{
				PixelGetColor, color, 670, 240, RGB
				SetControlDelay -1
				If Confirm_buying = 1
					ControlClick, X570 Y375, %NindouTitle%,,,3
				Else
					ControlClick, X490 Y375, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step5.4`n%color%, 100, 700
			}
			Until color != "0x3B3A5A"
			ToolTip, done step 5.4 confirm buying, 100, 700
			Loop
			{
				PixelGetColor, color, 250, 153, RGB
				SetControlDelay -1
				ControlClick, X250 Y153, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step6`n%color%, 100, 700
			}
			Until color = "0xA89860"
			ToolTip, done step 6 enter weapon shop, 100, 700
			Loop
			{
				PixelGetColor, color, 615, 300, RGB
				SetControlDelay -1
				ControlClick, X1 Y1, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step6.05`n%color%, 100, 700
			}
			Until color = "0xE7E3CB"
			ToolTip, done step 6.05 search empty zone, 100, 700
			Loop
			{
				PixelGetColor, color, 615, 300, RGB
				SetControlDelay -1
				ControlClick, X100 Y545, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step6.1`n%color%, 100, 700
			}
			Until color != "0xE7E3CB"
			ToolTip, done step 6.1 select weapon, 100, 700
			Loop
			{
				PixelGetColor, color, 530, 400, RGB
				SetControlDelay -1
				ControlClick, X700 Y630, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step6.2`n%color%, 100, 700
			}
			Until color != "0xFBFAF2"
			ToolTip, done step 6.2 select weapon date menu, 100, 700
			Loop
			{
				PixelGetColor, color, 670, 240, RGB
				SetControlDelay -1
				ControlClick, X560 Y295, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step6.3`n%color%, 100, 700
			}
			Until color = "0x3B3A5A"
			ToolTip, done step 6.3 confirm 3days, 100, 700
			Loop
			{
				PixelGetColor, color, 670, 240, RGB
				SetControlDelay -1
				If Confirm_buying = 1
					ControlClick, X570 Y375, %NindouTitle%,,,3
				Else
					ControlClick, X490 Y375, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step6.4`n%color%, 100, 700
			}
			Until color != "0x3B3A5A"
			ToolTip, done step 6.4 confirm buying, 100, 700
		}
	Loop
	{
		PixelGetColor, color, 310, 570, RGB
		SetControlDelay -1
		ControlClick, X860 Y126, %NindouTitle%,,,3
		Sleep, 20
		ToolTip, step7`n%color%, 100, 700
	}
	Until color = "0x97D1D3"
	ElapsedTime := A_TickCount - StartTime
	ToolTip, done step7 back to main page`n%color%`nstep 2 to 7 ElapsedTime: %ElapsedTime%, 100, 700
	If move_to_setting = 1
		{
			Loop
			{
				PixelGetColor, color, 310, 410, RGB
				SetControlDelay -1
				ControlClick, X300 Y650, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step8`n%color%, 100, 700
			}
			Until color != "0x97D1D3"
			ToolTip, done step8 enter setting page`n%color%, 100, 700
			Loop
			{
				PixelGetColor, color, 605, 470, RGB
				SetControlDelay -1
				If Buy_weapon = 1
					ControlClick, X320 Y135, %NindouTitle%,,,3
				Else
					ControlClick, X400 Y135, %NindouTitle%,,,3
				Sleep, 20
				ToolTip, step9`n%color%, 100, 700
			}
			Until color != "0xF8D6CC"
			ElapsedTime := A_TickCount - StartTime
			ToolTip, done step 8`nstep 2 to 8 ElapsedTime: %ElapsedTime%, 100, 700
		}
Return
