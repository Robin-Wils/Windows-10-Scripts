#NoTrayIcon
if WinExist("ahk_exe KeePassXC.exe")
{
        if WinActive("ahk_exe KeePassXC.exe")
	{
		WinGetClass, CurrentActive, A
		WinGet, Instances, Count, ahk_class %CurrentActive%
		If Instances > 1
			WinSet, Bottom,, A
		WinActivate, ahk_class %CurrentActive%
	}
	else
	{
		WinActivate, ahk_exe KeePassXC.exe
	}
}
else
{
	Run "C:\Program Files\KeePassXC\KeePassXC.exe"
	WinMaximize
}
Return