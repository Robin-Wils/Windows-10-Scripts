#   Description:
# This script configures GNU Emacs

# Is Emacs installed through chocolatey?
$chocolateyEmacs = $true

# Create emacs daemon shortcut in startup folder
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\start-emacs-daemon.lnk")
If ($chocolateyEmacs)
{
    $Shortcut.TargetPath = "$env:ChocolateyInstall\bin\runemacs.exe"
}
Else
{
    $Shortcut.TargetPath = "$env:ProgramFiles\Emacs\x86_64\bin\runemacs.exe"
}
$Shortcut.Arguments = " --daemon"  
$Shortcut.Save()

# Create Emacs launcher shortcut on desktop
$Shortcut = $WshShell.CreateShortcut("$env:USERPROFILE\Desktop\GNU Emacs.lnk")
If ($chocolateyEmacs)
{
    $Shortcut.TargetPath = "$env:ChocolateyInstall\bin\emacsclientw.exe"
}
Else
{
    $Shortcut.TargetPath = "$env:ProgramFiles\Emacs\x86_64\bin\emacsclientw.exe"
}
$Shortcut.Arguments = " -c -n"  
$Shortcut.Save()

# Change Emacs home to user folder
SETX HOME $env:USERPROFILE

echo "Please reboot to see the changes"
