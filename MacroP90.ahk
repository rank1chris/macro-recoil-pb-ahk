#SingleInstance Force
if not A_IsAdmin
Run *RunAs "%A_ScriptFullPath%" ;Essa parte do programa serve para executar o código sempre em administrador.

#NoEnv
#MaxThreadsPerHotkey 2
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
SetTitleMatchMode 2
#KeyHistory 0
ListLines Off
Process, Priority, , R
SetBatchLines, 0
SetKeyDelay, 0, 0
SetMouseDelay, 0
SetDefaultMouseSpeed, 0
SetWinDelay, 0
SetControlDelay, 0
SendMode Input

;p90 no recoil = 10, 40
;rajada aug = 10, 10

#If WinActive("ahk_exe PointBlank.exe")

*~$LButton::
Loop
{
	if not GetKeyState("LButton", "P")
		break
	dllCall("mouse_event", uint, 2, int, x, int, y, uint, 0, int, 0)
	sleep 130
	dllCall("mouse_event", uint, 4, int, x, int, y, uint, 0, int, 0)
	sleep 100
}
return

MButton::LButton
'::LButton
F1::Suspend ;para o script totalmente.
