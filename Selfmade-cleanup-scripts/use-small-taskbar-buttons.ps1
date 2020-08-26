#   Description:
# This script turns small taskbar buttons on

New-ItemProperty HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarSmallIcons -PropertyType DWORD -Value 1 -Force
