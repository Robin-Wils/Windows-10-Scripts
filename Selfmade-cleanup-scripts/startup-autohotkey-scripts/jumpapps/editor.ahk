#NoTrayIcon
if WinExist("ahk_exe emacs.exe")
{
        if WinActive("ahk_exe emacs.exe")
	{
		WinGetClass, CurrentActive, A
		WinGet, Instances, Count, ahk_class %CurrentActive%
		If Instances > 1
			WinSet, Bottom,, A
		WinActivate, ahk_class %CurrentActive%
	}
	else
	{
		WinActivate, ahk_exe emacs.exe
	}
}
else
{
	Run "%ChocolateyInstall%\bin\emacsclientw.exe" -c -n
	Sleep, 500
	WinMaximize, A
}
Return