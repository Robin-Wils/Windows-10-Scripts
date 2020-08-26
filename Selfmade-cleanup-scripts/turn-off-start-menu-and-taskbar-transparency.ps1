#   Description:
# This script turns off start menu and taskbar transparency

New-ItemProperty HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name EnableTransparency -PropertyType DWORD -Value 0 -Force
