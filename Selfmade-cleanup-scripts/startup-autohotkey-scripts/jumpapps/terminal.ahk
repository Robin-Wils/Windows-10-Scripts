#NoTrayIcon
if WinExist("ahk_exe WindowsTerminal.exe")
{
        if WinActive("ahk_exe WindowsTerminal.exe")
	{
		WinGetClass, CurrentActive, A
		WinGet, Instances, Count, ahk_class %CurrentActive%
		If Instances > 1
			WinSet, Bottom,, A
		WinActivate, ahk_class %CurrentActive%
	}
	else
	{
		WinActivate, ahk_exe WindowsTerminal.exe
	}
}
else
{
	Run *RunAs "%LocalAppData%\Microsoft\WindowsApps\wt.exe"
	Sleep, 500 
	WinMaximize, A
}
Return