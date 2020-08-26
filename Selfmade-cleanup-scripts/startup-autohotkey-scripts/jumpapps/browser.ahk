#NoTrayIcon
if WinExist("ahk_exe brave.exe")
{
        if WinActive("ahk_exe brave.exe")
	{
		WinGetClass, CurrentActive, A
		WinGet, Instances, Count, ahk_class %CurrentActive%
		If Instances > 1
			WinSet, Bottom,, A
		WinActivate, ahk_class %CurrentActive%
	}
	else
	{
		WinActivate, ahk_exe brave.exe
	}
}
else
{
	Run "%LocalAppData%\BraveSoftware\Brave-Browser\Application\brave.exe"
	WinMaximize
}
Return